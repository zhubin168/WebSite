using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dafy.OnlineTran.Common.Request
{
    public class WeixinUserRQ
    {
        public int pageIndex { get; set; }
        public int pageSize { get; set; }
        /// <summary>
        /// 搜索词：电话或者姓名
        /// </summary>
        public string paraName { get; set; }
    }
    public class UpdateWeixinUserRQ
    {
        public int Id { get; set; }

        /// <summary></summary>
        public String Username { get; set; }

        /// <summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
        public String Password { get; set; }

        /// <summary>(0:客户；1：理财师)</summary>
        public Int32 RoleId { get; set; }

        /// <summary>电话</summary>
        public String TelePhone { get; set; }

        /// <summary></summary>
        public String Remark { get; set; }
    }
}
