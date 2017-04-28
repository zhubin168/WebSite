using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dafy.DataBase.Context;
using Dafy.Framework.BaseEntity;
using GiveU.Infrastructure.EFExtension;
using Dafy.OnlineTran.Common;
using Dafy.OnlineTran.Common.Helpers;
using Dafy.OnlineTran.Entity;
using Dafy.OnlineTran.IService.Pc;
using Oracle.ManagedDataAccess.Client;

namespace Dafy.OnlineTran.ServiceImpl.Pc
{
    /// <summary>
    /// 权限管理服务类
    /// 创建人：朱斌
    /// 创建时间：2016-11-08
    /// </summary>
    public class PermitionService : BaseService, IPermitionService
    {
        public static string UpdateUser = "999999";
        /// <summary>
        /// 删除角色
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TrainPostInfoPc DelRole(DelRolePostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                try
                {
                    var users = db.SysUserRoles.Count(q => q.Roleid == rq.roleId);
                    if (users > 0)
                    {
                        return new TrainPostInfoPc()
                        {
                            message = "角色已添加人员,不能进行删除!",
                            state = 0
                        };
                    }
                    db.SysRoleList.Delete(q => q.RoleId == rq.roleId && q.UpdateUser == UpdateUser);
                    return new TrainPostInfoPc()
                    {
                        message = "删除成功!",
                        state = 1
                    };
                }
                catch (Exception ex)
                {
                    return new TrainPostInfoPc()
                    {
                        message = "删除失败!",
                        state = 0
                    };
                    throw;
                }
            }
        }

