using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dafy.OnlineTran.Common.Request
{
    public class LoginRQ
    {
        /// <summary>
        /// 账号id
        /// </summary>
        public int userId { get; set; }
        /// <summary>
        /// 账号密码
        /// </summary>
        public string password { get; set; }
    }
}
