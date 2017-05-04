﻿using Dafy.OnlineTran.Common.Request;
using Dafy.OnlineTran.Common.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dafy.OnlineTran.IService.Pc
{
    /// <summary>
    /// 活动管理实现类 
    /// 创建人：朱斌
    /// 创建时间：2017-05-01
    /// </summary>
    public interface IActiveService
    {
        /// <summary>
        /// 活动管理列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        ActiveListRS GetActives(ActiveListRQ rq);

        ResultModel<string> DelActives(SaveActiveRQ rq);

        /// <summary>
        /// 保存活动信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        ResultModel<string> SaveActives(SaveActiveRQ rq);
    }
}
