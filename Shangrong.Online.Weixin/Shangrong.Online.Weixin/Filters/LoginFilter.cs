using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shangrong.Online.Weixin.Filters
{
    [AttributeUsage(AttributeTargets.All, AllowMultiple = true)]
    public class LoginFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (HttpContext.Current.Session["UserInfo"] == null)
            {
                var _url = "~/Home/Error";
                filterContext.Result = new RedirectResult(_url);
            }
        }
    }
}