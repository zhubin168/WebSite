﻿using Dafy.OnlineTran.Common.Helpers;
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
    /// 理财师管理仓储实现
    /// 创建人：朱斌
    /// 创建时间：2017-04-30
    /// </summary>
    public class UserService : IUserService
    {
        /// <summary>
        /// 理财师管理列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>

        public WeixinUserRS GetUsers(WeixinUserRQ rq)
        {
            var result = new WeixinUserRS { total = 0, list = null };
            var sql = "select * from Wexin_User where 1=1 ";
            if (!string.IsNullOrWhiteSpace(rq.paraName))
            {
                sql += string.Format(" and (Username like '%{0}%' or TelePhone like '%{0}%') ", rq.paraName);
            }
            var user = Wexin_User.FindAll(sql);
            var query = (from a in user.ToList()
                             select new
                             {
                                 a.City,
                                 a.Country,
                                 a.Create_time,
                                 a.Headimgurl,
                                 a.Id,
                                 a.LoginTime,
                                 a.Nickname,
                                 a.Open_Id,
                                 a.Password,
                                 a.Province,
                                 a.Remark,
                                 a.RoleId,
                                 a.Sex,
                                 a.Subscribe_time,
                                 a.TelePhone,
                                 a.Unionid,
                                 a.Username,
                             }); 
                query = query.OrderByDescending(q => q.Id).ThenByDescending(q => q.LoginTime);
                result.total = query.Count();
                if (result.total == 0) return result;
                result.list = query.Select(a => new WeixinUserItemRS
                {
                    //City = a.City,
                    //Country = a.Country,
                    //Create_time = a.Create_time,
                    Headimgurl = a.Headimgurl,
                    Id = a.Id,
                    //LoginTime = a.LoginTime,
                    Nickname = a.Nickname,
                    OpenId = a.Open_Id,
                    Password = a.Password,
                    //Province = a.Province,
                    Remark = a.Remark,
                    RoleId = a.RoleId,
                    Sex = a.Sex,
                    //Subscribe_time = a.Subscribe_time,
                    TelePhone = a.TelePhone,
                    //Unionid = a.Unionid,
                    Username = a.Username,

                }).Skip((rq.pageIndex - 1) * rq.pageSize).Take(rq.pageSize).ToList();
                return result;
        }

        /// <summary>
        /// 修改理财师信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>

        public ResultModel<string> SaveUsers(UpdateWeixinUserRQ rq)
        {
            EntityList<Wexin_User> users = new EntityList<Wexin_User>();
            var user = Wexin_User.FindById(rq.Id);
            user.Username = rq.Username;
            user.Password=rq.Password;
            user.TelePhone = rq.TelePhone;
            user.Remark = rq.Remark;
            user.RoleId=rq.RoleId;
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
