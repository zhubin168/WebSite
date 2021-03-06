USE [FinancialMarket]
GO
/****** Object:  Table [dbo].[Wexin_User]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wexin_User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Open_Id] [nvarchar](100) NOT NULL,
	[Nickname] [nvarchar](100) NULL,
	[Sex] [int] NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Province] [nvarchar](100) NULL,
	[Headimgurl] [nvarchar](1000) NULL,
	[Subscribe_time] [datetime] NULL,
	[Unionid] [nvarchar](100) NULL,
	[Create_time] [datetime] NULL,
	[Username] [nvarchar](200) NULL,
	[Password] [nvarchar](100) NOT NULL,
	[LoginTime] [datetime] NULL,
	[RoleId] [int] NULL,
	[TelePhone] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_Wexin_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wexin_User', @level2type=N'COLUMN',@level2name=N'Create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码（初始密码为随机生成的6位数字），后台也可修改' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wexin_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wexin_User', @level2type=N'COLUMN',@level2name=N'LoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(0:客户；1：理财师)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wexin_User', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wexin_User', @level2type=N'COLUMN',@level2name=N'TelePhone'
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](150) NOT NULL,
	[ProType] [nvarchar](50) NOT NULL,
	[Banner] [nvarchar](150) NOT NULL,
	[Price] [decimal](18, 6) NOT NULL,
	[ProAge] [bigint] NOT NULL,
	[Logo] [nvarchar](150) NOT NULL,
	[ProPlan] [text] NOT NULL,
	[ProUse] [text] NOT NULL,
	[ProDoc] [nvarchar](150) NOT NULL,
	[ProCase] [nvarchar](150) NOT NULL,
	[WhyChoose] [nvarchar](150) NOT NULL,
	[IsHot] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByName] [nvarchar](150) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Banner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProAge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProDoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProCase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'WhyChoose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'IsHot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
/****** Object:  Table [dbo].[Order]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvId] [bigint] NOT NULL,
	[InvName] [nvarchar](150) NOT NULL,
	[InvTelePhone] [nvarchar](150) NOT NULL,
	[ProId] [nvarchar](150) NOT NULL,
	[ProName] [nvarchar](150) NOT NULL,
	[OrderPrice] [nvarchar](150) NOT NULL,
	[Status] [nvarchar](150) NOT NULL,
	[SaleId] [nvarchar](150) NOT NULL,
	[SaleName] [nvarchar](150) NOT NULL,
	[ProductId] [nvarchar](150) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Number] [nvarchar](150) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByName] [nvarchar](150) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByName] [nvarchar](150) NOT NULL,
	[FinishedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'InvId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'InvName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'InvTelePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ProId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ProName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'OrderPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'SaleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'SaleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'FinishedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order'
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionary](
	[id] [bigint] NOT NULL,
	[para_name] [nvarchar](50) NULL,
	[para_code] [nvarchar](50) NULL,
	[para_group] [nvarchar](50) NULL,
	[para_value] [nvarchar](50) NULL,
	[status] [int] NULL,
	[remark] [nvarchar](200) NULL,
	[sort_order] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTools]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTools](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[ImgType] [nvarchar](150) NULL,
	[OrderNum] [nvarchar](150) NULL,
	[PublishTime] [datetime] NULL,
	[ImageUrl] [nvarchar](150) NULL,
	[Status] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedByName] [nvarchar](150) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedByName] [nvarchar](150) NULL,
 CONSTRAINT [PK_CUSTOMERTOOLS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'ImgType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'OrderNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'PublishTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获客助手' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerTools'
GO
/****** Object:  Table [dbo].[Course]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Conent] [text] NULL,
	[IsRecomand] [nvarchar](150) NULL,
	[ImageUrl] [nvarchar](150) NULL,
	[Status] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedByName] [nvarchar](150) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedByName] [nvarchar](150) NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Conent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'IsRecomand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course'
GO
/****** Object:  Table [dbo].[Company]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](150) NOT NULL,
	[DepartmentName] [nvarchar](150) NULL,
	[Postion] [nvarchar](150) NULL,
	[CityId] [nvarchar](150) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedByName] [nvarchar](150) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedByName] [nvarchar](150) NULL,
 CONSTRAINT [PK_COMPANY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'DepartmentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Postion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司部门职位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company'
GO
/****** Object:  Table [dbo].[BaseProvince]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseProvince](
	[ProvinceID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_S_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaseProvince] ON
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (1, N'北京市', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (2, N'天津市', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (3, N'河北省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (4, N'山西省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (5, N'内蒙古自治区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (6, N'辽宁省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (7, N'吉林省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (8, N'黑龙江省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (9, N'上海市', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (10, N'江苏省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (11, N'浙江省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (12, N'安徽省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (13, N'福建省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (14, N'江西省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (15, N'山东省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (16, N'河南省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (17, N'湖北省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (18, N'湖南省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (19, N'广东省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (20, N'广西壮族自治区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (21, N'海南省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (22, N'重庆市', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (23, N'四川省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (24, N'贵州省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (25, N'云南省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (26, N'西藏自治区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (27, N'陕西省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (28, N'甘肃省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (29, N'青海省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (30, N'宁夏回族自治区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (31, N'新疆维吾尔自治区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (32, N'香港特别行政区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (33, N'澳门特别行政区', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
INSERT [dbo].[BaseProvince] ([ProvinceID], [ProvinceName], [DateCreated], [DateUpdated]) VALUES (34, N'台湾省', CAST(0x00009A28014555BE AS DateTime), CAST(0x00009A28014555BE AS DateTime))
SET IDENTITY_INSERT [dbo].[BaseProvince] OFF
/****** Object:  Table [dbo].[BaseCity]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseCity](
	[CityID] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[ProvinceID] [bigint] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_S_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaseCity] ON
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (1, N'北京市', N'100000', 1, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (2, N'天津市', N'100000', 2, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (3, N'石家庄市', N'050000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (4, N'唐山市', N'063000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (5, N'秦皇岛市', N'066000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (6, N'邯郸市', N'056000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (7, N'邢台市', N'054000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (8, N'保定市', N'071000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (9, N'张家口市', N'075000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (10, N'承德市', N'067000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (11, N'沧州市', N'061000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (12, N'廊坊市', N'065000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (13, N'衡水市', N'053000', 3, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (14, N'太原市', N'030000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (15, N'大同市', N'037000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (16, N'阳泉市', N'045000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (17, N'长治市', N'046000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (18, N'晋城市', N'048000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (19, N'朔州市', N'036000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (20, N'晋中市', N'030600', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (21, N'运城市', N'044000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (22, N'忻州市', N'034000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (23, N'临汾市', N'041000', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (24, N'吕梁市', N'030500', 4, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (25, N'呼和浩特市', N'010000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (26, N'包头市', N'014000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (27, N'乌海市', N'016000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (28, N'赤峰市', N'024000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (29, N'通辽市', N'028000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (30, N'鄂尔多斯市', N'010300', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (31, N'呼伦贝尔市', N'021000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (32, N'巴彦淖尔市', N'014400', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (33, N'乌兰察布市', N'011800', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (34, N'兴安盟', N'137500', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (35, N'锡林郭勒盟', N'011100', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (36, N'阿拉善盟', N'016000', 5, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (37, N'沈阳市', N'110000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (38, N'大连市', N'116000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (39, N'鞍山市', N'114000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (40, N'抚顺市', N'113000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (41, N'本溪市', N'117000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (42, N'丹东市', N'118000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (43, N'锦州市', N'121000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (44, N'营口市', N'115000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (45, N'阜新市', N'123000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (46, N'辽阳市', N'111000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (47, N'盘锦市', N'124000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (48, N'铁岭市', N'112000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (49, N'朝阳市', N'122000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (50, N'葫芦岛市', N'125000', 6, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (51, N'长春市', N'130000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (52, N'吉林市', N'132000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (53, N'四平市', N'136000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (54, N'辽源市', N'136200', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (55, N'通化市', N'134000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (56, N'白山市', N'134300', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (57, N'松原市', N'131100', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (58, N'白城市', N'137000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (59, N'延边朝鲜族自治州', N'133000', 7, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (60, N'哈尔滨市', N'150000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (61, N'齐齐哈尔市', N'161000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (62, N'鸡西市', N'158100', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (63, N'鹤岗市', N'154100', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (64, N'双鸭山市', N'155100', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (65, N'大庆市', N'163000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (66, N'伊春市', N'152300', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (67, N'佳木斯市', N'154000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (68, N'七台河市', N'154600', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (69, N'牡丹江市', N'157000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (70, N'黑河市', N'164300', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (71, N'绥化市', N'152000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (72, N'大兴安岭地区', N'165000', 8, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (73, N'上海市', N'200000', 9, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (74, N'南京市', N'210000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (75, N'无锡市', N'214000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (76, N'徐州市', N'221000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (77, N'常州市', N'213000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (78, N'苏州市', N'215000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (79, N'南通市', N'226000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (80, N'连云港市', N'222000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (81, N'淮安市', N'223200', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (82, N'盐城市', N'224000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (83, N'扬州市', N'225000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (84, N'镇江市', N'212000', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (85, N'泰州市', N'225300', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (86, N'宿迁市', N'223800', 10, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (87, N'杭州市', N'310000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (88, N'宁波市', N'315000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (89, N'温州市', N'325000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (90, N'嘉兴市', N'314000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (91, N'湖州市', N'313000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (92, N'绍兴市', N'312000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (93, N'金华市', N'321000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (94, N'衢州市', N'324000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (95, N'舟山市', N'316000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (96, N'台州市', N'318000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (97, N'丽水市', N'323000', 11, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (98, N'合肥市', N'230000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (99, N'芜湖市', N'241000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (100, N'蚌埠市', N'233000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (101, N'淮南市', N'232000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (102, N'马鞍山市', N'243000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (103, N'淮北市', N'235000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (104, N'铜陵市', N'244000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (105, N'安庆市', N'246000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (106, N'黄山市', N'242700', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (107, N'滁州市', N'239000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (108, N'阜阳市', N'236100', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (109, N'宿州市', N'234100', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (110, N'巢湖市', N'238000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (111, N'六安市', N'237000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (112, N'亳州市', N'236800', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (113, N'池州市', N'247100', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (114, N'宣城市', N'366000', 12, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (115, N'福州市', N'350000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (116, N'厦门市', N'361000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (117, N'莆田市', N'351100', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (118, N'三明市', N'365000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (119, N'泉州市', N'362000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (120, N'漳州市', N'363000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (121, N'南平市', N'353000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (122, N'龙岩市', N'364000', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (123, N'宁德市', N'352100', 13, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (124, N'南昌市', N'330000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (125, N'景德镇市', N'333000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (126, N'萍乡市', N'337000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (127, N'九江市', N'332000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (128, N'新余市', N'338000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (129, N'鹰潭市', N'335000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (130, N'赣州市', N'341000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (131, N'吉安市', N'343000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (132, N'宜春市', N'336000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (133, N'抚州市', N'332900', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (134, N'上饶市', N'334000', 14, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (135, N'济南市', N'250000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (136, N'青岛市', N'266000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (137, N'淄博市', N'255000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (138, N'枣庄市', N'277100', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (139, N'东营市', N'257000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (140, N'烟台市', N'264000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (141, N'潍坊市', N'261000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (142, N'济宁市', N'272100', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (143, N'泰安市', N'271000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (144, N'威海市', N'265700', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (145, N'日照市', N'276800', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (146, N'莱芜市', N'271100', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (147, N'临沂市', N'276000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (148, N'德州市', N'253000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (149, N'聊城市', N'252000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (150, N'滨州市', N'256600', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (151, N'荷泽市', N'255000', 15, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (152, N'郑州市', N'450000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (153, N'开封市', N'475000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (154, N'洛阳市', N'471000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (155, N'平顶山市', N'467000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (156, N'安阳市', N'454900', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (157, N'鹤壁市', N'456600', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (158, N'新乡市', N'453000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (159, N'焦作市', N'454100', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (160, N'濮阳市', N'457000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (161, N'许昌市', N'461000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (162, N'漯河市', N'462000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (163, N'三门峡市', N'472000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (164, N'南阳市', N'473000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (165, N'商丘市', N'476000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (166, N'信阳市', N'464000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (167, N'周口市', N'466000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (168, N'驻马店市', N'463000', 16, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (169, N'武汉市', N'430000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (170, N'黄石市', N'435000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (171, N'十堰市', N'442000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (172, N'宜昌市', N'443000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (173, N'襄樊市', N'441000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (174, N'鄂州市', N'436000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (175, N'荆门市', N'448000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (176, N'孝感市', N'432100', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (177, N'荆州市', N'434000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (178, N'黄冈市', N'438000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (179, N'咸宁市', N'437000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (180, N'随州市', N'441300', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (181, N'恩施土家族苗族自治州', N'445000', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (182, N'神农架', N'442400', 17, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (183, N'长沙市', N'410000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (184, N'株洲市', N'412000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (185, N'湘潭市', N'411100', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (186, N'衡阳市', N'421000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (187, N'邵阳市', N'422000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (188, N'岳阳市', N'414000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (189, N'常德市', N'415000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (190, N'张家界市', N'427000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (191, N'益阳市', N'413000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (192, N'郴州市', N'423000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (193, N'永州市', N'425000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (194, N'怀化市', N'418000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (195, N'娄底市', N'417000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (196, N'湘西土家族苗族自治州', N'416000', 18, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (197, N'广州市', N'510000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (198, N'韶关市', N'521000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (199, N'深圳市', N'518000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (200, N'珠海市', N'519000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (201, N'汕头市', N'515000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (202, N'佛山市', N'528000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (203, N'江门市', N'529000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (204, N'湛江市', N'524000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (205, N'茂名市', N'525000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (206, N'肇庆市', N'526000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (207, N'惠州市', N'516000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (208, N'梅州市', N'514000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (209, N'汕尾市', N'516600', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (210, N'河源市', N'517000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (211, N'阳江市', N'529500', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (212, N'清远市', N'511500', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (213, N'东莞市', N'511700', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (214, N'中山市', N'528400', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (215, N'潮州市', N'515600', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (216, N'揭阳市', N'522000', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (217, N'云浮市', N'527300', 19, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (218, N'南宁市', N'530000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (219, N'柳州市', N'545000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (220, N'桂林市', N'541000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (221, N'梧州市', N'543000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (222, N'北海市', N'536000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (223, N'防城港市', N'538000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (224, N'钦州市', N'535000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (225, N'贵港市', N'537100', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (226, N'玉林市', N'537000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (227, N'百色市', N'533000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (228, N'贺州市', N'542800', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (229, N'河池市', N'547000', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (230, N'来宾市', N'546100', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (231, N'崇左市', N'532200', 20, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (232, N'海口市', N'570000', 21, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (233, N'三亚市', N'572000', 21, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (234, N'重庆市', N'400000', 22, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (235, N'成都市', N'610000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (236, N'自贡市', N'643000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (237, N'攀枝花市', N'617000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (238, N'泸州市', N'646100', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (239, N'德阳市', N'618000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (240, N'绵阳市', N'621000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (241, N'广元市', N'628000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (242, N'遂宁市', N'629000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (243, N'内江市', N'641000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (244, N'乐山市', N'614000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (245, N'南充市', N'637000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (246, N'眉山市', N'612100', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (247, N'宜宾市', N'644000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (248, N'广安市', N'638000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (249, N'达州市', N'635000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (250, N'雅安市', N'625000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (251, N'巴中市', N'635500', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (252, N'资阳市', N'641300', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (253, N'阿坝藏族羌族自治州', N'624600', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (254, N'甘孜藏族自治州', N'626000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (255, N'凉山彝族自治州', N'615000', 23, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (256, N'贵阳市', N'55000', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (257, N'六盘水市', N'553000', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (258, N'遵义市', N'563000', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (259, N'安顺市', N'561000', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (260, N'铜仁地区', N'554300', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (261, N'黔西南布依族苗族自治州', N'551500', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (262, N'毕节地区', N'551700', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (263, N'黔东南苗族侗族自治州', N'551500', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (264, N'黔南布依族苗族自治州', N'550100', 24, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (265, N'昆明市', N'650000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (266, N'曲靖市', N'655000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (267, N'玉溪市', N'653100', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (268, N'保山市', N'678000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (269, N'昭通市', N'657000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (270, N'丽江市', N'674100', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (271, N'思茅市', N'665000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (272, N'临沧市', N'677000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (273, N'楚雄彝族自治州', N'675000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (274, N'红河哈尼族彝族自治州', N'654400', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (275, N'文山壮族苗族自治州', N'663000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (276, N'西双版纳傣族自治州', N'666200', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (277, N'大理白族自治州', N'671000', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (278, N'德宏傣族景颇族自治州', N'678400', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (279, N'怒江傈僳族自治州', N'671400', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (280, N'迪庆藏族自治州', N'674400', 25, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (281, N'拉萨市', N'850000', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (282, N'昌都地区', N'854000', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (283, N'山南地区', N'856000', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (284, N'日喀则地区', N'857000', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (285, N'那曲地区', N'852000', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (286, N'阿里地区', N'859100', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (287, N'林芝地区', N'860100', 26, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (288, N'西安市', N'710000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (289, N'铜川市', N'727000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (290, N'宝鸡市', N'721000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (291, N'咸阳市', N'712000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (292, N'渭南市', N'714000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (293, N'延安市', N'716000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (294, N'汉中市', N'723000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (295, N'榆林市', N'719000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (296, N'安康市', N'725000', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (297, N'商洛市', N'711500', 27, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (298, N'兰州市', N'730000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (299, N'嘉峪关市', N'735100', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (300, N'金昌市', N'737100', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (301, N'白银市', N'730900', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (302, N'天水市', N'741000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (303, N'武威市', N'733000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (304, N'张掖市', N'734000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (305, N'平凉市', N'744000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (306, N'酒泉市', N'735000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (307, N'庆阳市', N'744500', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (308, N'定西市', N'743000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (309, N'陇南市', N'742100', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (310, N'临夏回族自治州', N'731100', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (311, N'甘南藏族自治州', N'747000', 28, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (312, N'西宁市', N'810000', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (313, N'海东地区', N'810600', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (314, N'海北藏族自治州', N'810300', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (315, N'黄南藏族自治州', N'811300', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (316, N'海南藏族自治州', N'813000', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (317, N'果洛藏族自治州', N'814000', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (318, N'玉树藏族自治州', N'815000', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (319, N'海西蒙古族藏族自治州', N'817000', 29, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (320, N'银川市', N'750000', 30, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (321, N'石嘴山市', N'753000', 30, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (322, N'吴忠市', N'751100', 30, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (323, N'固原市', N'756000', 30, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (324, N'中卫市', N'751700', 30, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (325, N'乌鲁木齐市', N'830000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (326, N'克拉玛依市', N'834000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (327, N'吐鲁番地区', N'838000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (328, N'哈密地区', N'839000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (329, N'昌吉回族自治州', N'831100', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (330, N'博尔塔拉蒙古自治州', N'833400', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (331, N'巴音郭楞蒙古自治州', N'841000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (332, N'阿克苏地区', N'843000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (333, N'克孜勒苏柯尔克孜自治州', N'835600', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (334, N'喀什地区', N'844000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (335, N'和田地区', N'848000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (336, N'伊犁哈萨克自治州', N'833200', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (337, N'塔城地区', N'834700', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (338, N'阿勒泰地区', N'836500', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (339, N'石河子市', N'832000', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (340, N'阿拉尔市', N'843300', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (341, N'图木舒克市', N'843900', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (342, N'五家渠市', N'831300', 31, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (343, N'香港特别行政区', N'000000', 32, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (344, N'澳门特别行政区', N'000000', 33, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
INSERT [dbo].[BaseCity] ([CityID], [CityName], [ZipCode], [ProvinceID], [DateCreated], [DateUpdated]) VALUES (345, N'台湾省', N'000000', 34, CAST(0x00009A2801490E18 AS DateTime), CAST(0x00009A2801490E18 AS DateTime))
SET IDENTITY_INSERT [dbo].[BaseCity] OFF
/****** Object:  Table [dbo].[Article]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ArticleTitle] [nvarchar](150) NOT NULL,
	[ArticleType] [int] NULL,
	[ArticleImg] [nvarchar](150) NULL,
	[ArticleContent] [text] NULL,
	[IsRecommand] [int] NULL,
	[IsPublish] [int] NULL,
	[Status] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedByName] [nvarchar](150) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedByName] [nvarchar](150) NULL,
 CONSTRAINT [PK_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ArticleTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ArticleType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ArticleImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ArticleContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'IsRecommand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'IsPublish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0：未激活  1：激活失败 2：已启用  3：已停用 4：已删除)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article'
GO
/****** Object:  Table [dbo].[Active]    Script Date: 04/28/2017 17:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Active](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](150) NOT NULL,
	[ContentUrl] [nvarchar](150) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByName] [nvarchar](150) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ACTIVE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID(自增列)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'ContentUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'CreatedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改者名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active', @level2type=N'COLUMN',@level2name=N'ModifiedByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Active'
GO
/****** Object:  Default [DF__Article__IsRecom__22AA2996]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF__Article__IsRecom__22AA2996]  DEFAULT ((0)) FOR [IsRecommand]
GO
/****** Object:  Default [DF__Article__IsPubli__239E4DCF]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF__Article__IsPubli__239E4DCF]  DEFAULT ((0)) FOR [IsPublish]
GO
/****** Object:  Default [DF__Article__Status__24927208]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF__Article__Status__24927208]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Course__Status__2C3393D0]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__Status__2C3393D0]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__CustomerT__Statu__145C0A3F]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[CustomerTools] ADD  CONSTRAINT [DF__CustomerT__Statu__145C0A3F]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Product__Status__31EC6D26]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Wexin_User_roleId]    Script Date: 04/28/2017 17:00:43 ******/
ALTER TABLE [dbo].[Wexin_User] ADD  CONSTRAINT [DF_Wexin_User_roleId]  DEFAULT ((0)) FOR [RoleId]
GO
