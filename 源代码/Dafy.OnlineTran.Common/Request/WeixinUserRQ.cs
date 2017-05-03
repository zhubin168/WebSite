﻿using System;
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
        public string Open_Id { get; set; }

        /// <summary></summary>
        public string Nickname { get; set; }

        /// <summary></summary>
        public int Sex { get; set; }

        /// <summary></summary>
        public string City { get; set; }

        /// <summary></summary>
        public string Country { get; set; }

        /// <summary></summary>
        public string Province { get; set; }

        /// <summary></summary>
        public string Headimgurl { get; set; }

        /// <summary></summary>
        public string Unionid { get; set; }

        /// <summary></summary>
        public string Username { get; set; }

        /// <summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
        public string Password { get; set; }

        /// <summary>(0:客户；1：理财师)</summary>
        public int RoleId { get; set; }

        /// <summary>电话</summary>
        public string TelePhone { get; set; }

        /// <summary></summary>
        public string Remark { get; set; }
    }
}
