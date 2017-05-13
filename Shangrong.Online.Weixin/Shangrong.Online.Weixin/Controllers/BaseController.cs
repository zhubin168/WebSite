using Shangrong.Online.Weixin.Common;
using Shangrong.Online.Weixin.Filters;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shangrong.Online.Weixin.Controllers
{
    [LoginFilter]
    public class BaseController : Controller
    {
        private readonly string _stateCode = ConfigurationManager.AppSettings["WXState"];
        private readonly string _appId = ConfigurationManager.AppSettings["WXAppID"];
        private readonly string _oAuthCallBackUrl = ConfigurationManager.AppSettings["OAuthCallBackUrl"];
        /// <summary>
        /// 获取当前用户信息
        /// </summary>
        public UserInfoModel userInfo
        {
            get
            {
                return Session["UserInfo"] as UserInfoModel;
            }
        }

        /// <summary>
        /// 权限拦截处理
        /// </summary>
        /// <param name="filterContext"></param>
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            UserInfoModel user = userInfo;
            if (user != null)
            {

            }
            else
            {
                //获取请求的url
                var requestUrl = Request.RawUrl;
                CookieHelper.WriteCodeCookie("ControllerUrlCookie", requestUrl, 120);
                //本机测试环境
                TestUserInfo();
                //正式环境
                //string url = OAuthApi.GetAuthorizeUrl(_appId, _oAuthCallBackUrl, _stateCode, OAuthScope.snsapi_userinfo);
                //Response.Redirect(url);
            }
            base.OnActionExecuting(filterContext);
        }

        private void TestUserInfo()
        {
            Response.Redirect("/Home/Index");
        }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
        }
    }
}
