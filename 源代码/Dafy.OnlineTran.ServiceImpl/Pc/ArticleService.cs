using Dafy.OnlineTran.Common.Request;
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
    /// 资讯管理实现类 
    /// 创建人：朱斌
    /// 创建时间：2017-05-01
    /// </summary>
    public class ArticleService : IArticleService
    {
        /// <summary>
        /// 资讯管理列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public ArticleListRS GetArticles(ArticleListRQ rq)
        {
            var result = new ArticleListRS { total = 0, list = null };
            var sql = "select * from Article where 1=1 ";
            if (!string.IsNullOrWhiteSpace(rq.paraName))
            {
                sql += string.Format(" and (ArticleTitle like '%{0}%' or ArticleType like '%{0}%') ", rq.paraName);
            }
            var user = Article.FindAll(sql);
            var query = (from a in user.ToList()
                         select new
                         {
                             a.ArticleContent,
                             a.ArticleImg,
                             a.ArticleTitle,
                             a.ArticleType,
                             a.CreatedByName,
                             a.CreatedOn,
                             a.Id,
                             a.IsPublish,
                             a.IsRecommand,
                             a.ModifiedByName,
                             a.ModifiedOn,
                             a.Status,
                         });
            query = query.OrderByDescending(q => q.ModifiedOn).ThenByDescending(q => q.Id);
            result.total = query.Count();
            if (result.total == 0) return result;
            result.list = query.Select(a => new ArticleListItemRS
            {
                Id=a.Id,
                ArticleContent=a.ArticleContent,
                ArticleImg=a.ArticleImg,
                ArticleType=a.ArticleType,
                ArticleTitle=a.ArticleTitle,
                IsPublish=a.IsPublish,
                IsRecommand=a.IsRecommand,
                Status=a.Status,
                CreatedOn=a.CreatedOn,
                CreatedByName=a.CreatedByName
            }).Skip((rq.pageIndex - 1) * rq.pageSize).Take(rq.pageSize).ToList();
            return result;
        }

        /// <summary>
        /// 保存资讯信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public ResultModel<string> SaveArticles(SaveArticleRQ rq)
        {
            EntityList<Article> users = new EntityList<Article>();
            var user = Article.FindById(rq.Id);
            if (null == user)
            {
                user = new Article();
                user.CreatedByName = rq.CreatedByName;
                user.CreatedOn = DateTime.Now;
            }
            user.ArticleContent = rq.ArticleContent;
            user.ArticleImg=rq.ArticleImg;
            user.ArticleTitle = rq.ArticleTitle;
            user.ArticleType = rq.ArticleType;
            user.IsPublish = rq.IsPublish;
            user.IsRecommand = rq.IsRecommand;
            user.ModifiedByName = rq.CreatedByName;
            user.ModifiedOn = DateTime.Now;
            user.Status = rq.Status;
            users.Add(user);
            int nCount = users.Save();
            return new ResultModel<string>
            {
                state = nCount,
                message = nCount > 0 ? "保存成功！" : "操作失败！",
                data = nCount.ToString()
            };
        }
    }
}
