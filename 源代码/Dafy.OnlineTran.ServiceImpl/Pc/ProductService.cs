﻿using Dafy.OnlineTran.Common.Request;
using Dafy.OnlineTran.Common.Response;
using Dafy.OnlineTran.Entity.Models;
using Dafy.OnlineTran.IService.Pc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XCode;


namespace Dafy.OnlineTran.ServiceImpl.Pc
{
    /// <summary>
    /// 产品管理实现类 
    /// 创建人：朱斌
    /// 创建时间：2017-05-01
    /// </summary>
    public class ProductService : IProductService
    {
        /// <summary>
        /// 产品管理列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public ProductListRS GetProducts(ProductListRQ rq)
        {
          
            var result = new ProductListRS { total = 0, list = null };
            var sql = "select * from Product where 1=1 ";
            if (!string.IsNullOrWhiteSpace(rq.paraName))
            {
                sql += string.Format(" and (ProName like '%{0}%' or ProPlan like '%{0}%') ", rq.paraName);
            }
            var user = Product.FindAll(sql);
            var query = (from a in user.ToList()
                         select new
                         {
                             a.Id,
                             a.Banner,
                             a.IsHot,
                             a.Logo,
                             a.Price,
                             a.ProAge,
                             a.ProCase,
                             a.ProDoc,
                             a.ProName,
                             a.ProPlan,
                             a.ProType,
                             a.ProUse,
                             a.WhyChoose,
                             a.CreatedByName,
                             a.CreatedOn,
                             a.ModifiedByName,
                             a.ModifiedOn,
                             a.Status,
                         });
            query = query.OrderByDescending(q => q.ModifiedOn).ThenByDescending(q => q.Id);
            result.total = query.Count();
            if (result.total == 0) return result;
            result.list = query.Select(a => new ProductListItemRS
            {
                Id=a.Id,
                Banner=a.Banner,
                IsHot=a.IsHot,
                Logo=a.Logo,
                Price=a.Price,
                ProAge=a.ProAge,
                ProCase=a.ProCase,
                ProDoc=a.ProDoc,
                ProName=a.CreatedByName,
                ProPlan=a.ProPlan,
                ProType=a.ProType,
                ProUse=a.ProUse,
                WhyChoose=a.WhyChoose,
                ModifiedOn=a.ModifiedOn,
                ModifiedByName=a.ModifiedByName,
                Status=a.Status,
                CreatedOn=a.CreatedOn,
                CreatedByName=a.CreatedByName
            }).Skip((rq.pageIndex - 1) * rq.pageSize).Take(rq.pageSize).ToList();
            return result;
        }

        /// <summary>
        /// 保存产品信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public ResultModel<string> SaveProducts(SaveProductRQ rq)
        {
            throw new NotImplementedException();
        }
    }
}
