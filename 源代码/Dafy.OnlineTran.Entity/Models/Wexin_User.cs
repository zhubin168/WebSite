﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Xml.Serialization;
using XCode;
using XCode.Configuration;
using XCode.DataAccessLayer;

namespace Dafy.OnlineTran.Entity.Models
{
    /// <summary></summary>
    [Serializable]
    [DataObject]
    [Description("")]
    [BindIndex("PK_Wexin_User", true, "Id")]
    [BindTable("Wexin_User", Description = "", ConnName = "Lomark", DbType = DatabaseType.SqlServer)]
    public partial class Wexin_User : IWexin_User
    {
        #region 属性
        private Int64 _Id;
        /// <summary></summary>
        [DisplayName("Id")]
        [Description("")]
        [DataObjectField(true, true, false, 19)]
        [BindColumn(1, "Id", "", null, "bigint", 19, 0, false)]
        public virtual Int64 Id
        {
            get { return _Id; }
            set { if (OnPropertyChanging(__.Id, value)) { _Id = value; OnPropertyChanged(__.Id); } }
        }

        private String _Open_Id;
        /// <summary></summary>
        [DisplayName("Open_Id")]
        [Description("")]
        [DataObjectField(false, false, false, 100)]
        [BindColumn(2, "Open_Id", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Open_Id
        {
            get { return _Open_Id; }
            set { if (OnPropertyChanging(__.Open_Id, value)) { _Open_Id = value; OnPropertyChanged(__.Open_Id); } }
        }

        private String _Nickname;
        /// <summary></summary>
        [DisplayName("Nickname")]
        [Description("")]
        [DataObjectField(false, false, true, 100)]
        [BindColumn(3, "Nickname", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Nickname
        {
            get { return _Nickname; }
            set { if (OnPropertyChanging(__.Nickname, value)) { _Nickname = value; OnPropertyChanged(__.Nickname); } }
        }

        private Int32 _Sex;
        /// <summary></summary>
        [DisplayName("Sex")]
        [Description("")]
        [DataObjectField(false, false, true, 10)]
        [BindColumn(4, "Sex", "", null, "int", 10, 0, false)]
        public virtual Int32 Sex
        {
            get { return _Sex; }
            set { if (OnPropertyChanging(__.Sex, value)) { _Sex = value; OnPropertyChanged(__.Sex); } }
        }

        private String _City;
        /// <summary></summary>
        [DisplayName("City")]
        [Description("")]
        [DataObjectField(false, false, true, 100)]
        [BindColumn(5, "City", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String City
        {
            get { return _City; }
            set { if (OnPropertyChanging(__.City, value)) { _City = value; OnPropertyChanged(__.City); } }
        }

        private String _Country;
        /// <summary></summary>
        [DisplayName("Country")]
        [Description("")]
        [DataObjectField(false, false, true, 100)]
        [BindColumn(6, "Country", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Country
        {
            get { return _Country; }
            set { if (OnPropertyChanging(__.Country, value)) { _Country = value; OnPropertyChanged(__.Country); } }
        }

        private String _Province;
        /// <summary></summary>
        [DisplayName("Province")]
        [Description("")]
        [DataObjectField(false, false, true, 100)]
        [BindColumn(7, "Province", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Province
        {
            get { return _Province; }
            set { if (OnPropertyChanging(__.Province, value)) { _Province = value; OnPropertyChanged(__.Province); } }
        }

        private String _Headimgurl;
        /// <summary></summary>
        [DisplayName("Headimgurl")]
        [Description("")]
        [DataObjectField(false, false, true, 1000)]
        [BindColumn(8, "Headimgurl", "", null, "nvarchar(1000)", 0, 0, true)]
        public virtual String Headimgurl
        {
            get { return _Headimgurl; }
            set { if (OnPropertyChanging(__.Headimgurl, value)) { _Headimgurl = value; OnPropertyChanged(__.Headimgurl); } }
        }

        private DateTime _Subscribe_time;
        /// <summary></summary>
        [DisplayName("Subscribe_time")]
        [Description("")]
        [DataObjectField(false, false, true, 3)]
        [BindColumn(9, "Subscribe_time", "", null, "datetime", 3, 0, false)]
        public virtual DateTime Subscribe_time
        {
            get { return _Subscribe_time; }
            set { if (OnPropertyChanging(__.Subscribe_time, value)) { _Subscribe_time = value; OnPropertyChanged(__.Subscribe_time); } }
        }

        private String _Unionid;
        /// <summary></summary>
        [DisplayName("Unionid")]
        [Description("")]
        [DataObjectField(false, false, true, 100)]
        [BindColumn(10, "Unionid", "", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Unionid
        {
            get { return _Unionid; }
            set { if (OnPropertyChanging(__.Unionid, value)) { _Unionid = value; OnPropertyChanged(__.Unionid); } }
        }

        private DateTime _Create_time;
        /// <summary>注册时间</summary>
        [DisplayName("注册时间")]
        [Description("注册时间")]
        [DataObjectField(false, false, true, 3)]
        [BindColumn(11, "Create_time", "注册时间", null, "datetime", 3, 0, false)]
        public virtual DateTime Create_time
        {
            get { return _Create_time; }
            set { if (OnPropertyChanging(__.Create_time, value)) { _Create_time = value; OnPropertyChanged(__.Create_time); } }
        }

        private String _Username;
        /// <summary></summary>
        [DisplayName("Username")]
        [Description("")]
        [DataObjectField(false, false, true, 200)]
        [BindColumn(12, "Username", "", null, "nvarchar(200)", 0, 0, true)]
        public virtual String Username
        {
            get { return _Username; }
            set { if (OnPropertyChanging(__.Username, value)) { _Username = value; OnPropertyChanged(__.Username); } }
        }

        private String _Password;
        /// <summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
        [DisplayName("密码初始密码为随机生成的6位数字，后台也可修改")]
        [Description("密码（初始密码为随机生成的6位数字），后台也可修改")]
        [DataObjectField(false, false, false, 100)]
        [BindColumn(13, "Password", "密码（初始密码为随机生成的6位数字），后台也可修改", null, "nvarchar(100)", 0, 0, true)]
        public virtual String Password
        {
            get { return _Password; }
            set { if (OnPropertyChanging(__.Password, value)) { _Password = value; OnPropertyChanged(__.Password); } }
        }

        private DateTime _LoginTime;
        /// <summary>最后一次登录时间</summary>
        [DisplayName("最后一次登录时间")]
        [Description("最后一次登录时间")]
        [DataObjectField(false, false, true, 3)]
        [BindColumn(14, "LoginTime", "最后一次登录时间", null, "datetime", 3, 0, false)]
        public virtual DateTime LoginTime
        {
            get { return _LoginTime; }
            set { if (OnPropertyChanging(__.LoginTime, value)) { _LoginTime = value; OnPropertyChanged(__.LoginTime); } }
        }

        private Int32 _RoleId;
        /// <summary>(0:客户；1：理财师)</summary>
        [DisplayName("0:客户；1：理财师")]
        [Description("(0:客户；1：理财师)")]
        [DataObjectField(false, false, true, 10)]
        [BindColumn(15, "RoleId", "(0:客户；1：理财师)", "0", "int", 10, 0, false)]
        public virtual Int32 RoleId
        {
            get { return _RoleId; }
            set { if (OnPropertyChanging(__.RoleId, value)) { _RoleId = value; OnPropertyChanged(__.RoleId); } }
        }

        private String _TelePhone;
        /// <summary>电话</summary>
        [DisplayName("电话")]
        [Description("电话")]
        [DataObjectField(false, false, true, 50)]
        [BindColumn(16, "TelePhone", "电话", null, "nvarchar(50)", 0, 0, true)]
        public virtual String TelePhone
        {
            get { return _TelePhone; }
            set { if (OnPropertyChanging(__.TelePhone, value)) { _TelePhone = value; OnPropertyChanged(__.TelePhone); } }
        }

        private String _Remark;
        /// <summary></summary>
        [DisplayName("Remark")]
        [Description("")]
        [DataObjectField(false, false, true, 500)]
        [BindColumn(17, "Remark", "", null, "nvarchar(500)", 0, 0, true)]
        public virtual String Remark
        {
            get { return _Remark; }
            set { if (OnPropertyChanging(__.Remark, value)) { _Remark = value; OnPropertyChanged(__.Remark); } }
        }
        #endregion

        #region 获取/设置 字段值
        /// <summary>
        /// 获取/设置 字段值。
        /// 一个索引，基类使用反射实现。
        /// 派生实体类可重写该索引，以避免反射带来的性能损耗
        /// </summary>
        /// <param name="name">字段名</param>
        /// <returns></returns>
        public override Object this[String name]
        {
            get
            {
                switch (name)
                {
                    case __.Id : return _Id;
                    case __.Open_Id : return _Open_Id;
                    case __.Nickname : return _Nickname;
                    case __.Sex : return _Sex;
                    case __.City : return _City;
                    case __.Country : return _Country;
                    case __.Province : return _Province;
                    case __.Headimgurl : return _Headimgurl;
                    case __.Subscribe_time : return _Subscribe_time;
                    case __.Unionid : return _Unionid;
                    case __.Create_time : return _Create_time;
                    case __.Username : return _Username;
                    case __.Password : return _Password;
                    case __.LoginTime : return _LoginTime;
                    case __.RoleId : return _RoleId;
                    case __.TelePhone : return _TelePhone;
                    case __.Remark : return _Remark;
                    default: return base[name];
                }
            }
            set
            {
                switch (name)
                {
                    case __.Id : _Id = Convert.ToInt64(value); break;
                    case __.Open_Id : _Open_Id = Convert.ToString(value); break;
                    case __.Nickname : _Nickname = Convert.ToString(value); break;
                    case __.Sex : _Sex = Convert.ToInt32(value); break;
                    case __.City : _City = Convert.ToString(value); break;
                    case __.Country : _Country = Convert.ToString(value); break;
                    case __.Province : _Province = Convert.ToString(value); break;
                    case __.Headimgurl : _Headimgurl = Convert.ToString(value); break;
                    case __.Subscribe_time : _Subscribe_time = Convert.ToDateTime(value); break;
                    case __.Unionid : _Unionid = Convert.ToString(value); break;
                    case __.Create_time : _Create_time = Convert.ToDateTime(value); break;
                    case __.Username : _Username = Convert.ToString(value); break;
                    case __.Password : _Password = Convert.ToString(value); break;
                    case __.LoginTime : _LoginTime = Convert.ToDateTime(value); break;
                    case __.RoleId : _RoleId = Convert.ToInt32(value); break;
                    case __.TelePhone : _TelePhone = Convert.ToString(value); break;
                    case __.Remark : _Remark = Convert.ToString(value); break;
                    default: base[name] = value; break;
                }
            }
        }
        #endregion

        #region 字段名
        /// <summary>取得字段信息的快捷方式</summary>
        public partial class _
        {
            ///<summary></summary>
            public static readonly Field Id = FindByName(__.Id);

            ///<summary></summary>
            public static readonly Field Open_Id = FindByName(__.Open_Id);

            ///<summary></summary>
            public static readonly Field Nickname = FindByName(__.Nickname);

            ///<summary></summary>
            public static readonly Field Sex = FindByName(__.Sex);

            ///<summary></summary>
            public static readonly Field City = FindByName(__.City);

            ///<summary></summary>
            public static readonly Field Country = FindByName(__.Country);

            ///<summary></summary>
            public static readonly Field Province = FindByName(__.Province);

            ///<summary></summary>
            public static readonly Field Headimgurl = FindByName(__.Headimgurl);

            ///<summary></summary>
            public static readonly Field Subscribe_time = FindByName(__.Subscribe_time);

            ///<summary></summary>
            public static readonly Field Unionid = FindByName(__.Unionid);

            ///<summary>注册时间</summary>
            public static readonly Field Create_time = FindByName(__.Create_time);

            ///<summary></summary>
            public static readonly Field Username = FindByName(__.Username);

            ///<summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
            public static readonly Field Password = FindByName(__.Password);

            ///<summary>最后一次登录时间</summary>
            public static readonly Field LoginTime = FindByName(__.LoginTime);

            ///<summary>(0:客户；1：理财师)</summary>
            public static readonly Field RoleId = FindByName(__.RoleId);

            ///<summary>电话</summary>
            public static readonly Field TelePhone = FindByName(__.TelePhone);

            ///<summary></summary>
            public static readonly Field Remark = FindByName(__.Remark);

            static Field FindByName(String name) { return Meta.Table.FindByName(name); }
        }

        /// <summary>取得字段名称的快捷方式</summary>
        partial class __
        {
            ///<summary></summary>
            public const String Id = "Id";

            ///<summary></summary>
            public const String Open_Id = "Open_Id";

            ///<summary></summary>
            public const String Nickname = "Nickname";

            ///<summary></summary>
            public const String Sex = "Sex";

            ///<summary></summary>
            public const String City = "City";

            ///<summary></summary>
            public const String Country = "Country";

            ///<summary></summary>
            public const String Province = "Province";

            ///<summary></summary>
            public const String Headimgurl = "Headimgurl";

            ///<summary></summary>
            public const String Subscribe_time = "Subscribe_time";

            ///<summary></summary>
            public const String Unionid = "Unionid";

            ///<summary>注册时间</summary>
            public const String Create_time = "Create_time";

            ///<summary></summary>
            public const String Username = "Username";

            ///<summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
            public const String Password = "Password";

            ///<summary>最后一次登录时间</summary>
            public const String LoginTime = "LoginTime";

            ///<summary>(0:客户；1：理财师)</summary>
            public const String RoleId = "RoleId";

            ///<summary>电话</summary>
            public const String TelePhone = "TelePhone";

            ///<summary></summary>
            public const String Remark = "Remark";

        }
        #endregion
    }

    /// <summary>接口</summary>
    public partial interface IWexin_User
    {
        #region 属性
        /// <summary></summary>
        Int64 Id { get; set; }

        /// <summary></summary>
        String Open_Id { get; set; }

        /// <summary></summary>
        String Nickname { get; set; }

        /// <summary></summary>
        Int32 Sex { get; set; }

        /// <summary></summary>
        String City { get; set; }

        /// <summary></summary>
        String Country { get; set; }

        /// <summary></summary>
        String Province { get; set; }

        /// <summary></summary>
        String Headimgurl { get; set; }

        /// <summary></summary>
        DateTime Subscribe_time { get; set; }

        /// <summary></summary>
        String Unionid { get; set; }

        /// <summary>注册时间</summary>
        DateTime Create_time { get; set; }

        /// <summary></summary>
        String Username { get; set; }

        /// <summary>密码（初始密码为随机生成的6位数字），后台也可修改</summary>
        String Password { get; set; }

        /// <summary>最后一次登录时间</summary>
        DateTime LoginTime { get; set; }

        /// <summary>(0:客户；1：理财师)</summary>
        Int32 RoleId { get; set; }

        /// <summary>电话</summary>
        String TelePhone { get; set; }

        /// <summary></summary>
        String Remark { get; set; }
        #endregion

        #region 获取/设置 字段值
        /// <summary>获取/设置 字段值。</summary>
        /// <param name="name">字段名</param>
        /// <returns></returns>
        Object this[String name] { get; set; }
        #endregion
    }
}