        /// <summary>
        /// 保存角色信息接口
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TrainPostInfoPc SaveRole(SaveRolePostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                try
                {
                    
                    var objDb =
                        db.SysRoleList.Where(m => m.RoleId == rq.roleId).ToList();
                    var entity = new SysRoleList();
                    if (objDb.Count > 0)
                    {
                        
                        objDb = objDb.Where(q => q.UpdateUser == UpdateUser).ToList();
                        entity = objDb.Count > 0 ? objDb[0] : entity;
                    }
                    else
                    {
                        entity.RoleId = rq.roleId;
                        entity.Seq = 0;
                    }
                    entity.RoleDesc = rq.roleDesc;
                    entity.Status = 1;//rq.status;
                    entity.UpdateTime = DateTime.Now;
                    entity.UpdateUser = UpdateUser;
                    db.SysRoleList.Attach(entity);
                    db.Entry(entity).State = objDb.Count > 0 ? EntityState.Modified : EntityState.Added;
                    db.SaveChanges();
                    return new TrainPostInfoPc()
                    {
                        message = "保存成功!",
                        state = 1
                    };
                }
                catch (Exception ex)
                {
                    return new TrainPostInfoPc()
                    {
                        message = "保存失败!",
                        state = 0
                    };
                    throw;
                }
            }
        }

        /// <summary>
        /// 获取角色列表
        /// </summary>
        /// <returns></returns>
        public RoleListPc GetRoleList(RoleListRq rq)
        {
            using (var db = new DafyDbContext())
            {
                var quary = db.SysRoleList.Where(q => q.UpdateUser == UpdateUser);
                if (!quary.Any())
                {
                    return new RoleListPc()
                    {
                        list = null
                    };
                }
                if (!string.IsNullOrEmpty(rq.roleId))
                {
                    var roleId = rq.roleId.ToUpper();
                    quary = quary.Where(q=> q.RoleId.Contains(roleId));
                }
                if (!string.IsNullOrEmpty(rq.roleDesc))
                {
                    quary = quary.Where(q => q.RoleDesc.Contains(rq.roleDesc));
                }
                var list= quary.Select(item => new RoleListItemPc()
                {
                    roleDesc = item.RoleDesc, roleId = item.RoleId, status = item.Status, updateTime = item.UpdateTime
                });
                return new RoleListPc()
                {
                    list = list.ToList()
                };
            }
        }

        /// <summary>
        /// 用户信息列表
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public UserListPc GetUserList(UserListPostPc rq)
        {
            var result=new UserListPc() {total = 0,list = null};
            using (var db = new DafyDbContext())
            {
                var query = (from r in db.SysUserRoles
                    join a in db.SysUserList on r.Userid equals a.Id
                    join b in db.SysRoleList on r.Roleid equals b.RoleId
                    select new
                    {
                        a.City,
                        a.Email,
                        a.Ident,
                        a.Id,
                        a.Phone,
                        a.Province,
                        r.Roleid,
                        b.RoleDesc,
                        a.Gender,
                        a.UserName,
                        a.Password
                    });

                if (!string.IsNullOrEmpty(rq.roleId))
                {
                    query = query.Where(q => q.Roleid == rq.roleId);
                }
                if (!string.IsNullOrEmpty(rq.userId))
                {
                    var userId = Convert.ToInt32(rq.userId);
                    query = query.Where(q => q.Id == userId);
                }
                if (!string.IsNullOrEmpty(rq.userName))
                {
                    query = query.Where(q => q.UserName.Contains(rq.userName));
                }
                
                query = query.OrderByDescending(q => q.Id);
                result.total = query.Count();
                if (result.total == 0) return result;
                result.list = query.Select(q => new UserListItemPc
                {
                    userId = q.Id,
                    city = q.City,
                    email = q.Email,
                    ident = q.Ident,
                    phone = q.Phone,
                    province = q.Province,
                    roleId = q.Roleid,
                    roleName = q.RoleDesc,
                    sex = q.Gender,
                    userName = q.UserName,
                    passWord = q.Password
                }).Skip((rq.pageIndex - 1) * rq.pageSize).Take(rq.pageSize).ToList();
                var temp = result.list;
                var resultLst = new List<UserListItemPc>();
                foreach (var item in temp)
                {                   
                    item.passWord = DesCryptoUtil.Decrypt(item.passWord);
                    resultLst.Add(item);
                }
                result.list = resultLst;
                return result;

            }
        }
        /// <summary>
        /// 保存用户信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TrainPostInfoPc SaveUser(SaveUserPostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                using (var trans = db.Database.BeginTransaction())
                {
                    try
                    {
                        var userId = rq.userId;
                        var objDb = db.SysUserList.Where(q => q.Id == rq.userId).ToList();
                        var user = new SysUserList();
                        if (objDb.Count > 0)
                        {
                            user = objDb[0];
                            user.UserName = rq.userName;
                            user.Ident = rq.ident;
                            user.Phone = rq.phone;
                            user.Email = rq.email;
                            user.Province = rq.province;
                            user.City = rq.city;
                            user.Gender = rq.sex;
                        }
                        else
                        {
                            user = new SysUserList()
                            {
                                Id = rq.userId,
                                UserName = rq.userName,
                                Status = 1,
                                RoleId = rq.roleId,
                                Ident = rq.ident,
                                Password = DesCryptoUtil.Encrypt(rq.userId.ToString()),
                                Phone = rq.phone,
                                Email = rq.email,
                                Province = rq.province,
                                City = rq.city,
                                Gender = rq.sex,
                                CreateTime = DateTime.Now,
                                UpdateTime = DateTime.Now,
                                UpdateIp = IPHelper.ClientIp,
                                WxAttentionFlag = 0,
                                UpdateUser = UpdateUser
                            };
                        }
                        db.SysUserList.Add(user);
                        db.Entry(user).State = objDb.Count > 0 ? EntityState.Modified : EntityState.Added;

                        var roleDb = db.SysUserRoles.Where(q => q.Roleid == rq.roleId && q.Userid == userId).ToList();
                        if (roleDb.Count == 0)
                        {
                            
                            var role = new SysUserRoles()
                            {
                                Roleid = rq.roleId,
                                Createtime = DateTime.Now,
                                Userid = userId
                            };
                            db.SysUserRoles.Add(role);
                            db.Entry(role).State = EntityState.Added;
                           
                            var trainerCount = db.OtTrainerInfo.Where(q=> q.TrainerId == rq.userId).Count();
                            if(rq.roleId.ToUpper() == "TER" && trainerCount<=0)
                            {
                                var trainerInfo = new OtTrainerInfo
                                {
                                    TrainerId = rq.userId,
                                    Name = rq.userName,
                                    Position ="培训师",
                                    Imgurl="",
                                    RoleId = rq.roleId,
                                    Type =1
                                };
                                db.OtTrainerInfo.Add(trainerInfo);
                                db.Entry(trainerInfo).State = EntityState.Added;
                            }
                        }
                        db.SaveChanges();
                        trans.Commit();
                        return new TrainPostInfoPc()
                        {
                            message = "保存成功!",
                            state = 1
                        };
                    }
                    catch (Exception ex)
                    {
                        trans.Rollback();
                        return new TrainPostInfoPc()
                        {
                            message = "保存失败!",
                            state = 0
                        };
                        throw;
                    }
                }
            }
        }

        /// <summary>
        /// 批量导入用户信息
        /// </summary>
        /// <param name="rqs"></param>
        /// <returns></returns>
        public TrainPostInfoPc ImportUsersByExcel(SaveUsersPostPc rqs)
        {
            using (var db = new DafyDbContext())
            {
                using (var trans = db.Database.BeginTransaction())
                {
                    try
                    {
                        foreach (var rq in rqs.list)
                        {
                            var userId = rq.userId;
                            var objDb = db.SysUserList.Where(q => q.Id == rq.userId).ToList();
                            var user = new SysUserList();
                            if (objDb.Count > 0)
                            {
                                user = objDb[0];
                                user.UserName = rq.userName;
                                user.Ident = rq.ident;
                                user.Phone = rq.phone;
                                user.Email = rq.email;
                                user.Province = rq.province;
                                user.City = rq.city;
                                user.Gender = rq.sex;
                            }
                            else
                            {
                                user = new SysUserList()
                                {
                                    Id = rq.userId,
                                    UserName = rq.userName,
                                    Status = 1,
                                    RoleId = rqs.roleId,
                                    Ident = rq.ident,
                                    Password = DesCryptoUtil.Encrypt(rq.userId.ToString()),
                                    Phone = rq.phone,
                                    Email = rq.email,
                                    Province = rq.province,
                                    City = rq.city,
                                    Gender = rq.sex,
                                    CreateTime = DateTime.Now,
                                    UpdateTime = DateTime.Now,
                                    UpdateIp = IPHelper.ClientIp,
                                    WxAttentionFlag = 0,
                                    UpdateUser = UpdateUser
                                };
                            }
                            db.SysUserList.Add(user);
                            db.Entry(user).State = objDb.Count > 0 ? EntityState.Modified : EntityState.Added;

                            var roleDb = db.SysUserRoles.Where(q => q.Roleid == rqs.roleId && q.Userid == userId).ToList();
                            if (roleDb.Count == 0)
                            {                              
                                var role = new SysUserRoles()
                                {
                                    Roleid = rqs.roleId,
                                    Createtime = DateTime.Now,
                                    Userid = userId
                                };
                                db.SysUserRoles.Add(role);
                                db.Entry(role).State = EntityState.Added;                               
                                var trainerCount = db.OtTrainerInfo.Where(q => q.TrainerId == rq.userId).Count();
                                if (rqs.roleId.ToUpper() == "TER" && trainerCount <= 0)
                                {
                                    var trainerInfo = new OtTrainerInfo
                                    {
                                        TrainerId = rq.userId,
                                        Name = rq.userName,
                                        Position = "培训师",
                                        Imgurl = "",
                                        RoleId = rqs.roleId,
                                        Type = 1
                                    };
                                    db.OtTrainerInfo.Add(trainerInfo);
                                    db.Entry(trainerInfo).State = EntityState.Added;
                                }
                            }
                        }
                        db.SaveChanges();
                        trans.Commit();
                        return new TrainPostInfoPc()
                        {
                            message = "保存成功!",
                            state = 1
                        };
                    }
                    catch (Exception ex)
                    {
                        trans.Rollback();
                        return new TrainPostInfoPc()
                        {
                            message = "保存失败!",
                            state = 0
                        };
                        throw;
                    }
                }
            }
        }

        /// <summary>
        /// 批量设置权限
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TrainPostInfoPc SetPermitions(PermitionsPostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                using (var trans = db.Database.BeginTransaction())
                {
                    try
                    {
                        var roleId = rq.roleId;
                        db.SysTaskGrant.Delete(q => q.RoleId == roleId);
                        if (rq.roleList.Any())
                        {
                            //var roleId = rq.roleList[0].roleId;
                            //db.SysTaskGrant.Delete(q => q.RoleId == roleId);
                            foreach (var entity in rq.roleList.Select(item => new SysTaskGrant()
                            {
                                RoleId = roleId,
                                TaskCode = item.taskCode,
                                UpdateUser = UpdateUser,
                                UpdateTime = DateTime.Now,
                                UpdateIp = IPHelper.ClientIp
                            }))
                            {
                                db.Entry(entity).State = EntityState.Added;
                                db.SysTaskGrant.Add(entity);
                            }
                        }
                        db.SaveChanges();
                        trans.Commit();
                        return new TrainPostInfoPc()
                        {
                            message = "设置成功!",
                            state = 1
                        };
                    }
                    catch (Exception ex)
                    {
                        trans.Rollback();
                        return new TrainPostInfoPc()
                        {
                            message = "设置失败!",
                            state = 0
                        };
                        throw;
                    }
                }
            }
        }
        /// <summary>
        /// 获取系统模块项
        /// </summary>
        /// <returns></returns>
        public TaskListPc GetTaskList(TaskCodesPostPc rq)
        {
            var systemName = ConfigurationManager.AppSettings["SystemName"];
            using (var db = new DafyDbContext())
            {               
                var taskCodes = db.SysTaskGrant.Where(q => q.RoleId == rq.roleId).Select(item =>item.TaskCode).ToList();

                var groups = db.SysTaskGroup.Where(q => q.SubsysName == systemName);
                var tasks = db.SysTaskList.Where(q => q.SubsysName == systemName);
                var sysTaskGroups=new List<SysTaskGroupsPc>();
                foreach (var group in groups)
                {
                    var sysTaskLists = new List<SysTaskListsPc>();
                    foreach (var task in tasks.Where(q=>q.GroupId==group.GroupId))
                    {
                        bool check = taskCodes.Contains(task.TaskCode);
                        sysTaskLists.Add(new SysTaskListsPc()
                        {
                            check = check,
                            code = task.TaskCode,
                            name = task.TaskName,
                            location = task.WebUrl,
                            parentCode = task.GroupId
                        });
                    }
                    sysTaskGroups.Add(new SysTaskGroupsPc()
                    {
                        code = group.GroupId,
                        name = group.GroupDesc,
                        sysTaskLists= sysTaskLists
                    });
                }
                return new TaskListPc()
                {
                    sysTaskGroups = sysTaskGroups
                };
            }
        }

        /// <summary>
        /// 权限过滤：根据登录账号获取主菜单
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public List<MenuAdminList> GetSysTaskGroups(int userId)
        {
            var systemName = ConfigurationManager.AppSettings["SystemName"];
            using (var db = new DafyDbContext())
            {
                var roleIds = db.SysUserRoles.Where(q => q.Userid == userId).Select(q => q.Roleid).ToList();
                
                var grands = db.SysTaskGrant.ToList().Where(q => roleIds.Contains(q.RoleId)).Select(q => q.TaskCode).ToList();
                if (grands.Count == 0)
                {
                    return new List<MenuAdminList>();
                }
                
                var tasks = db.SysTaskList.Where(q => q.SubsysName == systemName).ToList();
                var lstGroups = tasks.Where(q => grands.Contains(q.TaskCode)).Select(q=>q.GroupId).ToList();
                var groups = db.SysTaskGroup.Where(q => q.SubsysName == systemName).ToList();
                groups = groups.Where(q => lstGroups.Contains(q.GroupId)).ToList();
                return groups.Select(item => new MenuAdminList()
                {
                    id = item.GroupId,
                    name = item.GroupDesc,
                    location = string.Empty,
                    parentID = string.Empty
                }).ToList();
            }
        }
        /// <summary>
        /// 权限过滤：根据登录账号获取子菜单
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public List<MenuItemList> GetSysTaskLists(int userId)
        {
            var systemName = ConfigurationManager.AppSettings["SystemName"];
            using (var db = new DafyDbContext())
            {
                var roleIds= db.SysUserRoles.Where(q=>q.Userid== userId).Select(q=>q.Roleid).ToList();
                var grands = db.SysTaskGrant.ToList().Where(q => roleIds.Contains(q.RoleId)).Select(q=>q.TaskCode).ToList();
                if (grands.Count == 0)
                {
                    return new List<MenuItemList>();
                }
               
                var tasks = db.SysTaskList.Where(q => q.SubsysName == systemName).ToList();
                tasks = tasks.Where(q => grands.Contains(q.TaskCode)).ToList();
                return tasks.Select(item=>new MenuItemList()
                {
                    id = string.Empty,
                    name = item.TaskName,
                    location = item.WebUrl,
                    parentID = item.GroupId
                }).ToList();
            }
        }

        /// <summary>
        /// 删除用户权限
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TrainPostInfoPc DelUser(DelUserPostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                try
                {
                    db.SysUserRoles.Delete(q => q.Roleid == rq.roleId && q.Userid == rq.userId);
                    return new TrainPostInfoPc()
                    {
                        message = "删除成功!",
                        state = 1
                    };
                }
                catch (Exception ex)
                {
                    return new TrainPostInfoPc()
                    {
                        message = "删除失败!",
                        state = 0
                    };
                    throw;
                }
            }
        }

        /// <summary>
        /// 权限项集合回选
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public TaskCodesPc GetPermitions(TaskCodesPostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                var taskCodes = db.SysTaskGrant.Where(q => q.RoleId == rq.roleId).Select(item=>new TaskCodesItemPc()
                {
                    code=item.TaskCode
                }).ToList();
                return new TaskCodesPc()
                {
                    taskCodes = taskCodes
                };
            }
        }

        /// <summary>
        /// 工号查询用户信息
        /// </summary>
        /// <param name="rq"></param>
        /// <returns></returns>
        public UserListItemPc GetUser(GetUserPostPc rq)
        {
            using (var db = new DafyDbContext())
            {
                var q = db.SysUserList.FirstOrDefault(item=> item.Id==rq.userId);
                if (null == q)
                {
                    return new UserListItemPc() { userId = rq.userId };
                }
                var result = new UserListItemPc()
                {
                    userId = rq.userId,
                    city = q.City,
                    email = q.Email,
                    ident = q.Ident,
                    phone = q.Phone,
                    province = q.Province,
                    roleId = q.RoleId,
                    sex = q.Gender,
                    userName = q.UserName,
                    passWord = q.Password
                };
                return result;
            }
        }
    }
}
