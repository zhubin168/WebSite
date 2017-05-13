using Senparc.Weixin.MP;
using Senparc.Weixin.MP.AdvancedAPIs;
using Shangrong.Online.Weixin.Common;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shangrong.Online.Weixin.Controllers
{
    public class TestController : Controller
    {
        private string stateCode = ConfigurationManager.AppSettings["WXState"];
        private string appID = ConfigurationManager.AppSettings["WXAppID"];
        private string oAuthCallBackUrl = ConfigurationManager.AppSettings["OAuthCallBackUrl"];

        public void Index()
        {
            //测试数据
            UserInfoModel model = new UserInfoModel();
            model.OperId = "444584ooxdsfiewfncxijsdfssdfew1";
            if (Session["UserInfo"] != null)
            {
                var redirectUrl = CookieHelper.GetCookie("ControllerUrlCookie");
                Response.Redirect(redirectUrl.ToString());
            }
            else
            {
                string url = OAuthApi.GetAuthorizeUrl(appID, oAuthCallBackUrl, stateCode, OAuthScope.snsapi_userinfo);
                Response.Redirect(url);
            }
        }
    }
}
