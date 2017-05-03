using Dafy.OnlineTran.Common.Helpers;
using Dafy.OnlineTran.Common.Request;
using Dafy.OnlineTran.Common.Response;
using Dafy.OnlineTran.Entity.Models;
using Dafy.OnlineTran.IService.Pc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dafy.OnlineTran.ServiceImpl.Pc
{
    public class AccountService : IAccountService
    {
        /// <summary>
        /// 登录认证
        /// </summary>
        /// <param name="loginRQ"></param>
        /// <returns></returns>
        public SysUserList Login(LoginRQ loginRQ)
        {
            var pwd = DesCryptoUtil.Encrypt(loginRQ.password);
            var data = Wexin_User.Find(string.Format(" Username='{0}' and Password='{1}' and RoleId!=0 ", loginRQ.userId, pwd));
            if (data == null)
            {
                return null;
            }
            return new SysUserList()
            { 
                City=data.City,
                Country=data.Country,
                Create_time=data.Create_time,
                Headimgurl=data.Headimgurl,
                Id=data.Id,
                LoginTime=data.LoginTime,
                Nickname=data.Nickname,
                Open_Id=data.Open_Id,
                Password=data.Password,
                Province=data.Province,
                Remark=data.Remark,
                RoleId=data.RoleId,
                Sex=data.Sex,
                Subscribe_time=data.Subscribe_time,
                TelePhone=data.TelePhone,
                Unionid=data.Unionid,
                Username=data.Username
            };
        }
    }
}
