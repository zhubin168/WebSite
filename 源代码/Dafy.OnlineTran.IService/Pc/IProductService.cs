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
    /// 产品管理接口定义
    /// 创建人：朱斌
    /// 创建时间：2017-05-01
    /// </summary>
    public interface IProductService
    {
        /// <summary>
        /// 产品管理列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        ProductListRS GetProducts(ProductListRQ rq);

        /// <summary>
        /// 保存产品信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        ResultModel<string> SaveProducts(SaveProductRQ rq);
    }
}
