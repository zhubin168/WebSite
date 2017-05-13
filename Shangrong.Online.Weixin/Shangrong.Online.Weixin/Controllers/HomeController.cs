using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shangrong.Online.Weixin.Controllers
{
    public class HomeController : BaseController
    {
        /// <summary>
        /// 首页
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 没有权限
        /// </summary>
        /// <returns></returns>
        public ActionResult Error()
        {
            return Content("验证失败！请从正规途径进入！");
        }
    }
}
