using Senparc.Weixin;
using Senparc.Weixin.Exceptions;
using Senparc.Weixin.MP.AdvancedAPIs;
using Senparc.Weixin.MP.AdvancedAPIs.OAuth;
using Senparc.Weixin.MP.CommonAPIs;
using Senparc.Weixin.MP.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Configuration;
using System.Globalization;
using Shangrong.Online.Weixin.Common;
using Dafy.OnlineTran.Entity.Models;

namespace Shangrong.Online.Weixin.Controllers
{
    /// <summary>
    /// 微信授权
    /// </summary>
    public class OAuthController : Controller
    {
        private string stateCode = ConfigurationManager.AppSettings["WXState"];
        private string appID = ConfigurationManager.AppSettings["WXAppID"];
        private string appSecret = ConfigurationManager.AppSettings["WXAppSecret"];

        /// <summary>
        /// OAuth认证
        /// </summary>
        /// <param Name="code"></param>
        /// <param Name="state"></param>
        /// <returns></returns>
        public ActionResult UserInfoCallback(string code, string state)
        {
            if (string.IsNullOrEmpty(code))
            {
                return Content("您拒绝了授权！");
            }
            if (state != stateCode)
            {
                return Content("验证失败！请从正规途径进入！");
            }
            OAuthAccessTokenResult result = null;
            //通过，用code换取access_token
            try
            {
                if (Session["OAuthAccessToken"] == null)
                {
                    result = OAuthApi.GetAccessToken(appID, appSecret, code);
                    Session["OAuthAccessToken"] = result;
                }
                else
                {
                    result = (OAuthAccessTokenResult)Session["OAuthAccessToken"];
                }
            }
            catch (Exception ex)
            {
                return Content(ex.Message);
            }
            if (result.errcode != ReturnCode.请求成功)
            {
                return Content("错误：" + result.errmsg);
            }
            try
            {
                //log.Info(result.openid + DateTime.Now.ToString("HH:mm:ss fff"));
                OAuthUserInfo userInfo = OAuthApi.GetUserInfo(result.access_token, result.openid);

                if (userInfo != null)
                {
                    //保存微信用户入库
                    #region 保存微信用户入库(处理查询和录入并发问题)
                    var entity = new User()
                    {
                        nickName = userInfo.nickname,
                        weixinId = userInfo.openid,
                        roleId=0,
                        headerUrl = userInfo.headimgurl,
                        status=1,
                        auditStatus=0,
                        loginPC=0,
                        regTime=DateTime.Now,
                        loginTime=DateTime.Now,
                    };
                    entity.Save();
                    #endregion
                    UserInfoModel model = new UserInfoModel()
                    {
                        ID = entity.uid,
                        NickName = entity.nickName,
                        OperId = entity.weixinId,
                        Headimgurl = entity.headerUrl
                    };
                    Session["UserInfo"] = model;
                    //获取本地存储路径
                    var controllerUrl = !string.IsNullOrEmpty(CookieHelper.GetCookie("ControllerUrlCookie")) ? CookieHelper.GetCookie("ControllerUrlCookie") : "/Home/index";
                    var controllerUrlArray = controllerUrl.Split('/');
                    if (controllerUrlArray.Length > 3)
                        return RedirectToAction(controllerUrlArray[2], controllerUrlArray[1], new { id = controllerUrlArray[3] });
                    return controllerUrlArray.Length == 3 ? RedirectToAction(controllerUrlArray[2], controllerUrlArray[1]) : RedirectToAction("index", "Home");
                }
                return RedirectToAction("index", "Home");
            }
            catch (ErrorJsonResultException ex)
            {
                //log.Error("微信OAuth认证出现异常:" + ex.Message);
                return Content(ex.Message);
            }
        }
        public void Valid()
        {
            string signature = Request.QueryString["signature"].ToString();
            string timestamp = Request.QueryString["timestamp"].ToString();
            string nonce = Request.QueryString["nonce"].ToString();
            string[] ArrTmp = { stateCode, timestamp, nonce };

            //log.Info("signature=" + signature);
            Array.Sort(ArrTmp);     //字典排序
            string tmpStr = string.Join("", ArrTmp);
            tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
            tmpStr = tmpStr.ToLower();
            //log.Info("tmpStr=" + tmpStr);

            string echoStr = Request.QueryString["echostr"].ToString();
            //log.Info("echostr=" + echoStr);


            if (tmpStr == signature)
            {
                //log.Info("ok");
                if (!string.IsNullOrEmpty(echoStr))
                {
                    Response.Write(echoStr);
                    Response.End();
                }
            }
        }
    }
}
