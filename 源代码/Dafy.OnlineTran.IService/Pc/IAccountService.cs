using Dafy.OnlineTran.Common.Request;
using Dafy.OnlineTran.Common.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dafy.OnlineTran.IService.Pc
{
    public interface IAccountService
    {
        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="loginRQ"></param>
        /// <returns></returns>
        SysUserList Login(LoginRQ loginRQ);
    }
}
