using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shangrong.Online.Weixin.Common
{
    public class CookieHelper
    {
        /// <summary>
        /// 写入Cookie
        /// </summary>
        /// <param name="name">cookie 的名称</param>
        /// <param name="key">健值</param>
        /// <param name="value">内容</param>
        /// <param name="seconds">有效时间</param>
        public static void WriteCodeCookie(string name, string value, int seconds)
        {
            HttpCookie cookie = new HttpCookie(name)
            {
                Value = value,
                Expires = DateTime.Now.AddSeconds(seconds)
            };
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        /// <summary>
        /// 清除cookie
        /// </summary>
        /// <param name="name">cookie 名称</param>
        public static void ClearCookie(string name)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies.Get(name);
            if (cookie == null) return;
            cookie.Expires = DateTime.Now.AddDays(-15);
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        /// <summary>
        /// 读取cookie 的值
        /// </summary>
        /// <param name="name">cookie 名称</param>
        /// <returns></returns>

        public static string GetCookie(string name)
        {
            var cookie = HttpContext.Current.Request.Cookies.Get(name);
            return cookie == null ? "" : cookie.Value;
        }
    }

    [Serializable]
    public class UserInfoModel
    {
        public UserInfoModel()
        {

        }
        /// <summary>
        /// 
        /// </summary>
        public long ID { set; get; }
        /// <summary>
        /// 昵称
        /// </summary>
        public string NickName { set; get; }
        /// <summary>
        /// 微信OperID
        /// </summary>
        public string OperId { set; get; }


        public string City { get; set; }

        public string Country { get; set; }

        public string Province { get; set; }

        public string Headimgurl { get; set; }
        /// <summary>
        /// 是否绑定
        /// </summary>
        private bool isCheck = false;
        public bool IsCheck
        {
            set
            {
                isCheck = value;
            }
            get
            {
                return isCheck;
            }
        }
    }
}