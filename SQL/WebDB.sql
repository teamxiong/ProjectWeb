USE [WebDB]
GO
/****** Object:  Table [dbo].[ajsw_cg]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ajsw_cg](
	[cwk_rq] [varchar](50) NULL,
	[mchk_dwmch] [varchar](50) NULL,
	[spkfk_spmch] [varchar](50) NULL,
	[spkfk_shpgg] [varchar](50) NULL,
	[ywmxk_pihao] [varchar](50) NULL,
	[ywmxk_shl] [money] NULL,
	[spkfk_dw] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ajsw_kc]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ajsw_kc](
	[spkfk_spmch] [varchar](50) NULL,
	[spkfk_shpgg] [varchar](50) NULL,
	[sphwph_pihao] [varchar](50) NULL,
	[sphwph_shl] [money] NULL,
	[spkfk_dw] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ajsw_xs]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ajsw_xs](
	[cwk_rq] [varchar](50) NULL,
	[mchk_dwmch] [varchar](50) NULL,
	[spkfk_spmch] [varchar](50) NULL,
	[spkfk_shpgg] [varchar](50) NULL,
	[ywmxk_pihao] [varchar](50) NULL,
	[ywmxk_shl] [money] NULL,
	[spkfk_dw] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbButton]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbButton](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbButton] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbIcons]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbIcons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IconName] [nvarchar](100) NOT NULL,
	[IconCssInfo] [nvarchar](2000) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbIcons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbMenu]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ParentId] [int] NULL,
	[Code] [varchar](50) NULL,
	[LinkAddress] [varchar](100) NULL,
	[Icon] [varchar](50) NULL,
	[MenuType] [int] NULL,
	[IsEnable] [varchar](50) NULL,
	[IsMenu] [varchar](50) NULL,
	[ButtonId] [varchar](50) NULL,
	[ButtonCss] [varchar](200) NULL,
	[ButtonClick] [varchar](200) NULL,
 CONSTRAINT [PK_tbMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbMenuButton]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbMenuButton](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NULL,
	[ButtonId] [int] NULL,
 CONSTRAINT [PK_tbMenuButton] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbRole]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NULL,
	[RoleName] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[IsEnable] [varchar](50) NULL,
 CONSTRAINT [PK_tbRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbRoleMenu]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRoleMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_tbRoleMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbRoleMenuButton]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRoleMenuButton](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuId] [int] NULL,
	[ButtonId] [int] NULL,
 CONSTRAINT [PK_tbRoleMenuButton] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RealName] [nvarchar](50) NOT NULL,
	[MobilePhone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsAble] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tbUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbUserLog]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbUserLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](50) NULL,
	[RealName] [varchar](50) NULL,
	[IP] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_tbUserLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbUserRole]    Script Date: 2019/7/25 16:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_tbUserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ajsw_cg] ([cwk_rq], [mchk_dwmch], [spkfk_spmch], [spkfk_shpgg], [ywmxk_pihao], [ywmxk_shl], [spkfk_dw]) VALUES (N'2019-05-22', N'111', N'11', N'11', N'1111', 1.0000, N'111')
GO
INSERT [dbo].[ajsw_cg] ([cwk_rq], [mchk_dwmch], [spkfk_spmch], [spkfk_shpgg], [ywmxk_pihao], [ywmxk_shl], [spkfk_dw]) VALUES (N'2019-01-01', N'111', N'11', N'1', N'11', 2.0000, N'111')
GO
INSERT [dbo].[ajsw_kc] ([spkfk_spmch], [spkfk_shpgg], [sphwph_pihao], [sphwph_shl], [spkfk_dw]) VALUES (N'1111', N'111', N'111', 2.0000, N'111')
GO
INSERT [dbo].[ajsw_xs] ([cwk_rq], [mchk_dwmch], [spkfk_spmch], [spkfk_shpgg], [ywmxk_pihao], [ywmxk_shl], [spkfk_dw]) VALUES (N'2019-05-22', N'1111', N'1111', N'111', N'111', 2.0000, N'111')
GO
SET IDENTITY_INSERT [dbo].[tbButton] ON 

GO
INSERT [dbo].[tbButton] ([Id], [Name], [Code], [Icon], [Description], [CreateTime], [CreateBy]) VALUES (1, N'查询', N'search', N'layui-icon-search', N'查询', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbButton] ([Id], [Name], [Code], [Icon], [Description], [CreateTime], [CreateBy]) VALUES (3, N'添加', N'add', N'layui-icon-add-1', NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbButton] ([Id], [Name], [Code], [Icon], [Description], [CreateTime], [CreateBy]) VALUES (4, N'修改', N'edit', N'layui-icon-edit', NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbButton] ([Id], [Name], [Code], [Icon], [Description], [CreateTime], [CreateBy]) VALUES (5, N'删除', N'delete', N'layui-icon-delete', NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
SET IDENTITY_INSERT [dbo].[tbButton] OFF
GO
SET IDENTITY_INSERT [dbo].[tbIcons] ON 

GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1514, N'cog', N'icon-cog', CAST(0x0000A63300BC82FC AS DateTime), N'admin', CAST(0x0000A63300C5202A AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1515, N'world', N'icon-world', CAST(0x0000A63300BC9814 AS DateTime), N'admin', CAST(0x0000A63300C51838 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1516, N'table', N'icon-table', CAST(0x0000A63300BCAE58 AS DateTime), N'admin', CAST(0x0000A63300C51178 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1517, N'tree', N'icon-tree', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1518, N'user_b', N'icon-user_b', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1519, N'group_key', N'icon-group_key', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1520, N'bug', N'icon-bug', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1521, N'bug_magnify', N'icon-bug_magnify', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1522, N'layers', N'icon-layers', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1523, N'group', N'icon-group', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1524, N'newspaper_link', N'icon-newspaper_link', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1525, N'newspaper', N'icon-newspaper', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1526, N'html', N'icon-html', CAST(0x0000A62B010481D8 AS DateTime), N'admin', CAST(0x0000A62C0122CE9E AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1527, N'database', N'icon-database', CAST(0x0000A62B0104B47F AS DateTime), N'admin', CAST(0x0000A62C0122C631 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1528, N'database_table', N'icon-database_table', CAST(0x0000A62B01204626 AS DateTime), N'admin', CAST(0x0000A62B01204EA7 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1529, N'style_edit', N'icon-style_edit', CAST(0x0000A62C01164957 AS DateTime), N'admin', CAST(0x0000A62C01164957 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1530, N'application_view_icons', N'icon-application_view_icons', CAST(0x0000A633009DD17B AS DateTime), N'admin', CAST(0x0000A633009DD17B AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1531, N'eye', N'icon-eye', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1532, N'add', N'icon-add', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1533, N'edit', N'icon-edit', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1534, N'delete', N'icon-delete', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1535, N'page_excel', N'icon-page_excel', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1536, N'group', N'icon-group', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1537, N'user_key', N'icon-user_key', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1538, N'key', N'icon-key', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1539, N'link', N'icon-link', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1540, N'expand', N'icon-expand', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1541, N'collapse', N'icon-collapse', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1542, N'import', N'icon-import', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
GO
INSERT [dbo].[tbIcons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1543, N'search', N'icon-search', CAST(0x0000A62D010729CC AS DateTime), N'admin', CAST(0x0000A62D01079229 AS DateTime), N'admin')
GO
SET IDENTITY_INSERT [dbo].[tbIcons] OFF
GO
SET IDENTITY_INSERT [dbo].[tbMenu] ON 

GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1, N'菜单管理', 1167, NULL, N'/Home/MenuMain', N'layui-icon-home', 3, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1167, N'系统设置', 1172, NULL, N'', N'layui-icon-util', 2, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1168, N'角色管理', 1167, NULL, N'/Home/tbRoleMain', N'layui-icon-group', 3, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1172, N'基础设置', 0, NULL, N'', N'', 1, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1179, N'用户管理', 1167, NULL, N'/Home/tbUserMain', N'layui-icon-username', 3, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1180, N'查询数据', 1, NULL, NULL, N'layui-icon-search', 4, N'1', N'0', N'reload', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1181, N'测试', 1167, NULL, N'测试', N'layui-icon-username', 3, N'1', N'1', NULL, NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1182, N'新增', 1, NULL, NULL, N'layui-icon-add-1', 4, N'1', N'0', N'Add', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1183, N'编辑', 1, NULL, NULL, N'layui-icon-edit', 4, N'1', N'0', N'edit', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1184, N'删除', 1, NULL, NULL, N'layui-icon-delete', 4, N'1', N'0', N'Delete', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1185, N'查询', 1168, NULL, NULL, N'layui-icon-search', 4, N'1', N'0', N'reload', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1186, N'新增', 1168, NULL, NULL, N'layui-icon-add-1', 4, N'1', N'0', N'Add', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1187, N'编辑', 1168, NULL, NULL, N'layui-icon-edit', 4, N'1', N'0', N'edit', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1188, N'删除', 1168, NULL, NULL, N'layui-icon-delete', 4, N'1', N'0', N'Delete', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1189, N'分配权限', 1168, NULL, NULL, N'layui-icon-user', 4, N'1', N'0', N'Role_authorization', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1190, N'搜索', 1179, NULL, NULL, N'layui-icon-search', 4, N'1', N'0', N'reload', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1191, N'新增', 1179, NULL, NULL, N'layui-icon-add-1', 4, N'1', N'0', N'Add', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1192, N'编辑', 1179, NULL, NULL, N'layui-icon-edit', 4, N'1', N'0', N'edit', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1193, N'删除', 1179, NULL, NULL, N'layui-icon-delete', 4, N'1', N'0', N'Delete', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1194, N'重置密码', 1179, NULL, NULL, N'layui-icon-password', 4, N'1', N'0', N'Reset', NULL, NULL)
GO
INSERT [dbo].[tbMenu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [MenuType], [IsEnable], [IsMenu], [ButtonId], [ButtonCss], [ButtonClick]) VALUES (1195, N'用户角色管理', 1179, NULL, NULL, N'layui-icon-group', 4, N'1', N'0', N'User_authorization_Roles', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbMenuButton] ON 

GO
INSERT [dbo].[tbMenuButton] ([Id], [MenuId], [ButtonId]) VALUES (640, 1038, 7)
GO
INSERT [dbo].[tbMenuButton] ([Id], [MenuId], [ButtonId]) VALUES (641, 1038, 8)
GO
INSERT [dbo].[tbMenuButton] ([Id], [MenuId], [ButtonId]) VALUES (645, 1, 1)
GO
INSERT [dbo].[tbMenuButton] ([Id], [MenuId], [ButtonId]) VALUES (646, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[tbMenuButton] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRole] ON 

GO
INSERT [dbo].[tbRole] ([Id], [RoleCode], [RoleName], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsEnable]) VALUES (90, NULL, N'超级管理员', N'超级管理员', N'xxx', CAST(0x0000A9FA00CBF516 AS DateTime), N'xxx', CAST(0x0000AA4900A69E16 AS DateTime), NULL)
GO
INSERT [dbo].[tbRole] ([Id], [RoleCode], [RoleName], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsEnable]) VALUES (94, NULL, N'普通管理员', N'普通管理员', N'xxx', CAST(0x0000AA4900A5D4E6 AS DateTime), N'xxx', CAST(0x0000AA4900A5D4E6 AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRoleMenu] ON 

GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2491, 90, 1172)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2492, 90, 1167)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2493, 90, 1)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2494, 90, 1168)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2497, 90, 1179)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2498, 90, 1180)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2503, 94, 1172)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2504, 94, 1167)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2505, 94, 1)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2506, 94, 1180)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2507, 94, 1168)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2508, 90, 1181)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2509, 90, 1182)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2510, 90, 1183)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2511, 90, 1184)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2512, 90, 1185)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2513, 90, 1186)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2514, 90, 1187)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2515, 90, 1188)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2516, 90, 1189)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2517, 90, 1190)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2518, 90, 1191)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2519, 90, 1192)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2520, 90, 1193)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2521, 90, 1194)
GO
INSERT [dbo].[tbRoleMenu] ([Id], [RoleId], [MenuId]) VALUES (2522, 90, 1195)
GO
SET IDENTITY_INSERT [dbo].[tbRoleMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRoleMenuButton] ON 

GO
INSERT [dbo].[tbRoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (8149, 94, 1038, 4)
GO
INSERT [dbo].[tbRoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (8151, 1, 1172, 4)
GO
SET IDENTITY_INSERT [dbo].[tbRoleMenuButton] OFF
GO
SET IDENTITY_INSERT [dbo].[tbUser] ON 

GO
INSERT [dbo].[tbUser] ([Id], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (939, N'11', N'E10ADC3949BA59ABBE56E057F20F88', N'超级管理员', N'18827013520', N'888@qq.com', 1, N'测试', N'xxx', CAST(0x0000AA0600A4C766 AS DateTime), N'xxx', CAST(0x0000AA0600A4C766 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbUser] OFF
GO
SET IDENTITY_INSERT [dbo].[tbUserLog] ON 

GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95801006166 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A958010061E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95801006E73 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A958010090E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (5, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9580100D1A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (6, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9580100D317 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (7, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9580100DF07 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (8, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9580100EB4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (9, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95801011CE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (10, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A958010420AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (11, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95801043A57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (12, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A95801048166 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (13, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9580106A303 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (14, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A95801097A81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (15, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A958010A6B28 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (16, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900D8B1A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (17, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900D8B366 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (18, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900D8D3AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (19, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900D9111C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (20, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900D9296C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (21, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95900D92F2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (22, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95900D9368C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (23, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900D93958 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (24, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900D941F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (25, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95900D95409 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (26, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900D9686B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (27, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900D98224 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (28, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95900D9AE1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (29, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900D9CD9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (30, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DA6CEE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (31, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DA6F1F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (32, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DA753F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (33, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DA8E17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (34, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A95900DABE30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (35, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DAC15A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (36, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900DAFA92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (37, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A95900DB0D00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (38, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DB0FC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (39, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB4748 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (40, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB4899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (41, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A95900DB5101 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (42, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DB5872 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (43, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A95900DB5ABB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (44, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95900DB8991 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (45, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900DB8B81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (46, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB9156 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (47, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB95D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (48, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB9768 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (49, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB976D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (50, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB97F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (51, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB9904 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (52, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DB9BAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (53, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DBB3C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (54, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95900DBBE04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (55, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A95900DBC648 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (56, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A95900DBC6C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (57, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A95900DBC7ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (58, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DBECBA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (59, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DBEE6D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (60, N'0104001', N'上海杰盈木业有限公司', N'101.231.72.95', CAST(0x0000A95900DBF00D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (61, N'0104001', N'上海杰盈木业有限公司', N'101.231.72.95', CAST(0x0000A95900DBF15E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (62, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95900DBF3A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (63, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC0871 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (64, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC1246 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (65, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC1630 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (66, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A95900DC1C9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (67, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A95900DC1CD7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (68, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900DC1E0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (69, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95900DC22A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (70, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900DC33BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (71, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95900DC33BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (72, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95900DC364F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (73, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900DC40AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (74, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95900DC4DED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (75, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC5C01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (76, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900DC5C26 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (77, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC7549 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (78, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DC7621 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (79, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900DC7F90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (80, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DC80F3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (81, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DC99BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (82, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DC9A20 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (83, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DC9AA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (84, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DCB785 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (85, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DCBCF3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (86, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A95900DCF2A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (87, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900DCF521 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (88, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DD2F27 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (89, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900DD4AD0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (90, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900DD4AD5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (91, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900DD4C21 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (92, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DD561C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (93, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DD5A71 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (94, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900DD9ADE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (95, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DDA65D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (96, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DDA7C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (97, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DDA86E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (98, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DDCD03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (99, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900DDCDCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (100, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DE1CEB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (101, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DE2697 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (102, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DE408D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (103, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900DE492D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (104, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DE4A59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (105, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900DE4A7A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (106, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A95900DE5353 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (107, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DE5C93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (108, N'0113072', N'上海攀晶装饰工程有限公司（彩铝）', N'101.231.72.95', CAST(0x0000A95900DE5F01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (109, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DE848E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (110, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DE8792 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (111, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DE8EAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (112, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DE968B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (113, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900DE996A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (114, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95900DEA23A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (115, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95900DEA37D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (116, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DEA834 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (117, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900DEA910 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (118, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95900DEC77C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (119, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95900DEC9D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (120, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95900DECB1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (121, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A95900DED2B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (122, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DF12E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (123, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DF137F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (124, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DF171E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (125, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900DF182D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (126, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DF1BAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (127, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900DF1D4C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (128, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900DF2C6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (129, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DF3ABA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (130, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900DF3C5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (131, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900DF4A52 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (132, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900DF55C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (133, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A95900DF840E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (134, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95900DF8B91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (135, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95900DFF7D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (136, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900E00021 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (137, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A95900E00810 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (138, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A95900E008EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (139, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A95900E00A34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (140, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A95900E02ED7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (141, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E08031 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (142, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E082D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (143, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A95900E082EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (144, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95900E0A298 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (145, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A95900E0AE47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (146, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E0D157 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (147, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E113C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (148, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A95900E11C47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (149, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E125EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (150, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A95900E12B8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (151, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A95900E12D3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (152, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900E130B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (153, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95900E164B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (154, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E1756A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (155, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E183E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (156, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E187E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (157, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E19126 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (158, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900E1ACB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (159, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E1C160 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (160, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95900E1C95D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (161, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E1CBAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (162, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900E1DA0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (163, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E1E040 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (164, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E1E3AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (165, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900E1F153 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (166, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E20068 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (167, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E20613 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (168, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E20BED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (169, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E2169F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (170, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E237DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (171, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E24DC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (172, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E2505A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (173, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900E271CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (174, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95900E2CD73 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (175, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95900E338DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (176, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E3790A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (177, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A95900E3C84E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (178, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E4076A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (179, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E489E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (180, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A95900E4C083 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (181, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A95900E4E930 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (182, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A95900E4EBEE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (183, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A95900E50DF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (184, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A95900E52D81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (185, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A95900E6CBAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (186, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900E6FC34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (187, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95900E7C960 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (188, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95900E80D5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (189, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95900E87E57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (190, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95900E9179C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (191, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A95900EAA2A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (192, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB0066 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (193, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB0235 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (194, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB03AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (195, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB3C8B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (196, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB7F6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (197, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900EB884D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (198, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95900ECF30A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (199, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95900F240EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (200, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95900F4037A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (201, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95900F47753 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (202, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95900F47969 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (203, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95900F492DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (204, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A95900F5705F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (205, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95900F620D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (206, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900F623DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (207, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900F62A59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (208, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95900F63E7A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (209, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95900F66F73 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (210, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95900F6EA48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (211, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900F88810 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (212, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900F88C44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (213, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95900F8F655 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (214, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95900FA2504 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (215, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95900FA252E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (216, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A95900FB2197 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (217, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95900FB5EDA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (218, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95900FB65DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (219, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A95900FC7CC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (220, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A95900FC7D6E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (221, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A95900FCAA8C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (222, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95900FE193C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (223, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A959010007B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (224, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A959010321CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (225, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A95901045EEF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (226, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A95901048D96 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (227, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9590104951E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (228, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9590105D2FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (229, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9590105D5AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (230, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9590105EE58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (231, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9590107CD6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (232, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9590107CED9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (233, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A959010A8B71 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (234, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A959010AD1FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (235, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010B338A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (236, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010B35EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (237, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010B4452 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (238, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A959010B4CAD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (239, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A959010B7A32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (240, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A959010B88E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (241, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A959010BD4FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (242, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A959010C466F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (243, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010CA997 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (244, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010CAEFC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (245, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A959010CEEEE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (246, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A959010CFFC9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (247, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959010DBA00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (248, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959010DBC0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (249, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959010DBFC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (250, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A959010F3A7E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (251, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A959010FC1CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (252, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959010FCB0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (253, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A95901100BCB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (254, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A9590110EBDE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (255, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95901111310 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (256, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95901112959 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (257, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A9590111A862 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (258, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A95901120ADE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (259, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A9590112F2DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (260, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A9590112F7EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (261, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A9590112FF86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (262, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A9590113040A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (263, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A95901132F13 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (264, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A959011330AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (265, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959011359FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (266, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A95901135C77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (267, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95901147516 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (268, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95901160615 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (269, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A95901188B24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (270, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A959011A3230 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (271, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A959011C1261 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (272, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A959011F80CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (273, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A959012042A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (274, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901205CC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (275, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9590120A725 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (276, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901211006 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (277, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9590121CDC4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (278, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901221E7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (279, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901221E83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (280, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901221ECE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (281, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901228967 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (282, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A95901228F0D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (283, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9590122BBD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (284, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9590123F765 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (285, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9590123FA93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (286, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A959012E5671 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (287, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A959014E2493 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (288, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A959014F5EAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (289, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9590150CB3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (290, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9590153026D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (291, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A95901532D22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (292, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9590153B368 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (293, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95A009C04AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (294, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95A009C0739 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (295, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A95A009C3335 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (296, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95A00A74341 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (297, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A95A00A80A56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (298, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95A00AD9389 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (299, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95A00AD9B8B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (300, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95A00B234A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (301, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00B7C762 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (302, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95A00D5F7D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (303, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00ED3D31 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (304, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00ED4092 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (305, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00ED420E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (306, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00ED924A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (307, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95A00EE3995 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (308, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95A00F5E69A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (309, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95A01094084 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (310, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95A010DBD47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (311, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95A011052DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (312, N'004664', N'尹婷', N'101.231.72.95', CAST(0x0000A95A0111E240 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (313, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01141575 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (314, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01144A12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (315, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01144EB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (316, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01145A90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (317, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A0115516A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (318, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01155529 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (319, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A0115557D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (320, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A01156925 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (321, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A0115A0C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (322, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A95A0115A793 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (323, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A95A01378ED5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (324, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B0089DBD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (325, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B008A5ACF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (326, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B008DA0E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (327, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B008DECDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (328, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B008DECDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (329, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B008DFE0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (330, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95B008F66CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (331, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A95B0092C409 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (332, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B009973A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (333, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B009A71AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (334, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95B009A9B85 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (335, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A95B009D3CC1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (336, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A95B009B3AC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (337, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A95B009B4EE5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (338, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A95B00A4A893 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (339, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95B00A82C78 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (340, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A95B00A84EC4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (341, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A95B00AC57D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (342, N'0102016', N'上海华耐陶瓷工贸有限公司', N'58.33.13.32', CAST(0x0000A95B00AF41EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (343, N'0102016', N'上海华耐陶瓷工贸有限公司', N'58.33.13.32', CAST(0x0000A95B00B17A6F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (344, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00BA4F91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (345, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00BBDBDF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (346, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A95B00BC0CC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (347, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00C645E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (348, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00C7EBBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (349, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00C86F3D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (350, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00C9944A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (351, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00CB4986 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (352, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95B00DB43C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (353, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00DBB5F1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (354, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A95B00DDC4A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (355, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00E397A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (356, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00E41479 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (357, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95B00E4DF3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (358, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95B00E74BC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (359, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A95B00E9BD9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (360, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A95B00F1D581 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (361, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A95B010D24D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (362, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95B0116D7DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (363, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A95B012BE07E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (364, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A95B014C24CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (365, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C009E2EE3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (366, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C009E3062 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (367, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C009E6601 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (368, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95C00ACD8FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (369, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95C00AD7988 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (370, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95C00AD7B36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (371, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95C00AD90FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (372, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C00BE44D4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (373, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C00C140CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (374, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C00E42BEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (375, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C00E95B5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (376, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C00E95C99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (377, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95C00EB89F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (378, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95C00EBF04C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (379, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C00F2BE56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (380, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C00F3BD90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (381, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A95C00FE7899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (382, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95C01151E11 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (383, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C01176D28 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (384, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C011844E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (385, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95C011AE118 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (386, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A95C017594DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (387, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A95C0175E77A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (388, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95D008A557B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (389, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00916B67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (390, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00916C84 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (391, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00918EF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (392, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A95D00A276BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (393, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00A29AA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (394, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95D00DD142A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (395, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00E6035B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (396, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00ECF0CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (397, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95D00ECF0CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (398, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A95E0097409F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (399, N'a005065', N'本地权限开发', N'58.33.13.32', CAST(0x0000A95E009C3CC3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (400, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A95E009B625C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (401, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A95E00A06CE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (402, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A95E00A74003 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (403, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A95E00A990A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (404, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A95E00A99B88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (405, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95E00AA925E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (406, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A95E00B0FA12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (407, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A95E00B16E15 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (408, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B502AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (409, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B550C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (410, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A95E00B5A188 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (411, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B5B607 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (412, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B66B2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (413, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B6A064 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (414, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00B97D9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (415, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00BB69C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (416, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A95E00BB943C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (417, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95E00C02089 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (418, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95E00D6B542 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (419, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95E00D6B75C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (420, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A95E00D6D650 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (421, N'0102016', N'上海华耐陶瓷工贸有限公司', N'58.33.13.32', CAST(0x0000A95E00E8ABFD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (422, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95E00FB6945 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (423, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95E0108DCC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (424, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95E01091753 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (425, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A95E0116875E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (426, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A95E011EB6C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (427, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A95E0121D117 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (428, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A95E016B4C6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (429, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A95F00D967BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (430, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A95F00DBB5A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (431, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95F00DBD47D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (432, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95F00DEA070 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (433, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95F00DEA273 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (434, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95F00DF861B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (435, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A95F00E4EDF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (436, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A9600097B638 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (437, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96000ADFAA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (438, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96000AF440D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (439, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A96000B58EA2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (440, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A96000B5913F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (441, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A96000B5B479 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (442, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96000B5D76D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (443, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96000B5ED1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (444, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96000B65786 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (445, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000BB5154 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (446, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000BB51B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (447, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000BB5336 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (448, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96000BC55CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (449, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96000BD8C99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (450, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96000BE14B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (451, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96000BE18BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (452, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000BEF0F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (453, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96000C10B4E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (454, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96000C10D01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (455, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96000C13CC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (456, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000C21404 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (457, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000C2EE55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (458, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96000C5C917 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (459, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96000C5CB52 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (460, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96000C5D4C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (461, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96000CD58F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (462, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96000CE178D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (463, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96000CE1A00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (464, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96000CE20EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (465, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A96000D6F884 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (466, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96000D9A5D4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (467, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96000D9A6F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (468, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96000D9E23A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (469, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A96000DD1836 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (470, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96000DFD818 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (471, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A96000E07761 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (472, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A96000EED767 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (473, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96000F22935 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (474, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96000F43201 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (475, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96001018DD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (476, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96001019F57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (477, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9600101DEB4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (478, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96001022473 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (479, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96001050542 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (480, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9600105337D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (481, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96001193211 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (482, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9600119FD72 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (483, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A960011A206F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (484, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A960011C3D49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (485, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A960011D1871 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (486, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A960012114E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (487, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A960012142AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (488, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9600121A5C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (489, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96001260D80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (490, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A960012669F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (491, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A9600134EA75 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (492, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96001372CC9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (493, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96001402400 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (494, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96001423101 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (495, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A960014B1E38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (496, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A960014BB833 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (497, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96100927BCD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (498, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96100927D4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (499, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100951378 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (500, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A961009550CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (501, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9610095B8AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (502, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9610099D39C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (503, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A961009DE0B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (504, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A961009C4233 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (505, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A961009CFB26 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (506, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A961009F20EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (507, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96100A13FBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (508, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A96100A16767 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (509, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96100A1D78F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (510, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96100A25F42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (511, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96100A29A7D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (512, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96100A376AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (513, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96100A52958 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (514, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100A5E89F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (515, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96100A6675D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (516, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96100A694F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (517, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96100A7A3BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (518, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96100A7C574 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (519, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96100A82893 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (520, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96100AA9264 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (521, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96100AAA655 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (522, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96100AAF2FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (523, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96100AB1A38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (524, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96100AB5EE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (525, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96100AC6FD7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (526, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96100AD541A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (527, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96100AF5141 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (528, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100C00B2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (529, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100C04F8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (530, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100C05118 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (531, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100C06997 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (532, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96100C320A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (533, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96100C3339F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (534, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100C3385B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (535, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100C476B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (536, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100C4AAE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (537, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100D01F33 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (538, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100D4A7F3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (539, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100D9CF41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (540, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96100DD35CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (541, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96100DD3712 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (542, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96100DD45EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (543, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100E00115 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (544, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100E00270 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (545, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100E0122D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (546, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96100E02E46 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (547, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96100E13295 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (548, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96100E133EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (549, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96100E13A84 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (550, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100E19767 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (551, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96100E9795D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (552, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96100E998DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (553, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96100EB4EAA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (554, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96100F5FA16 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (555, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9610104B8E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (556, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A961010A13A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (557, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9610119216A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (558, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96101204D7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (559, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A961012334FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (560, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96101268FC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (561, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A961012784E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (562, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A961013E70FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (563, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A9610159D210 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (564, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A961016E8672 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (565, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A9610179D702 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (566, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A962008DB18D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (567, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A962008DF026 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (568, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200940B6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (569, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A9620098C7F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (570, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A962009A4D92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (571, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A962009D4D6B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (572, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A962009D8C95 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (573, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A962009FA2A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (574, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96200A5B16B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (575, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96200A32B93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (576, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96200A3ADCF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (577, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96200A3D0BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (578, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96200A3FA85 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (579, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96200A4B08C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (580, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96200A55BEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (581, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200A96A70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (582, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96200AF30A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (583, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96200B2F7AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (584, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200B2F66D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (585, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96200B34E5C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (586, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96200B6F6CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (587, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96200BA340A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (588, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96200BB20B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (589, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96200C27639 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (590, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96200D2D3E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (591, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D451BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (592, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D4659D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (593, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96200D4D62B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (594, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D4E785 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (595, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96200D5B914 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (596, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200D68D61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (597, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D79DE1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (598, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D7EA9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (599, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D807E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (600, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D818D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (601, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96200D857C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (602, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D8B748 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (603, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96200D8F18B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (604, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D8F271 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (605, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D956D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (606, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D99FF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (607, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200D9EA97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (608, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200DB44C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (609, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200DB7A96 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (610, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200DD090B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (611, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200DF192C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (612, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200E131B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (613, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96200E30301 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (614, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96200E6E8D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (615, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96200EB844E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (616, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96200F1A9AF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (617, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200F37F21 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (618, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96200F41B16 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (619, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96200F4789D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (620, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200F50334 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (621, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200F8E3E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (622, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96200F9D2A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (623, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96200FB1057 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (624, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200FB9A6B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (625, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96200FC1E0B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (626, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96200FDFA87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (627, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96200FF4043 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (628, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9620100FE79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (629, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9620101154A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (630, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96201020A5E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (631, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96201029BA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (632, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9620103198D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (633, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9620105C3C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (634, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A962010614E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (635, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A962010E9F87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (636, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A962010F1A6F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (637, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A962010FF876 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (638, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A962011016A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (639, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A962011189E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (640, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96201137DC4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (641, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9620114CC91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (642, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A962011659BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (643, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A962011711DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (644, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96201173A30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (645, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A962011A242C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (646, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A962011C3A68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (647, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A962011F3B89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (648, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A962011FE799 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (649, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A962012CD0A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (650, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A962014101E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (651, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9620149886F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (652, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A962014AB22F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (653, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A962014B942D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (654, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A962016016ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (655, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201605F02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (656, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201606037 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (657, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201608B11 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (658, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201610081 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (659, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96201617115 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (660, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9620161F6B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (661, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A9620162F8D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (662, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201635B75 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (663, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96201636044 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (664, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A962016775CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (665, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A962017021C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (666, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9620170DAD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (667, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9620172FFA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (668, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9620173DEEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (669, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9620174B6D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (670, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96201756A48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (671, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A962017757AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (672, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A963006ADA72 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (673, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A963008BA7C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (674, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A963008C6BDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (675, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A963008DAF32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (676, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A963008E11B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (677, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96300908DEC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (678, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96300966FA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (679, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300968B5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (680, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9630098C7ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (681, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96300A3FD9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (682, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A96300A404E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (683, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96300A4FF78 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (684, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96300A80AA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (685, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300AC02E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (686, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300AC40CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (687, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96300AC42B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (688, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300AC7A08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (689, N'0102032', N'上海顺初建材有限公司', N'101.231.72.95', CAST(0x0000A96300ADA9CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (690, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300ADC321 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (691, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96300AE5363 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (692, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96300B022D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (693, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96300B084A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (694, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A96300C5A31D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (695, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96300CE0956 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (696, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96300CF7AF3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (697, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96300D2A6E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (698, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300D4DDDA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (699, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96300D9154E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (700, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96300DCE86A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (701, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96300E04E67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (702, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96300E0B279 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (703, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96300E0F1B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (704, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300E48C17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (705, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96300E9D43B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (706, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96300ED853A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (707, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96300F2BB3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (708, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96300F37B2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (709, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96300F81C7C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (710, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96300F87365 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (711, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96300FC2AB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (712, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96300FDE4BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (713, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96300FFCF02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (714, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96301007F0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (715, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A963010AA911 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (716, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A963010AA93B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (717, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A963010AD73F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (718, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A963010ADA4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (719, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A963010BA596 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (720, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A963010D1C64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (721, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A963010ED806 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (722, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9630115746E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (723, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A963011A8EE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (724, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A963011B71FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (725, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A963011B9A0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (726, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A963011D4F5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (727, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9630121D9BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (728, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A963014542E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (729, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96301565924 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (730, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96400756AE9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (731, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A964009178C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (732, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96400951C66 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (733, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9640096B6F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (734, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9640097D85A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (735, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A964009859D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (736, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A964009C682E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (737, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A964009D4AB4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (738, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A964009DB5B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (739, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A964009E5A5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (740, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A964009FBD4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (741, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96400A1974A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (742, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A96400A7A8F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (743, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96400A7D825 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (744, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400A872B7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (745, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96400A937D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (746, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400A9CE97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (747, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400AD6230 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (748, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96400AE9847 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (749, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96400B2D894 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (750, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96400B4DF62 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (751, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400B508CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (752, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96400B63A0D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (753, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96400BB0EED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (754, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96400BB9567 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (755, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96400C0DB6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (756, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A96400C65055 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (757, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A96400C6D186 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (758, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A96400C7233E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (759, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96400CD89DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (760, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96400CDAA92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (761, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400D22329 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (762, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96400D88E44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (763, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96400D8CFB2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (764, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96400D90315 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (765, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96400DBCA4C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (766, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96400E02CA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (767, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96400E0BD19 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (768, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96400E367FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (769, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96400E5B25E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (770, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96400E70A4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (771, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96400ECC33F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (772, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96400F119F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (773, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96400F2DCE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (774, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96400F5A1F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (775, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96400F5E7CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (776, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96400F90BE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (777, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96401032D0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (778, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9640112A5CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (779, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96401134CF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (780, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A9640113F0B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (781, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96401141AF9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (782, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A9640114DCC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (783, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A964011545DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (784, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96401157A69 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (785, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96401178044 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (786, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9640118ABA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (787, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A964011B6B36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (788, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A964011D05AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (789, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A964011D2CC9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (790, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A964011E71CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (791, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A964014619FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (792, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96401589D65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (793, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A965008506BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (794, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A965008A7A56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (795, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A965009B4335 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (796, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A965009CEBA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (797, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96500A16302 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (798, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96500A5C5DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (799, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96500A650F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (800, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96500A9B32C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (801, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96500AA47B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (802, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96500AF084E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (803, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A96500B56D52 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (804, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96500B6BC2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (805, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96500BA927D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (806, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96500BB86BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (807, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96500BECC98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (808, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96500D1963C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (809, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96500D1F126 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (810, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96500DD4CDC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (811, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96500ECF21B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (812, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96500EF0D42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (813, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96500F1D2F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (814, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96500F25C9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (815, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96500F320B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (816, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96500F4C9B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (817, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96500F77ED1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (818, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A965011A352F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (819, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A965011D49E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (820, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A965011E804F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (821, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9650123B7D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (822, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A965012406CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (823, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A965012E742A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (824, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96501608924 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (825, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A965016235BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (826, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A966008B089B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (827, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A966009175A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (828, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9660091B629 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (829, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9660091E6A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (830, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A9660091EE2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (831, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A966009349C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (832, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96600943CEF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (833, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A9660094EDAE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (834, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A966009506A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (835, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A966009600A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (836, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A966009650C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (837, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9660097323D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (838, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96600984D57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (839, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9660098A8C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (840, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96600996523 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (841, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A966009A277C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (842, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A966009B2224 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (843, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A966009CA2C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (844, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A966009DD16D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (845, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A966009EF912 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (846, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A96600A14D5E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (847, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600A24E59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (848, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96600A3AAD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (849, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96600A40AA3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (850, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96600A61502 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (851, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600A86AF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (852, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600A89697 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (853, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600A94ACA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (854, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600AA688F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (855, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96600AAD977 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (856, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96600ABEEC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (857, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96600AC1CE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (858, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96600AD737D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (859, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96600ADB1C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (860, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96600ADC30D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (861, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600B00A7A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (862, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96600B0FD5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (863, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96600B12962 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (864, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96600B18E89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (865, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96600B1F1BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (866, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96600B225C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (867, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96600B27455 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (868, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96600B28495 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (869, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A96600B53CCF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (870, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96600B79B6B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (871, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96600BAE152 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (872, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A96600BCD303 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (873, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96600C4057D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (874, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600D30B53 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (875, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96600D7B81B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (876, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96600D9D578 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (877, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96600DABD92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (878, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96600DB204A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (879, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600DFB2A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (880, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96600E69CB9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (881, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96600E771A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (882, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96600EF7E83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (883, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96600F563F1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (884, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96600FBB6D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (885, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96600FC6556 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (886, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9660100FC62 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (887, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A966010190AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (888, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A966010A05BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (889, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A966010BAE1E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (890, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A966010E2E41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (891, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A966010F518C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (892, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96601105811 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (893, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A96601107D03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (894, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A966011091B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (895, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A966011225C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (896, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9660114B002 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (897, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96601161A61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (898, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A966011A4AAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (899, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A966011C0201 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (900, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A966011D1F93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (901, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A966012C766E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (902, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A966012CDA60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (903, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A966012D0EFD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (904, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A966012FA9A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (905, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96601308585 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (906, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A966013722C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (907, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96601390FBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (908, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A966014ED638 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (909, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9660151214E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (910, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9660151A1D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (911, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A967005DD30A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (912, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A967005E19C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (913, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A967008A5886 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (914, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96700963FA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (915, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700965250 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (916, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9670097D744 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (917, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700980AD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (918, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A967009869C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (919, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A967009A86CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (920, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A967009A959D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (921, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A967009B7CC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (922, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A967009BA17D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (923, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A967009DD77B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (924, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A967009DDA88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (925, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A967009DDB2C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (926, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A967009DEBA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (927, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A967009E7228 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (928, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A967009EE2FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (929, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96700A176B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (930, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700A31793 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (931, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96700A5F2A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (932, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A96700A669A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (933, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96700A75645 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (934, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700A93A1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (935, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96700AA2AC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (936, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700AA3E97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (937, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96700AA8CBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (938, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96700AB1313 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (939, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96700ABEB99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (940, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700AC13F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (941, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96700ACAAD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (942, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96700B1F9A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (943, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96700B26DB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (944, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96700B2D993 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (945, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96700B3DBF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (946, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700B88364 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (947, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A96700BC615C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (948, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BCDD37 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (949, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BD930A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (950, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BDAA39 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (951, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BDD190 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (952, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BDEEF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (953, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96700BE7181 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (954, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700BFE015 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (955, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700BFF2BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (956, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700C024D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (957, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700C13C57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (958, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700C1590F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (959, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96700C238A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (960, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96700C258A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (961, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700C6B64C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (962, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700C6DC3F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (963, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700C71362 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (964, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700CB2AB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (965, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96700CBBCA8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (966, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96700CBF1BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (967, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96700CE1B44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (968, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96700CE6A97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (969, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96700CE905C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (970, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700CF7ADF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (971, N'0102016', N'上海华耐陶瓷工贸有限公司', N'58.33.13.32', CAST(0x0000A96700D2C687 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (972, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700D29375 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (973, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A96700D37106 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (974, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700D3BC74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (975, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700D3BDA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (976, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700D3CBFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (977, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96700DA6F75 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (978, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96700DB516A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (979, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96700DFE5C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (980, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700E0D8D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (981, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700E2AF00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (982, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96700E38AF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (983, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96700E62DAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (984, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96700E92187 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (985, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96700F44C01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (986, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96700F9FE49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (987, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96700FCB172 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (988, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A9670103F246 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (989, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A967010D67C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (990, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A967010D7938 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (991, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A967010E53D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (992, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A967010EB57C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (993, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A967010FB120 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (994, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9670117F499 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (995, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96701180F79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (996, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A967011889E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (997, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9670119CDD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (998, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9670119FFC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (999, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A967011A2D1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1000, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A967011A6283 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1001, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A967011ABA47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1002, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A967011B986A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1003, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A967011C8422 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1004, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9670121FEDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1005, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9670123A653 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1006, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9670124491A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1007, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9670126858F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1008, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96701289FF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1009, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A967012A4C96 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1010, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A967013688F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1011, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A967013D2E49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1012, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A967014221C8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1013, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96701430A02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1014, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96701496045 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1015, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9670149BD32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1016, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A967014B0FD1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1017, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96701512F67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1018, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9670184C068 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1019, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A968008F91FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1020, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A968009543EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1021, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A968009550AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1022, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9680095900F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1023, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800961833 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1024, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A968009717C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1025, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800979DCB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1026, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800982044 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1027, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A968009927D4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1028, N'004222', N'倪骏', N'101.231.72.95', CAST(0x0000A968009A7A32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1029, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A968009B5839 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1030, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A968009F5DD8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1031, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96800A1EF2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1032, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96800A45CF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1033, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96800A764AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1034, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96800A4CA90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1035, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96800A58E10 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1036, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800A914CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1037, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96800A9E7DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1038, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96800B1A617 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1039, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96800B6B68B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1040, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96800B76CB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1041, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96800B936A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1042, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800B9B997 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1043, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96800BA8952 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1044, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96800BB9C4A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1045, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96800BC1CDD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1046, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96800BEB4A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1047, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96800C22B68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1048, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96800C3C32C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1049, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96800C55DB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1050, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800C87FA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1051, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96800CE7DDD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1052, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96800D0CAD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1053, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800D4CD82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1054, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800D5693F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1055, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96800D9D980 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1056, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96800E19F58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1057, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800E1BFD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1058, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96800E20F7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1059, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96800E2E7DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1060, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96800E4C43B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1061, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96800E9BA03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1062, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96800E9FAA3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1063, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96800EA807A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1064, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96800EF0311 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1065, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96800F15D82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1066, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96800F1EACE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1067, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A96800F3FCAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1068, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96800F53A37 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1069, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800FC5187 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1070, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800FCBBC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1071, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800FD0B9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1072, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96800FD47D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1073, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96800FDF026 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1074, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96800FE8BFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1075, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96800FF072C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1076, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9680103A847 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1077, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A968010CE473 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1078, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A968010D6B00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1079, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A968010DF272 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1080, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96801125DED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1081, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9680116FDC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1082, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9680117F196 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1083, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A968011A061F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1084, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A968011E7FFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1085, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A968011EA0D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1086, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A968011FEE6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1087, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A968012A7083 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1088, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9680135214B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1089, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96801406CB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1090, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A968014D88B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1091, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A96801821821 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1092, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A969008A40AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1093, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A969008E4136 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1094, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96900909F83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1095, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A9690095AAAA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1096, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A969009619FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1097, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A969009905B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1098, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A969009BD57D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1099, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A969009E2BF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1100, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A969009FA9E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1101, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96900A04828 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1102, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96900A26929 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1103, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96900A59CEE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1104, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96900A5EAA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1105, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96900A76203 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1106, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96900A8B809 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1107, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96900A96719 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1108, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96900AB1583 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1109, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96900AD7389 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1110, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96900AF1897 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1111, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A96900AFE797 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1112, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A96900B0690A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1113, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A96900B54994 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1114, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96900BC49C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1115, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96900BEBEEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1116, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96900C2064D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1117, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96900C5DBB2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1118, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96900CCDA83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1119, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96900CF3F48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1120, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96900D647A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1121, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96900D9B7F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1122, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96900DC509C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1123, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A96900DDAFB8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1124, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96900E21D86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1125, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96900EB64C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1126, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96900EE4E1F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1127, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96900F1729C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1128, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96900FA1688 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1129, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96900FDE17D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1130, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96900FDE7D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1131, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96901045E14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1132, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96901046029 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1133, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9690105A5A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1134, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9690105BF17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1135, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96901061552 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1136, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A969010642C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1137, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9690107230B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1138, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9690107232C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1139, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96901133348 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1140, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96901151E4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1141, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9690116D618 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1142, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96901195DD6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1143, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A969011CA41B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1144, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A969011CB368 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1145, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A969011DA77B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1146, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A969012AC5CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1147, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A969013EEEA1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1148, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A969015199D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1149, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A969015601CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1150, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A9690159F52E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1151, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96A0089FA32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1152, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96A0089FA2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1153, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96A008A05A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1154, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96A008C3A0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1155, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96A009271BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1156, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A96A009311BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1157, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96A0093C4B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1158, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96A0093D325 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1159, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96A0093E3B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1160, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96A00941AC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1161, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96A00951DC3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1162, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A96A0095FAA8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1163, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96A00970043 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1164, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A96A009916D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1165, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96A009A2871 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1166, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A96A009C32F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1167, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96A009DA024 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1168, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96A00A045D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1169, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96A00A2ED54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1170, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96A00A4D3F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1171, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96A00A4D56B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1172, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96A00A4E966 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1173, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96A00A7228D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1174, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96A00AA0147 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1175, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96A00AA5167 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1176, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A96A00ADF9D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1177, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96A00AE282B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1178, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96A00B04F1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1179, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A96A00B1BBBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1180, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96A00B6A877 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1181, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96A00B91365 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1182, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96A00BAF2B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1183, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96A00C0D043 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1184, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96A00CA094F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1185, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96A00CD1ED2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1186, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96A00D59F22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1187, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96A00DBEAE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1188, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96A00DEA307 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1189, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96A00DDE42A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1190, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96A00E3FBFA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1191, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96A00E7B890 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1192, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A96A00EE3431 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1193, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96A00EF9A82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1194, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96A00F74CB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1195, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A96A00FB82EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1196, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96A00FF0D34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1197, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96A010003A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1198, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96A01031B24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1199, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96A01086044 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1200, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96A010DE3B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1201, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96A010D1E61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1202, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96A010D7C25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1203, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96A010FB607 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1204, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A96A011178F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1205, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96A0112D869 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1206, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96A01160479 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1207, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96A01147242 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1208, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96A011E1D12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1209, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96A01213022 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1210, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96A01223E42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1211, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96A01334F8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1212, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96A01423B23 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1213, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96A014A8F9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1214, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96A014F8D38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1215, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96A01548203 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1216, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96A0156C2C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1217, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96A0164FADD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1218, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96B008013C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1219, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96B00805267 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1220, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96B0093263F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1221, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96B0093E39F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1222, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96B009540FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1223, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96B0095A747 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1224, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96B0097D6AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1225, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A96B009933B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1226, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96B009997B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1227, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96B0099ED99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1228, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96B0099EF39 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1229, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96B009A06C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1230, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96B009DF7CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1231, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96B009E3A91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1232, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96B00A19EFC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1233, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96B00A42197 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1234, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96B00AD1EB5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1235, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96B00B04A12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1236, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A96B00B0A2DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1237, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96B00B0D438 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1238, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96B00B2ABD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1239, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96B00B2E522 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1240, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96B00B39247 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1241, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A96B00B3DAAC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1242, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96B00B97563 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1243, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96B00C21675 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1244, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96B00C2C94E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1245, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96B00C2F019 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1246, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A96B00DD79B7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1247, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96B00E2088E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1248, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A96B00E4730C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1249, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96B00E5BF91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1250, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96B00EA48DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1251, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96B00EE0AA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1252, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96B00EFE1A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1253, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96B00FBA48D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1254, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96B00FCF2C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1255, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96B0103B927 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1256, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96B0106C047 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1257, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96B0106EB67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1258, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96B01115444 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1259, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96B01139B4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1260, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A96B01140549 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1261, N'admin', N'超级管理员', N'58.33.13.32', CAST(0x0000A96B011793B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1262, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A96B0119819E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1263, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96B011B3DA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1264, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96B011EFE84 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1265, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96B013380F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1266, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96B01357D6E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1267, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96B01564048 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1268, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96B015AA7D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1269, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96B015DC1B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1270, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96B01610F89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1271, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96B016190E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1272, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A96C008A9087 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1273, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96C008C91A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1274, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96C0094FEA8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1275, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96C009E5DE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1276, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96C00A8021A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1277, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96C00B55B91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1278, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96C00B81901 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1279, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96C00B8F0B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1280, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96C00B948FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1281, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96C00C2EE54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1282, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96C00C56EA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1283, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A96C00D9FEA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1284, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A96C00DA75A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1285, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96C00DB16DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1286, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96C00E735EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1287, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96C00E978B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1288, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96C00E9FF36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1289, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96C00EBA072 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1290, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96C00F913E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1291, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96C010B6610 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1292, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96C0110E916 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1293, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96C011169C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1294, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96C011234A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1295, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96C01124F12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1296, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96C0116C7CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1297, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96C011A37A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1298, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96C011AA3AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1299, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96C011AFB4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1300, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96C01343E30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1301, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96C015CB07D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1302, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A96D00869CD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1303, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96D0093CE59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1304, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A96D00947FA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1305, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96D0099251D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1306, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96D009AADA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1307, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96D009DE028 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1308, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A96D009E9DC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1309, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96D00A3B03C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1310, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96D00A88C6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1311, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96D00A93617 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1312, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96D00AC43D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1313, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96D00AED083 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1314, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96D00B2D52F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1315, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96D00B983C8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1316, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96D00EFC12A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1317, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00F43372 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1318, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00F484C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1319, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96D00F606A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1320, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00F6BD17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1321, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00F6EB0D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1322, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00F89BF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1323, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A96D00FAE510 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1324, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A96D00FC299C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1325, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96D00FC604A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1326, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96D010C1887 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1327, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96D0112C9A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1328, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96D0117A6BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1329, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96D0118B5BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1330, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A96D011AF177 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1331, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A96D0122F8BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1332, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96D0130F200 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1333, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96D0139FE05 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1334, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96D013A96F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1335, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A96E008C2075 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1336, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96E00977E74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1337, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96E0098052B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1338, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96E009827C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1339, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96E00A4E678 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1340, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A96E00A65E39 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1341, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A96E00AEC9D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1342, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96E00AFE369 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1343, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96E00B92A7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1344, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96E00BC67A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1345, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96E00BC69EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1346, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96E00BF75E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1347, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96E00C369E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1348, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A96E00C5CD22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1349, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96E00CD9C77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1350, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A96E00D626D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1351, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96E00E6CE23 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1352, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96E00E93C29 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1353, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96E00E9C448 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1354, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96E00F696C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1355, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96E00F83005 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1356, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E00FE5EB4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1357, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E00FF316F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1358, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96E00FF72C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1359, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E0100C20D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1360, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E0100EBCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1361, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E01020998 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1362, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E0102B4D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1363, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E01033210 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1364, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96E01033A45 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1365, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A96E010D40B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1366, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96E0111D68C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1367, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A96E0117E2C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1368, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A96E011D7DA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1369, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96E012076FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1370, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96E0136F93C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1371, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96E01730A35 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1372, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96E01791086 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1373, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96F0091AAB9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1374, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96F0091AAC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1375, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A96F0091E7BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1376, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A96F00946F5C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1377, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96F00969867 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1378, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A96F0097A300 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1379, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A96F009D41CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1380, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96F00AE78BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1381, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A96F00C17220 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1382, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A96F00DBA7F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1383, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96F00E3E173 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1384, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A96F00E4870F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1385, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96F00E4B416 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1386, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A96F00F6E0B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1387, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A96F00F7AFDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1388, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A96F00F9AD97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1389, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96F00FCA845 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1390, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96F00FCAA64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1391, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96F00FE27F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1392, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A96F0102D136 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1393, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96F010A6677 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1394, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A96F010AB854 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1395, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A96F0112BE60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1396, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A96F0113B228 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1397, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96F01447162 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1398, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A96F0144C601 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1399, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A96F014EA986 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1400, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A970009171B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1401, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97000917938 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1402, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97000932773 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1403, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97000952EEF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1404, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A970009D5999 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1405, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97000A21FA5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1406, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97000A269A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1407, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97000A28F2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1408, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97000A2D99B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1409, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97000A3E394 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1410, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97000A49B6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1411, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97000A6324D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1412, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97000A77607 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1413, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97000B68B24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1414, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97000CA6D67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1415, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97000E50425 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1416, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97000F84DEB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1417, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97000FAE0DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1418, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97000FCBD47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1419, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97000FCBD47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1420, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A970010DCF58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1421, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9700115B3B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1422, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A970011B4997 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1423, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97001513837 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1424, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97001560E7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1425, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97100947A80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1426, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9710096CE99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1427, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97100970CDD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1428, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97100970E41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1429, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A971009B6E21 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1430, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A971009F05B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1431, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97100A56B7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1432, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97100A6CB7C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1433, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97100B356AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1434, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97100B6CC77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1435, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A97100BE643E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1436, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97100C4849C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1437, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97100CB45B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1438, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97100CF31C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1439, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97100D0A7BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1440, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97100D44F0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1441, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97100D4FAA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1442, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97100DAD689 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1443, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97100DC5AA5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1444, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97100DC6EF0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1445, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97100E27883 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1446, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97100F13C9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1447, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97100FD7690 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1448, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97101036345 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1449, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A971010394AF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1450, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A971010FE8DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1451, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A971011992EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1452, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A971011BC013 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1453, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A971011C0ED9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1454, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A971011DF17E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1455, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97101217E09 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1456, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97101244C74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1457, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97101278F3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1458, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A971013AB122 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1459, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9710162AABD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1460, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A9720088C258 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1461, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A972008D06E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1462, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97200930DA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1463, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A972009329BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1464, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9720094784A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1465, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9720097EE00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1466, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9720099C1A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1467, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A972009AD4D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1468, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A972009C2C2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1469, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A972009C7AF0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1470, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A972009E72E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1471, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97200A1BCCA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1472, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97200A36AF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1473, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97200A39232 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1474, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A97200A7957A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1475, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97200A7F899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1476, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97200A826C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1477, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97200AC9C5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1478, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97200B0D305 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1479, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97200B18EF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1480, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97200B3AD2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1481, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97200B45A19 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1482, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97200B9F258 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1483, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97200BCA5FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1484, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97200BEDEB1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1485, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97200C41704 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1486, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97200C64749 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1487, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97200CD137B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1488, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97200CE7BF3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1489, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97200D0A165 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1490, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97200DBD295 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1491, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97200DD0983 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1492, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97200E5D2D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1493, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97200E65C1D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1494, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97200EABD44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1495, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97200F39073 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1496, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97200F3CA05 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1497, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97200FA5E58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1498, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97200FB9B04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1499, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97201088BFC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1500, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97201139216 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1501, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A972011393A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1502, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97201142532 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1503, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97201160243 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1504, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97201187905 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1505, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97201453B46 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1506, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A972014667C8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1507, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A9730089A8A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1508, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A973008A1CF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1509, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97300902209 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1510, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9730094084E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1511, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A973009409D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1512, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300940BB9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1513, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300943D64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1514, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300943E11 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1515, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A973009441B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1516, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300945638 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1517, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9730094B1B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1518, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9730094F2B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1519, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9730094F536 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1520, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A9730095BC1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1521, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9730098345E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1522, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A9730099F4D4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1523, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A973009A12F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1524, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97300A18C25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1525, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97300A1B867 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1526, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97300A2834A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1527, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97300A3F7DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1528, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300A81CA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1529, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300A820AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1530, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300A84853 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1531, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97300A8E8C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1532, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97300AB27EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1533, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97300AB6514 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1534, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97300ACAF2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1535, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97300AE24E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1536, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97300B0D48A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1537, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97300B503CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1538, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97300B74ED1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1539, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97300BA0730 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1540, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97300BF667D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1541, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97300BF7078 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1542, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97300BF763F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1543, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97300C0D60D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1544, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97300C33F44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1545, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97300C8E08B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1546, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97300D09D3A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1547, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97300D1508D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1548, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97300D38685 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1549, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97300D5770A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1550, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97300DC7647 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1551, N'005030', N'姚佳琳', N'101.231.72.95', CAST(0x0000A97300DF7E89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1552, N'admin', N'超级管理员', N'61.171.201.200', CAST(0x0000A97300E5D225 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1553, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97300E4CE01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1554, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97300E5C1F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1555, N'005030', N'姚佳琳', N'101.231.72.95', CAST(0x0000A97300E5D984 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1556, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97300E629A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1557, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97300E931C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1558, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97300EA9C54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1559, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97300EACEEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1560, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97300EB43E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1561, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97300ED0A5E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1562, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300ED4B4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1563, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300ED4BB0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1564, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97300ED5BBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1565, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97300F24AB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1566, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97300F28D9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1567, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97300F52302 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1568, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97300F53449 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1569, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97300F5614C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1570, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97300F58E41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1571, N'0102016', N'上海华耐陶瓷工贸有限公司', N'61.171.201.200', CAST(0x0000A97300F8B39C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1572, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97300F6910D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1573, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97300F69740 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1574, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97300F75F22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1575, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97300F8605A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1576, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97300FAE775 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1577, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300FB579F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1578, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300FB5A12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1579, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97300FB6C3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1580, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97300FBC7E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1581, N'admin', N'超级管理员', N'61.171.201.200', CAST(0x0000A97300FEB322 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1582, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97300FFD15B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1583, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9730101807C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1584, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A9730101BF77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1585, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A973010628A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1586, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A973010DCE83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1587, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A973010FD62C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1588, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9730111F843 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1589, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9730111F89C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1590, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97301126DFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1591, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97301160A0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1592, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9730118271F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1593, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97301185593 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1594, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9730119C244 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1595, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A9730119D1A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1596, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A973011B48C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1597, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A973011BD6FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1598, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A973011CECA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1599, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A973012310FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1600, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97301258B8B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1601, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A973012A25DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1602, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97301523DE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1603, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A974006B9CB1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1604, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A974008D5897 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1605, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97400939370 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1606, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A974009830A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1607, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A974009891E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1608, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97400989E7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1609, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A974009B822B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1610, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A974009BB09F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1611, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A974009D1470 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1612, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A974009D67F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1613, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A974009E11FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1614, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A974009E9FEC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1615, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A974009EB190 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1616, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A974009F4020 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1617, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A974009FE1F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1618, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97400A0327C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1619, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97400A17AB6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1620, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97400A462EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1621, N'0102016', N'上海华耐陶瓷工贸有限公司', N'61.171.201.200', CAST(0x0000A97400A93EC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1622, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97400A93229 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1623, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97400AE1B13 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1624, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97400AE8525 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1625, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97400AEBA6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1626, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97400AFDD8C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1627, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97400B00112 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1628, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97400B182E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1629, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97400B284E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1630, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97400B2CA95 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1631, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97400B3C8B7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1632, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97400B4E6B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1633, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97400B523A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1634, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97400B5BFC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1635, N'0104036', N'上海拓桓木业制品有限公司', N'61.171.201.200', CAST(0x0000A97400B8DE19 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1636, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97400B65A38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1637, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97400B66F5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1638, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97400B68F04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1639, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97400B743AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1640, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97400B76786 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1641, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97400B7815B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1642, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97400B7A49F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1643, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97400BA33DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1644, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97400BA72CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1645, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97400BB1994 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1646, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A97400BB779A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1647, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97400BBE76E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1648, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97400BDF328 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1649, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97400C05D6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1650, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97400C100AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1651, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97400C22EE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1652, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97400C2D30F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1653, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97400C38B80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1654, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97400CC5DC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1655, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97400D98A7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1656, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97400E38A55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1657, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97400E69837 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1658, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97400EA51E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1659, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97400EBE570 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1660, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97400F057AF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1661, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97400F0AA97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1662, N'002838', N'方巍巍', N'101.231.72.95', CAST(0x0000A97400F0D4DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1663, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97400F1468C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1664, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97400F1F9C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1665, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97400F21120 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1666, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97400F681F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1667, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97400F6FD0D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1668, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97400F702B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1669, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97400F99E06 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1670, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97400FA2507 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1671, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97400FB46AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1672, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97400FDE899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1673, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97400FEE73D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1674, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97400FFF91C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1675, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A9740102543A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1676, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A974010303CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1677, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9740106A292 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1678, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9740108E4C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1679, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A9740109A51C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1680, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A974010D606A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1681, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A974010E20A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1682, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A974010E68B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1683, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97401112C36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1684, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A97401122040 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1685, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97401128B9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1686, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A974011375E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1687, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9740118627A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1688, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A974011863F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1689, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9740118C220 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1690, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9740118C2DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1691, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9740118DAEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1692, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A974011C655A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1693, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A974011D0F7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1694, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A974011FC2BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1695, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A974012FE100 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1696, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A974013CDEF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1697, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9740143402E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1698, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9740149D06A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1699, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A974015F96CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1700, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A9740162BF0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1701, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A974016ECE77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1702, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A975008968A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1703, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A975008DFEE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1704, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A975008E884F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1705, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A975008EC88D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1706, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97500913C38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1707, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A9750093BE88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1708, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97500948208 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1709, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9750095B557 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1710, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9750095B706 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1711, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A9750095CF93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1712, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A975009643C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1713, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A975009720D4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1714, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9750097DA2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1715, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A9750099A0D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1716, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A975009AEE40 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1717, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A975009B934C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1718, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A975009BC89A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1719, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A975009CCC79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1720, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A975009D959A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1721, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A975009F0EF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1722, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A975009F629F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1723, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A975009F964D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1724, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97500A325BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1725, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97500A47691 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1726, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97500A7120D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1727, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97500A91583 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1728, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97500AE2BE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1729, N'002552', N'洪萍', N'101.231.72.95', CAST(0x0000A97500B1AC75 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1730, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97500B60EED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1731, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97500B62278 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1732, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97500B89725 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1733, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A97500BD5753 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1734, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97500BEA419 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1735, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97500C4B799 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1736, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97500D10EC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1737, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97500D61615 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1738, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97500D944A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1739, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97500D9C946 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1740, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97500D9C979 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1741, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97500DA2510 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1742, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97500E06DDF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1743, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97500E1BF6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1744, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97500E21806 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1745, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97500E2F598 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1746, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97500E5ADE9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1747, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97500E66371 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1748, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97500E75A39 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1749, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97500E9D24C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1750, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97500EDE931 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1751, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97500EF6C51 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1752, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97500F017DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1753, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97500F0960C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1754, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97500F0DBB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1755, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97500F1F414 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1756, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97500F55786 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1757, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97500F6EB49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1758, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97500FA704C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1759, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97500FDFC2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1760, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9750100F4B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1761, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A9750101EF10 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1762, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A975010A7F4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1763, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A975010BF82B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1764, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97501167743 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1765, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9750119C877 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1766, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A975011CE3B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1767, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A9750121C1D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1768, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97501252C79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1769, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97501295180 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1770, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9750135568D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1771, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97600211CE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1772, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A9760070EECA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1773, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A976008DFC2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1774, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A976008F635B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1775, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A976008F93BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1776, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97600927E93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1777, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A976009367C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1778, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97600958E70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1779, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9760095E7DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1780, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A9760095F878 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1781, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97600966D16 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1782, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9760097768C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1783, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A9760098F20D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1784, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97600997B1B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1785, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A976009B32B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1786, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A976009BACFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1787, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A976009C124B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1788, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A976009C1E78 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1789, N'000550', N'项黎杰', N'101.231.72.95', CAST(0x0000A976009C7B1E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1790, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A976009D9F4A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1791, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A976009F73BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1792, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97600A1EEF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1793, N'003592', N'纪晶晶', N'101.231.72.95', CAST(0x0000A97600A30658 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1794, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A97600A30B06 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1795, N'003592', N'纪晶晶', N'101.231.72.95', CAST(0x0000A97600A38828 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1796, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97600A435C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1797, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97600A62991 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1798, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600A7B6D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1799, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600A7E4C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1800, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600A9ACDC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1801, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A97600AA9975 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1802, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97600AB7857 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1803, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97600ABB44E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1804, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97600AC3CA1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1805, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600ACEE7D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1806, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600ADD933 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1807, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600AE4DF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1808, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600AE6194 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1809, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97600AF60A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1810, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600AF8CE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1811, N'004260', N'成丹', N'61.171.210.130', CAST(0x0000A97600B2E546 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1812, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97600B23967 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1813, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600B545DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1814, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600B2D67A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1815, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600B31744 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1816, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97600B6343D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1817, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97600BEB528 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1818, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97600C318C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1819, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97600C4361C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1820, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97600C4F087 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1821, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97600C574CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1822, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97600C7665A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1823, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600C84CCA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1824, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600CBF452 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1825, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97600C9F9A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1826, N'0105002', N'上海雄雄木业有限公司', N'101.231.72.95', CAST(0x0000A97600CBE780 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1827, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600CE03E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1828, N'0105002', N'上海雄雄木业有限公司', N'101.231.72.95', CAST(0x0000A97600CEB0D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1829, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600D442B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1830, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600D2033E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1831, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600D698B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1832, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97600D46136 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1833, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97600D544A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1834, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97600D5B155 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1835, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600D867F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1836, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97600D6F906 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1837, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97600DA2A73 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1838, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97600D7F371 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1839, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97600DA0899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1840, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A97600DAAAE1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1841, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97600DDFFBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1842, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A97600E56ADF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1843, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97600E5F061 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1844, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A97600E629B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1845, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A97600E844CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1846, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97600EA7DF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1847, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97600F12BFD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1848, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97600F2893C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1849, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97600F2C1D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1850, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97600F325AF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1851, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97600F369B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1852, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97600F430C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1853, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97600F55ECD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1854, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97600F99C6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1855, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97600F71711 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1856, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97600F867F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1857, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97600F91D6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1858, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A976010062D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1859, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9760102CC9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1860, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9760102CCD0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1861, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9760104189A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1862, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9760106FC68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1863, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97601094637 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1864, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A9760109E805 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1865, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A976010A89F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1866, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97601128081 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1867, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97601186B41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1868, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A976011AE33D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1869, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A976011B5A49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1870, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A976011BD471 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1871, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A976011BF525 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1872, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A976011F208F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1873, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A976011FA666 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1874, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97601213CE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1875, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A9760127FC76 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1876, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9760129BFFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1877, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A976012DA90F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1878, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A976015BA27E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1879, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A977007FF30E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1880, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A977008771C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1881, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A977008E67A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1882, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A977008EC2BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1883, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A977009283D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1884, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700930689 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1885, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9770093318D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1886, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A977009574DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1887, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97700968DFA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1888, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A9770096BD37 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1889, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9770096CAD1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1890, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A977009715D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1891, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97700975839 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1892, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9770097FA16 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1893, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A9770098AD7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1894, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A977009BDF5E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1895, N'004260', N'成丹', N'61.171.210.130', CAST(0x0000A977009C0F5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1896, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A977009C9BAE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1897, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A977009E1F89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1898, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97700A0F96F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1899, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A977009E6608 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1900, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A977009E9FDF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1901, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97700A130F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1902, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97700A140E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1903, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A97700A2C47A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1904, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97700A51FCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1905, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97700A8712C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1906, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97700A8D78F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1907, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700A6BE5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1908, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97700AA7478 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1909, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97700AC5385 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1910, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97700AA3264 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1911, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97700AABB43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1912, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700AC9B2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1913, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97700AD4D89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1914, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97700AE4D70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1915, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700AFF803 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1916, N'000103', N'刘瑞怡', N'101.231.72.95', CAST(0x0000A97700B0142F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1917, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700B048FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1918, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700B19685 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1919, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700B32F70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1920, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A97700B36867 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1921, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A97700B389BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1922, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97700B3A81C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1923, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A97700B4982E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1924, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A97700B4F115 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1925, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97700B5D524 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1926, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97700B5F1FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1927, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A97700B615FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1928, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97700B63C86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1929, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A97700B65799 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1930, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97700B67AAE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1931, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97700B7B640 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1932, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97700BC5FC3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1933, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97700BE5692 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1934, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97700C3398F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1935, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A97700C3E5E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1936, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97700C5B03A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1937, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97700C70770 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1938, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97700C75F69 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1939, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97700C83D4F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1940, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97700CC165B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1941, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97700D1D64B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1942, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97700D4C667 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1943, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A97700D59F25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1944, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700D92EF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1945, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97700DF3A74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1946, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97700E28DC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1947, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97700E3982C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1948, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97700E50456 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1949, N'0113075', N'上海贯珂电器科技有限公司', N'61.171.210.130', CAST(0x0000A97700E88D59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1950, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97700E8DE97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1951, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97700EFC68A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1952, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97700F820FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1953, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97700F98327 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1954, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97700FBD5C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1955, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97700FCDFD6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1956, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97700FD10CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1957, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97700FD557F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1958, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A977010866BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1959, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A977010899A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1960, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A977010B6765 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1961, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A9770113AB96 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1962, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A977011593D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1963, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9770116C667 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1964, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A9770117F81A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1965, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A97701194960 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1966, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A977011A4639 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1967, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A977011BE01B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1968, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A977011E715B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1969, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A977011E9024 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1970, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A9770123B4F1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1971, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A977012476E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1972, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97701270831 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1973, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A977012847C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1974, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97701286027 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1975, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A977012B22BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1976, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A977014E0F51 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1977, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97701539FD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1978, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97701549B08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1979, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9770158B254 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1980, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97701626FCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1981, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97800786961 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1982, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9780095220E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1983, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A97800992704 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1984, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A978009A08E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1985, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A978009B5E86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1986, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A978009B921D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1987, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A978009C3EF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1988, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A978009F1235 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1989, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A978009F1CF9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1990, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A978009FBE24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1991, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97800A28C8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1992, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97800A8312F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1993, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97800A85160 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1994, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97800A8948F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1995, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97800AA98FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1996, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97800ABC00C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1997, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97800B0638C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1998, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97800B56A59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (1999, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97800BEB9A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2000, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97800BFDAE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2001, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97800C12375 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2002, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97800C24675 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2003, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97800C6F517 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2004, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97800CC42E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2005, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97800CCC3A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2006, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97800D13A2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2007, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97800D72D89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2008, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97800D89B25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2009, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97800DA8114 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2010, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97800DE352A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2011, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97800E01AFD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2012, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97800E67380 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2013, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97800E84C2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2014, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97800EFFF45 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2015, N'0101032', N'深圳创维-RGB电子有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97800FDC532 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2016, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97800FE4214 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2017, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A9780100E48C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2018, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9780102EFA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2019, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9780108DBCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2020, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9780112989F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2021, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A9780113CB3C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2022, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A978011538A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2023, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A9780115BF49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2024, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A978011E08D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2025, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A978013DABBA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2026, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9780156E1CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2027, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9780156F8DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2028, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A979008F277F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2029, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A979008F6EB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2030, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9790093282E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2031, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9790094D5CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2032, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A979009CBB2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2033, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A979009E6208 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2034, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97900A09DAC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2035, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97900A0BEF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2036, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97900A129B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2037, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97900A1C3BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2038, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97900A249E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2039, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97900A2A31F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2040, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97900A6F594 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2041, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97900AB83A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2042, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97900ABFA6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2043, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97900AFE316 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2044, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97900BABBE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2045, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97900BE9C2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2046, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97900C3409F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2047, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97900C7526B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2048, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97900C88A39 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2049, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97900C8C8EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2050, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97900CA1ACD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2051, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97900CAB400 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2052, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97900CB6246 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2053, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97900CB74FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2054, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97900CB912F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2055, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97900CBA065 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2056, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97900CCDD15 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2057, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97900D99108 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2058, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97900DBBCC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2059, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97900DBE254 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2060, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97900DD1A93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2061, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97900E01B07 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2062, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97900E1337B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2063, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97900E29365 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2064, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97900E3AF99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2065, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97900E3AFF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2066, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97900E3B6D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2067, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97900E46698 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2068, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97900F288A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2069, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97900F68BBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2070, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97900FB56C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2071, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97900FD47B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2072, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97901029719 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2073, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9790103CA92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2074, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9790107608B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2075, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A979010A41AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2076, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A979011199B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2077, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9790111E2EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2078, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97901179DF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2079, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A979011DB54E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2080, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A979011E951F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2081, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97A0072D6A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2082, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A97A007CD1E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2083, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97A008A4DFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2084, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97A008FC5B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2085, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97A009292A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2086, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97A00951695 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2087, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00966F9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2088, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97A0097D1C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2089, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A0098CDE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2090, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A0098EE92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2091, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00990B91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2092, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97A009956A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2093, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00997D91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2094, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A97A0099C836 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2095, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97A0099EC35 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2096, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A0099F639 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2097, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A009A3D3A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2098, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97A009AB1CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2099, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97A009B48F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2100, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97A009B58D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2101, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A009B68C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2102, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97A009BAFBC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2103, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97A009C1B73 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2104, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97A009E422C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2105, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A009F5D44 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2106, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97A009FBE0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2107, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A009FFF6E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2108, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00A0A496 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2109, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00A12F12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2110, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00A3DCFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2111, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97A00A44A03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2112, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A97A00A52CFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2113, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00A5B13D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2114, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97A00A647E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2115, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97A00A71A59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2116, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97A00AB34C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2117, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97A00A8F328 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2118, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97A00AA9107 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2119, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00AAE9E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2120, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00ADCF3C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2121, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97A00B241FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2122, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97A00B29F81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2123, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97A00B35EBA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2124, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97A00B3BFC3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2125, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A97A00B3C822 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2126, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97A00B4A726 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2127, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00B4B806 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2128, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97A00B94C59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2129, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97A00B97910 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2130, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97A00BAE3B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2131, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97A00BD4610 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2132, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00BDCD1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2133, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00BE2ED2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2134, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97A00BE59FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2135, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00BF046C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2136, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00BF2744 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2137, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00C072D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2138, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97A00C153D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2139, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97A00C3F0E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2140, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97A00C60F7C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2141, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97A00CCAB90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2142, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97A00CCECE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2143, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97A00CDBC49 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2144, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00D0A5A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2145, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97A00D0EDEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2146, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97A00D5B547 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2147, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97A00D9F998 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2148, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97A00DDC8A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2149, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97A00E1D896 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2150, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97A00E26C0B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2151, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00E2E62E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2152, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97A00E44335 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2153, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97A00E5A93A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2154, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A00E5BDC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2155, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A00E5E686 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2156, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00E6B071 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2157, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97A00E6F376 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2158, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A00E7106B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2159, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97A00E8A4D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2160, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97A00EBE1BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2161, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97A00E9E857 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2162, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A00EAA1C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2163, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A00EB6326 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2164, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97A00EDCC99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2165, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97A00F10BB8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2166, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00F79F8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2167, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00F7AC18 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2168, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97A00F7E6CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2169, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A00F92416 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2170, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97A00FB238B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2171, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97A00FCCD1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2172, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A0102315E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2173, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97A010260FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2174, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97A010D3010 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2175, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A97A010C1A01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2176, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97A010D8335 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2177, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97A011D7C79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2178, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A97A011D89A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2179, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97A012181C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2180, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97A012E7778 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2181, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97A012F5F8D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2182, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97A01301658 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2183, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97A01304B90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2184, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97A0132BC2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2185, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97A01512E38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2186, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97A01751C77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2187, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B006E8DD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2188, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B007ACA0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2189, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B00856482 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2190, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B0088DAA3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2191, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B00891831 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2192, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B008DF0FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2193, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B008EE1C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2194, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00915701 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2195, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B0091B7AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2196, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B0091B818 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2197, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B0091CE8B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2198, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B0092F8B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2199, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97B009303E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2200, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97B00941B42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2201, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97B00943E5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2202, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97B00947A2C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2203, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97B0094C186 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2204, N'0102032', N'上海顺初建材有限公司', N'101.231.72.95', CAST(0x0000A97B0094C630 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2205, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00965D2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2206, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97B0099062E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2207, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97B009A4E83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2208, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97B009ABDCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2209, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97B009B35F3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2210, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B009C9058 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2211, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97B009D3CD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2212, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B009D5D71 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2213, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97B009E53A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2214, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97B009E744E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2215, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97B009ED67E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2216, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97B00A04991 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2217, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00A160A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2218, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00A18C3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2219, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00A20992 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2220, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B00A2702A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2221, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97B00A27390 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2222, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97B00A29684 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2223, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97B00A38C20 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2224, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00A4F2D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2225, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97B00A5DAC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2226, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97B00A7D053 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2227, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00A87EC3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2228, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97B00AB9A17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2229, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B00ABC124 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2230, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97B00AED5D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2231, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97B00AF09E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2232, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97B00AF4019 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2233, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97B00AF8F8D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2234, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A97B00AFA414 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2235, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97B00B5AAC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2236, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A97B00B94473 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2237, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97B00BBBA68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2238, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97B00BC3A1E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2239, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97B00BE86A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2240, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A97B00C297B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2241, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97B00C40F9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2242, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B00C43E60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2243, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B00C5A5D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2244, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97B00C624A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2245, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00C62E46 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2246, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00C6305C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2247, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B00C699E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2248, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97B00CA1BC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2249, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B00CA9CF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2250, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00CBC5A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2251, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00CBFDA8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2252, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00CCACBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2253, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B00CD0F25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2254, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97B00CD5546 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2255, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00CE44E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2256, N'000085', N'顾敏', N'61.171.210.130', CAST(0x0000A97B00D27920 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2257, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00D0B4EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2258, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97B00D4D620 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2259, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00D83798 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2260, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B00DD4E8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2261, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97B00DD56C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2262, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97B00DF3230 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2263, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97B00DFFF65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2264, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00E1B75F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2265, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97B00E1FFD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2266, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00E325D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2267, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00E3EC98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2268, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97B00E467AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2269, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00E4E988 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2270, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97B00E60B2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2271, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B00E64D8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2272, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97B00E800DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2273, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97B00E88B0B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2274, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B00F23511 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2275, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B00F2AFC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2276, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00F3439D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2277, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00F35BB0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2278, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97B00F449EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2279, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97B00F71DFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2280, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B00F72854 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2281, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97B00F9B52B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2282, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97B00FE8579 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2283, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97B00FF1E58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2284, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97B00FF488E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2285, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97B0105B0C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2286, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97B01062619 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2287, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A97B010B9CED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2288, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A97B010BD46E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2289, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A97B010C850B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2290, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A97B010CBB98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2291, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97B010DD7B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2292, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97B010EEC6E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2293, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97B01141115 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2294, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97B0119EA02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2295, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97B011D43A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2296, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97B01201D77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2297, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97B0124FD20 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2298, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97B013EF394 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2299, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97B013EF404 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2300, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97B01549051 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2301, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97B0159DCF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2302, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97B016B4899 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2303, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97C0081CF2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2304, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97C008564B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2305, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C0086A6D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2306, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97C008A4485 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2307, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97C008CF5E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2308, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97C00915A84 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2309, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97C00920054 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2310, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A97C009272AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2311, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97C0094CA0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2312, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C0094FC7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2313, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C0097A04B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2314, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97C0097D233 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2315, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97C009806FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2316, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97C00984767 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2317, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97C009873F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2318, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97C0098AB82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2319, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97C00992D29 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2320, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00995A4C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2321, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97C009A7765 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2322, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97C009B5473 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2323, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97C009B67DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2324, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97C009BE0CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2325, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97C009DF8C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2326, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97C009F335F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2327, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97C00A0EFEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2328, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97C00A253F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2329, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00A35F20 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2330, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97C00A48A7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2331, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A97C00AA8C85 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2332, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97C00AC0483 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2333, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00AC093F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2334, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00B12F38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2335, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A97C00B18A2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2336, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00B1A46B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2337, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97C00B3912C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2338, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A97C00B4A9C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2339, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C00B5DF25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2340, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97C00B5EE6E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2341, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C00BBCBAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2342, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00BBEA79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2343, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00BC9D1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2344, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97C00BE7E4D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2345, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97C00C1A2DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2346, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97C00C207BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2347, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97C00C27EB6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2348, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97C00C2D2BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2349, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00C5FE4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2350, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97C00C8FA40 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2351, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97C00C966E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2352, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00CA0C3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2353, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00D25C43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2354, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97C00D28232 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2355, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97C00D42120 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2356, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00D6088B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2357, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97C00D63EDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2358, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97C00D6AD70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2359, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97C00D6FFD1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2360, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00D897E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2361, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97C00D8E424 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2362, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97C00D98B03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2363, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97C00D9951F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2364, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97C00D9BE4F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2365, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00DC760F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2366, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00DD00FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2367, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00DD2CCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2368, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00DE2105 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2369, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A97C00DEA3AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2370, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97C00DF127F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2371, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97C00E0A157 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2372, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C00E1177D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2373, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97C00E721B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2374, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97C00E915A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2375, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97C00E9CAE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2376, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97C00EDF176 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2377, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00F19A66 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2378, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C00F2CFE1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2379, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97C00F2D5E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2380, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97C00F36588 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2381, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97C00F383CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2382, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C00F3CE48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2383, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00F5D89E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2384, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97C00F65CA5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2385, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97C00F726B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2386, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00F831FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2387, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C00F83493 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2388, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97C00F93E7E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2389, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97C00FAB285 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2390, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97C00FB159F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2391, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97C00FF4886 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2392, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97C00FF9A5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2393, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97C0101B01C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2394, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97C0103555D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2395, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97C01061185 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2396, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97C01064351 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2397, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C01068B09 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2398, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97C010B95E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2399, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97C010CC389 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2400, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97C010D3690 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2401, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97C010DA5D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2402, N'0103023', N'上海九楹建材有限公司', N'61.171.210.130', CAST(0x0000A97C0110BD33 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2403, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C011129E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2404, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97C0111A285 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2405, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97C01122A34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2406, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97C01144E13 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2407, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C011864CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2408, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C0118D3E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2409, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C01198BD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2410, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97C011C376C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2411, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97C011C9AD1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2412, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97C011DA66B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2413, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97C011DC54C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2414, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C011DC8FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2415, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97C0121C229 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2416, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97C0121DAF3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2417, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97C0122723A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2418, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97C0122DF09 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2419, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97C0123F352 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2420, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97C01288D4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2421, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97C013F952C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2422, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C0147B60A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2423, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C014802B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2424, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C01480363 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2425, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C01480537 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2426, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C014823E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2427, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97C0154F01E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2428, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97C0158D31D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2429, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97C0167A49E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2430, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97D0065167B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2431, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D008920EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2432, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97D00897244 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2433, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D0089E57E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2434, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D0090E3ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2435, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97D009385DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2436, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97D009591A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2437, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97D0095FB04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2438, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A97D0096D263 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2439, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97D00984B2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2440, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97D0098504D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2441, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97D00986626 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2442, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D0099D056 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2443, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97D009A0F63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2444, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97D009B1C87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2445, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97D009C2A52 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2446, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97D009F05E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2447, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97D00A0E4DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2448, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00A198A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2449, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00A1BC0B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2450, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97D00A4183D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2451, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D00A4F685 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2452, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97D00A96E9E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2453, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97D00AEE353 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2454, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97D00AF0809 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2455, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D00AF49EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2456, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97D00B17CDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2457, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00B1B137 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2458, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D00B25305 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2459, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D00B4F509 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2460, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00B5EB8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2461, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97D00B67983 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2462, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00B79023 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2463, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97D00B8FEEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2464, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97D00BFF791 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2465, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97D00C24E9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2466, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00C4CE5D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2467, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97D00C5A1C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2468, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97D00CF6E53 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2469, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97D00CFFE2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2470, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97D00D3291A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2471, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97D00D3528C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2472, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D00D74709 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2473, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A97D00D76D89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2474, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D00D76D9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2475, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97D00D9183D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2476, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D00DB37D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2477, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D00DB4A7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2478, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D00DC4678 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2479, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97D00DF847A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2480, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97D00E0C100 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2481, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00E2CF3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2482, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00E2CF64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2483, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97D00E56616 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2484, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00E61B2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2485, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00E971AF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2486, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97D00E9E458 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2487, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00ED9B8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2488, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97D00F0C8C8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2489, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D00F1B687 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2490, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97D00F97F27 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2491, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97D00FB7312 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2492, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00FBCEEF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2493, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D00FBCF48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2494, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97D00FBF61D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2495, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D00FBFDFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2496, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D00FF9CDA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2497, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D01038BEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2498, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97D010456C8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2499, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D0106B589 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2500, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97D01075F3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2501, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97D010BC1EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2502, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A97D010CB46A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2503, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97D01114F85 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2504, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D0119F069 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2505, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D011D31E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2506, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D011E9090 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2507, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97D012076C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2508, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97D01210677 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2509, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97D01240668 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2510, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97D01250B19 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2511, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97D012633E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2512, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97D012A3F17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2513, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97D0131ACBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2514, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97D0155CF33 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2515, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97E006C9F08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2516, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A97E006F148C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2517, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97E00931D7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2518, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97E0094F295 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2519, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97E009664C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2520, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97E0097250F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2521, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A97E009760E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2522, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97E00992CEC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2523, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97E0099BBD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2524, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A97E0099CDFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2525, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A97E009A96F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2526, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A97E009BEDC7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2527, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A97E009D1E4E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2528, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A97E009DCBE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2529, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A97E009E5579 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2530, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E009E8A40 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2531, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A97E009E8A57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2532, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E009E8BA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2533, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009E9140 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2534, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97E009F4C9E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2535, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F6DE3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2536, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F6EB1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2537, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F6F0A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2538, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F9443 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2539, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F9523 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2540, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A97E009F9F65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2541, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97E00A1966C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2542, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00A273F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2543, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97E00A37202 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2544, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97E00A5E462 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2545, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A97E00AB7F43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2546, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97E00AC023A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2547, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97E00AD9B74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2548, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97E00B1E6D1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2549, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97E00B1EF8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2550, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97E00B26E02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2551, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00B49C02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2552, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97E00B55A63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2553, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97E00BAFBF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2554, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97E00C16A89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2555, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00C33EDE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2556, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A97E00C8EF14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2557, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A97E00CCD0D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2558, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00D10D13 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2559, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97E00D6A266 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2560, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97E00D771DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2561, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A97E00D8E53D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2562, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97E00DF33CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2563, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00DFAF2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2564, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00DFAF50 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2565, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97E00E0B177 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2566, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97E00E13B65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2567, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97E00E98084 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2568, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00EB22E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2569, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97E00F3BE6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2570, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A97E00F3E66F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2571, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00F3E7A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2572, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97E00F40D93 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2573, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E00F980BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2574, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97E00FADD89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2575, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A97E01006901 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2576, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A97E0101D445 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2577, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97E010314DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2578, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97E0104CB91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2579, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97E01064757 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2580, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97E010660A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2581, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97E010786E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2582, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97E0109BBEF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2583, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A97E010DB9C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2584, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97E01134DD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2585, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97E01152F3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2586, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A97E01156DBC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2587, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97E0115D175 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2588, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97E011B56E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2589, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97E011BEF9D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2590, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97E0124DB00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2591, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97E01274310 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2592, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97E01295DDE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2593, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97E012C9B20 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2594, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A97E01367FFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2595, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A97E013F8A47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2596, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97F00786AE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2597, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A97F0082F5CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2598, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97F0084F6E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2599, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97F0092A253 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2600, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97F0092E3F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2601, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97F0099C379 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2602, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97F0099EFA4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2603, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A97F009A2AF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2604, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97F00A1316C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2605, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97F00A1A730 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2606, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A97F00A1B1DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2607, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97F00A2DB8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2608, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A97F00A5C56F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2609, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F00A5F6E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2610, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97F00A676B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2611, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A97F00A71527 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2612, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A97F00A9B405 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2613, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97F00AA04EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2614, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97F00AD2DF9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2615, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00AE0D9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2616, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F00AE8154 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2617, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A97F00B22E5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2618, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A97F00B376ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2619, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A97F00B427B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2620, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A97F00B57637 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2621, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00B83386 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2622, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97F00B9E60D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2623, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97F00BAA692 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2624, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97F00BAB2A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2625, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00C087AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2626, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00C0A3A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2627, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A97F00C48EB2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2628, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97F00C66838 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2629, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97F00C72D90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2630, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97F00C973BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2631, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F00D3822D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2632, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F00D3BE02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2633, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97F00D46BD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2634, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00D5B89A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2635, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00D5DB5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2636, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00D6420F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2637, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A97F00D680EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2638, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00D7AFAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2639, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A97F00D8A651 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2640, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00D8B36D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2641, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00E70F80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2642, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F00E7305E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2643, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97F00E7E709 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2644, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F00E9E565 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2645, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00EF013D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2646, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A97F00EF190F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2647, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F00F11425 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2648, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97F01020FE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2649, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97F01029051 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2650, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A97F01029780 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2651, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97F01034D95 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2652, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97F0103BF4F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2653, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97F01049845 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2654, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A97F010536CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2655, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A97F010583A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2656, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A97F01071FCB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2657, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A97F010859AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2658, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A97F0109E8E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2659, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A97F010C545A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2660, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F010E1063 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2661, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A97F010F64A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2662, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A97F010F9A13 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2663, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F01120738 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2664, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A97F0116B207 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2665, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A97F0117722F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2666, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F011C24BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2667, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A97F011F5550 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2668, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F01253D28 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2669, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A97F0128033D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2670, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A97F014D028D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2671, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F01516082 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2672, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A97F0152270F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2673, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F01554C42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2674, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A97F015C1D80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2675, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A97F0167E9C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2676, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A980008DAA89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2677, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A980008DED69 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2678, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A980009620D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2679, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98000971AF9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2680, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A980009D8DD0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2681, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A980009F2AB6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2682, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A980009F2AEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2683, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A980009F38C5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2684, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A980009F73DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2685, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98000A16F90 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2686, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98000A25001 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2687, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98000A3F19F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2688, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98000A85491 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2689, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98000AC4384 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2690, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98000AD4EC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2691, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98000AF6709 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2692, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98000B4513A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2693, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98000C0D2B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2694, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98000C12221 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2695, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98000C960B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2696, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98000D8831C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2697, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98000DB6D3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2698, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98000DEA3AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2699, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98000E1F7AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2700, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98000E28777 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2701, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98000E68FC1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2702, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98000E68FE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2703, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000E6FCEE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2704, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000E8C515 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2705, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98000E9BD4A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2706, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000EA75F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2707, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000EA9E18 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2708, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000EAC8AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2709, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000EAD48D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2710, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98000EB12E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2711, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98000EFB541 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2712, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98000F0312B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2713, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98000F50C67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2714, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98000F727E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2715, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98000FC94C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2716, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98000FDB4EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2717, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9800102287B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2718, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A9800102974D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2719, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9800103CFBF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2720, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9800103D5DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2721, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9800103DDF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2722, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A980010456F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2723, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9800105F4EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2724, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98001086D94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2725, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98001094F1D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2726, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A980010A7A1B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2727, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A980010AC7B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2728, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A980010ADE4E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2729, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A980010C8ECD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2730, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A980010D6FA0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2731, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A980010E9698 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2732, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9800114CAD6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2733, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A980011551BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2734, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A980011EE2D2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2735, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A980012222DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2736, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9800125A80D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2737, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9800125F5E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2738, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A980012694E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2739, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9800126B62D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2740, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98001747527 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2741, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A980017A1D61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2742, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A981008F24E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2743, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98100903A8C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2744, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100928E55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2745, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100930326 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2746, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9810093D883 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2747, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98100966F4C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2748, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A9810098F290 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2749, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9810099B174 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2750, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A981009B5A3D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2751, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A981009C15AD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2752, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A981009C5AFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2753, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A981009CCC87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2754, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A981009CD8F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2755, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A981009D5983 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2756, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A981009DB8F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2757, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A981009E37A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2758, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A981009E4540 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2759, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A981009E873E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2760, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A981009E90A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2761, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A981009F1B36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2762, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A981009F5DFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2763, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A981009FCB51 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2764, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98100A08DC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2765, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98100A0D4DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2766, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98100A17B60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2767, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98100A1B473 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2768, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98100A1E814 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2769, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98100A23821 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2770, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98100A24926 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2771, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98100A43E5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2772, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98100A45BC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2773, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100A472AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2774, N'000550', N'项黎杰', N'101.231.72.95', CAST(0x0000A98100A592EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2775, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98100A74AC7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2776, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98100A77830 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2777, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100A7F0B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2778, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100A8F65C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2779, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98100A97A8D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2780, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98100ABE2C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2781, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98100ABECD5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2782, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98100AF1FE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2783, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98100B0346E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2784, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100B07ABD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2785, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98100B0824A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2786, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100B0AE91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2787, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98100B10B58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2788, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A98100B2124D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2789, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98100B2B9D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2790, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98100B565F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2791, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98100B58D7A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2792, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98100B739A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2793, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98100B7743C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2794, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98100B82160 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2795, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100BAA2CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2796, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98100BB3D58 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2797, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98100BCBCD0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2798, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98100BCBCF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2799, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98100C07586 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2800, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98100C0D23A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2801, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98100C2383F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2802, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100C2A104 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2803, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100C62AB5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2804, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100D61D81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2805, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98100DA8EC4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2806, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E02E61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2807, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E291A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2808, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E2BE05 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2809, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E6196C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2810, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98100E646E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2811, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98100E71F48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2812, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E8385B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2813, N'002655', N'包璐莹', N'101.231.72.95', CAST(0x0000A98100E87BDF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2814, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98100E8A9FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2815, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98100E8D2E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2816, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98100EBF6BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2817, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98100EC6957 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2818, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98100ED4D04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2819, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98100F2D08D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2820, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A98100F5CBA6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2821, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A98100F62CC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2822, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A98100F62D24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2823, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98100F8ABBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2824, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98100F8ABE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2825, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98100FA4F30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2826, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98100FC9A2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2827, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98100FD9E37 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2828, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98101010A0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2829, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98101039F29 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2830, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9810105215A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2831, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9810105A4E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2832, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9810105F477 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2833, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98101068EFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2834, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9810107C9ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2835, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9810108B51E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2836, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9810109332A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2837, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A981010B19B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2838, N'002838', N'方巍巍', N'101.231.72.95', CAST(0x0000A981010BE945 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2839, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A981010DB965 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2840, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A981010DC35B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2841, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A981010E7C41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2842, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A981011076E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2843, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98101132622 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2844, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A9810113D1C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2845, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98101150B56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2846, N'000261', N'陈玲珍', N'101.231.72.95', CAST(0x0000A98101168A9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2847, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A981011AA43D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2848, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A981011E238C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2849, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9810120B52E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2850, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A981012108D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2851, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A98101214D43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2852, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98101219372 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2853, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98101280AB0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2854, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98101296A54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2855, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A9810133DA56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2856, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98101382210 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2857, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A9810140F413 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2858, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98101505745 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2859, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9820074B165 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2860, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A982008FAF56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2861, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98200931B0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2862, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A982009410E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2863, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A982009446F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2864, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98200948B6F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2865, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A9820094E549 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2866, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98200985259 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2867, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98200987021 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2868, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9820099F616 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2869, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A982009A83A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2870, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A982009C3342 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2871, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A982009CD419 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2872, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A982009F4134 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2873, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200A0A70B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2874, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98200A0E9BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2875, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98200A12E94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2876, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98200A14877 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2877, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98200A18EFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2878, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98200A1AFF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2879, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200A1C887 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2880, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200A2FBF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2881, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98200A5C985 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2882, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98200A870F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2883, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200A91466 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2884, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98200A92764 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2885, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98200AABB97 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2886, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98200AAE2F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2887, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98200AB1CB8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2888, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200AB28EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2889, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98200AB5033 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2890, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98200AC02D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2891, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98200AC17B4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2892, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98200ACFC38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2893, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200AD7202 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2894, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98200ADB9D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2895, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98200B0072F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2896, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98200B34D9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2897, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98200B4B0A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2898, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98200B4EA1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2899, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200B78505 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2900, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98200BC9272 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2901, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98200BCB54D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2902, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98200BEF1E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2903, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98200C0AC89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2904, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200C107CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2905, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98200C1868A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2906, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98200C3B3AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2907, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200C41EE1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2908, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200C506DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2909, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98200C691E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2910, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98200C7CB6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2911, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98200CA8422 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2912, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200CD5A03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2913, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98200CD9DCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2914, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98200CFEAC4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2915, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98200D1B01F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2916, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98200D294C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2917, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98200D7862E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2918, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98200D80229 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2919, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98200D8F792 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2920, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98200DBF1F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2921, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98200DFA831 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2922, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200E02CB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2923, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98200E14434 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2924, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200E223AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2925, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98200E64750 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2926, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98200E6E277 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2927, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98200EC4DA1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2928, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98200EC7395 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2929, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98200F05AFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2930, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98200F43453 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2931, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98200F8410F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2932, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98200F9C19A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2933, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9820100731C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2934, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A9820100D4EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2935, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9820108591C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2936, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A982010DCC02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2937, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A982010DF32F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2938, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A982010FCF2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2939, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98201112023 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2940, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A9820117883D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2941, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98201188C25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2942, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A982011A7C77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2943, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A982011EA344 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2944, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A982011F8C14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2945, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98201238A67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2946, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98201271C69 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2947, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98201333A74 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2948, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9820138BA67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2949, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A982013FE441 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2950, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A982014054B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2951, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98201478F43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2952, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98300757492 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2953, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A983008B3797 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2954, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A983009146CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2955, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98300924E98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2956, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9830093673F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2957, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9830094AF65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2958, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300975E2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2959, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A983009777C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2960, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9830097D996 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2961, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9830098300A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2962, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A9830098D020 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2963, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A9830098DCE3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2964, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A9830098FD98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2965, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300990D9B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2966, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A983009AE82C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2967, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A983009B4A16 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2968, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A983009C815C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2969, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98300A06D88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2970, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98300A07E06 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2971, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98300A0FAFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2972, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98300A2299A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2973, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98300A2AD60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2974, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98300A3612C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2975, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98300A3FBCB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2976, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98300A4BDFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2977, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300A5375E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2978, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98300A7B8CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2979, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300A8D22B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2980, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98300A95E71 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2981, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98300A97BE9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2982, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98300A9AB5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2983, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98300AB8DE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2984, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98300AC8974 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2985, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98300AE5083 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2986, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98300B0F042 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2987, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98300B1AA6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2988, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98300B215BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2989, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300B254B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2990, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98300B67618 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2991, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98300B8C65A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2992, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98300B8E0EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2993, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98300BAD4BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2994, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98300BB244E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2995, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98300BCB6DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2996, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98300BD3255 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2997, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98300BD40EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2998, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98300C3CAE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (2999, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98300D63B9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3000, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98300D88589 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3001, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98300DADDDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3002, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98300E26991 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3003, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98300E584E0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3004, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300E632D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3005, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98300E63431 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3006, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98300E70416 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3007, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98300E968F3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3008, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98300ED3011 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3009, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98300F05207 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3010, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98300F27741 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3011, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98300F301D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3012, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98300F3111C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3013, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98300F6F0AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3014, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98300F881BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3015, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98300F94500 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3016, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98300FA8376 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3017, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98300FC10B7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3018, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98300FD79D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3019, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98300FE5785 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3020, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98301021F0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3021, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98301056F87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3022, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98301075E18 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3023, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A983010B7DCD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3024, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A983010BAF6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3025, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A983010BF5B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3026, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A983010CA863 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3027, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A983010D680D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3028, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9830113B40E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3029, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9830113F5F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3030, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9830114619E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3031, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A9830114C246 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3032, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9830114EEE5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3033, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9830119CC3C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3034, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A983011A14C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3035, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983011B1649 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3036, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983011BB404 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3037, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983011BE62A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3038, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983011C8903 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3039, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A983011C9C5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3040, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A983011D6463 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3041, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A983011D92EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3042, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A983011E1799 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3043, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A983011E4DCD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3044, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98301213BE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3045, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98301227ACD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3046, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98301244420 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3047, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9830129D090 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3048, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983012A49B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3049, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A983012A85F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3050, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A983012F57BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3051, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A983013CA908 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3052, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A983013DA4ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3053, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A983014603FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3054, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A983014DCAE0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3055, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98301754162 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3056, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A983017CB95E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3057, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A984007ECE82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3058, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98400906BCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3059, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A984009244ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3060, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9840094A71E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3061, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A98400955D7E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3062, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9840095BE6B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3063, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9840095BE9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3064, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A9840096EFB7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3065, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9840097E1E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3066, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9840098C09C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3067, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9840099351E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3068, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98400994284 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3069, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9840099C439 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3070, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A9840099D902 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3071, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A984009A09E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3072, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A984009AD8DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3073, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A984009AF9AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3074, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A984009C1A5E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3075, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A984009C8563 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3076, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A984009CBA38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3077, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A984009D2BF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3078, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A984009DBC7E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3079, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A984009EABE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3080, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A984009EBB56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3081, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A984009F690E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3082, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98400A03435 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3083, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400A09082 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3084, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A98400A1AE14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3085, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400A25E91 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3086, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98400A3F938 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3087, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98400A57CE9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3088, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98400A610E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3089, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98400A6C9EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3090, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98400ABB995 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3091, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98400AC9BF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3092, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98400AD1582 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3093, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98400AE8630 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3094, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98400AFA222 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3095, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98400AFCA5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3096, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98400B0ED5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3097, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98400B1FBE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3098, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A98400B2CD67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3099, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98400B3E0AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3100, N'0102026', N'上海昭颐贸易有限公司', N'101.231.72.95', CAST(0x0000A98400B4E6E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3101, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98400B5EE29 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3102, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98400B72FF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3103, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98400BA2E6D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3104, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A98400BD377D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3105, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98400BDDC34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3106, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A98400BE538B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3107, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98400BE54F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3108, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98400BE6040 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3109, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A98400C0AD12 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3110, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98400C0CC05 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3111, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98400C0EC86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3112, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98400C46512 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3113, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98400C48A87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3114, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400C656A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3115, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A98400C6CAB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3116, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A98400C70D0F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3117, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98400CAE396 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3118, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98400CE06A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3119, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98400D0F79E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3120, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98400D2AAD7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3121, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98400D36B08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3122, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98400D3B295 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3123, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A98400D599A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3124, N'003592', N'纪晶晶', N'101.231.72.95', CAST(0x0000A98400D5B5BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3125, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98400D5C0DD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3126, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98400D74AB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3127, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98400D7545A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3128, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98400D9F28B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3129, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A98400DAA530 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3130, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98400DC5BBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3131, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400DCEF32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3132, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400DFEFC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3133, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98400E0847A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3134, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98400E16F2C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3135, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98400E1AF60 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3136, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98400E2E297 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3137, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98400E2E2CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3138, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A98400E648A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3139, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A98400E83DCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3140, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98400E9CB94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3141, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98400EA14B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3142, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98400ED6A0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3143, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98400EE2474 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3144, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98400EF65A3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3145, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A98400F20E3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3146, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98400F2D588 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3147, N'004260', N'成丹', N'101.231.72.95', CAST(0x0000A98400F7ABB9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3148, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98400FF816B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3149, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98401001D07 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3150, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98401020687 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3151, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9840103636D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3152, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A984010F5265 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3153, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A9840110088C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3154, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A9840111A5DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3155, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A984011244BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3156, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9840114A114 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3157, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A984011563F0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3158, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A9840116A8C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3159, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A984011A7667 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3160, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A984011FB983 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3161, N'0107010', N'上海复亚建筑装饰有限公司（顶固）', N'101.231.72.95', CAST(0x0000A984011FD911 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3162, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98401205662 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3163, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9840127F696 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3164, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A984012A078E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3165, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A984012C0C6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3166, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A9840139EFD7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3167, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A984013A9A3D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3168, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A984013AE908 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3169, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A984013B6A10 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3170, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A984013E9FA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3171, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A9840141E23C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3172, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9840149217E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3173, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9840166400D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3174, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98500687942 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3175, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A9850090E638 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3176, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9850094C5F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3177, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A985009683FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3178, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A9850096F1FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3179, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98500985835 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3180, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98500997912 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3181, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A985009AACE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3182, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A985009B0A79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3183, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A985009CF4A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3184, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A985009D98B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3185, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A985009DE920 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3186, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A985009EC894 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3187, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500A14C5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3188, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98500A1C9FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3189, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98500A28D01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3190, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98500A2925D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3191, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98500A4E99B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3192, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98500A4E9CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3193, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98500A6A6C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3194, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A6D55F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3195, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A7157C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3196, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A73060 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3197, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98500A757A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3198, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A793FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3199, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98500A8E05D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3200, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A97E55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3201, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98500A9E579 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3202, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98500AC7016 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3203, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98500ADCF32 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3204, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98500B14069 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3205, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A98500B155E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3206, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500B6E05F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3207, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A98500B7A2F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3208, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98500B88779 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3209, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500B9B0B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3210, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98500BA254E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3211, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98500BAB144 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3212, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500BAFFD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3213, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98500BC4DF3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3214, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500BCB7ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3215, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98500BCD414 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3216, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500BD3298 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3217, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98500BF3AA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3218, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A98500BF8A09 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3219, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98500C01662 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3220, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98500C0F6BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3221, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98500C258DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3222, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98500CB6BD2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3223, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98500D2CAC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3224, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98500D3A910 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3225, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98500D59C53 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3226, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98500D5E050 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3227, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98500DA27A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3228, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98500DB82BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3229, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98500DC81B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3230, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98500DE2312 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3231, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98500E27B29 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3232, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98500E713B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3233, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98500EB3A1B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3234, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98500EC2CE1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3235, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF6A15 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3236, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF6AD5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3237, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF6B1B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3238, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF6B61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3239, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF6BA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3240, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98500EF70B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3241, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98500EF70E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3242, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500EF8687 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3243, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98500F09FBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3244, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98500F1DC37 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3245, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98500F3D0D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3246, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98500F4A89F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3247, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98500F511F1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3248, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98500F78017 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3249, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98500FEDD6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3250, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98500FF0B08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3251, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A9850100DC46 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3252, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A9850106B655 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3253, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A985010FDA77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3254, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A985011231DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3255, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A985011260AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3256, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98501137DCE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3257, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A985011473B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3258, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A985011ABF2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3259, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A985011B45DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3260, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A985011C7817 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3261, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A985011CB522 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3262, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9850121A67D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3263, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A985012C73F4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3264, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A985012D67EB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3265, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A985013A81EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3266, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A9850144E001 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3267, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98501595738 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3268, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98600847C43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3269, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A986009659B5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3270, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9860097193D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3271, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600974BD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3272, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A986009BC13C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3273, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A986009C3FBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3274, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A986009C496E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3275, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600A38C95 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3276, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98600A3C7F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3277, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98600A462B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3278, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98600A493A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3279, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600A5F872 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3280, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98600A67CC8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3281, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600A6E61A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3282, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600A820D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3283, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98600ACF768 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3284, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98600AD4BF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3285, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98600AD5CF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3286, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98600AE0078 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3287, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98600AE4078 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3288, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98600B1478F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3289, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98600B19F54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3290, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98600B2B2C6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3291, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98600B30AB5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3292, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98600B500E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3293, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98600B7C794 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3294, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600B7E5A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3295, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600BB2439 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3296, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98600BC3647 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3297, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98600BC8288 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3298, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98600BD44CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3299, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600BE6549 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3300, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98600C06B10 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3301, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98600C0F097 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3302, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98600C11E75 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3303, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98600C7E7C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3304, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98600DB8D42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3305, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98600E370AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3306, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600E38C5C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3307, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98600E5BD8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3308, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98600E7D816 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3309, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98600E8E42A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3310, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600EAB790 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3311, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600EAF522 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3312, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98600EFD62F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3313, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600F0F808 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3314, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98600FD99E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3315, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98600FE89F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3316, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9860104B18B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3317, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9860106D29E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3318, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98601089DD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3319, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A986010FFC61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3320, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A9860114ABCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3321, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98601196810 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3322, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A986011AC794 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3323, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A986011FD6AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3324, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A9860134BF25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3325, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A986014E5445 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3326, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9860153F056 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3327, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98700771C6B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3328, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A987008D489C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3329, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700911203 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3330, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700914C17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3331, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98700970058 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3332, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A987009780AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3333, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A987009AF296 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3334, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A987009BF864 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3335, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A987009C01E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3336, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A987009DF73F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3337, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A987009F8476 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3338, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98700A1337F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3339, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700A2602B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3340, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700A46BDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3341, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700A6A572 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3342, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98700A8F73D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3343, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700A95C89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3344, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98700AA2B5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3345, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98700AB3B28 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3346, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700ACEAFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3347, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700ADDB24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3348, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700ADF9A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3349, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98700B06446 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3350, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98700B115BF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3351, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98700B20063 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3352, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98700B21D8C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3353, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98700B24C1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3354, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98700B2E392 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3355, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98700B30BEA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3356, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98700B58485 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3357, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98700B5E742 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3358, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98700B9F7FA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3359, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700BA1762 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3360, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98700BB4BA9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3361, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98700BC50AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3362, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700BC80FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3363, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700BCF367 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3364, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700BDF4C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3365, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700BFA2C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3366, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98700BFFDF2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3367, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98700C06F54 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3368, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700C11F15 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3369, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700C3E825 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3370, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98700CA2D42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3371, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98700CE6D24 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3372, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700CF70F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3373, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700D1DB31 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3374, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700D21642 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3375, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700D2171A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3376, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700D228ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3377, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98700D82188 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3378, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98700DAE424 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3379, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700E651C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3380, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98700EB8848 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3381, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700EBEFC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3382, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98700F11BC7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3383, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98700F488CD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3384, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98700F4D1FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3385, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700F63F9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3386, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98700F817CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3387, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700FDB8DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3388, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98700FDB8E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3389, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98700FECE8C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3390, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98700FFF45D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3391, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9870100C8A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3392, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98701013D9C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3393, N'0107011', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A9870101A738 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3394, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A987010322B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3395, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98701073D25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3396, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A9870109088E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3397, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A987010A1587 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3398, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A987010CE219 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3399, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A987010F0918 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3400, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9870115D4E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3401, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A987011DF08C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3402, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A987012C8639 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3403, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A987012EB22D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3404, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98701459132 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3405, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9870156E7D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3406, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A987015B6EFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3407, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A987016B60E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3408, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98800875D5A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3409, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A988008C76C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3410, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A9880091D3AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3411, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A9880093FBE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3412, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98800958560 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3413, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A988009590C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3414, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9880095BEE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3415, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A988009732D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3416, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9880097921B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3417, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A9880097EF98 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3418, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A9880098DF3A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3419, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9880099AA59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3420, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A988009A5D94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3421, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A988009AC05F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3422, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A988009C0CED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3423, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A988009C8AC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3424, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A988009E24DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3425, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98800A0100F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3426, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98800A1A903 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3427, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98800A1B34E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3428, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98800A2B8DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3429, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800A2D1A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3430, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98800A2DEDD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3431, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98800A3D19E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3432, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98800A44633 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3433, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98800A58FB8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3434, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98800A5E153 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3435, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98800AF3F64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3436, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98800AFFD7B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3437, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800B10A8B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3438, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98800B1EC85 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3439, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98800B417BD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3440, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800B6A693 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3441, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800B73DBE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3442, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800B82825 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3443, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800B87AFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3444, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98800B99C8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3445, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800BC9EB5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3446, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BE9293 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3447, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BEA4D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3448, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BEAE94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3449, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BEE6A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3450, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BF07D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3451, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800BF47FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3452, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98800BFCFE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3453, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98800C06166 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3454, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98800C063EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3455, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800C2B6E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3456, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98800C52BA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3457, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98800C52C55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3458, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98800C59E22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3459, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98800C5F462 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3460, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98800C67E22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3461, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A98800C8BD80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3462, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98800C9549D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3463, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98800CC1E2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3464, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98800CC473A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3465, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98800CE3834 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3466, N'0107010', N'上海复亚建筑装饰有限公司（顶固）', N'101.231.72.95', CAST(0x0000A98800CE40AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3467, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98800D22D2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3468, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D51FBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3469, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D6DE1F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3470, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D70DE4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3471, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D7333D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3472, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D7908C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3473, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98800D7C4E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3474, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D7EC31 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3475, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D826FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3476, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98800D84BB1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3477, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D88935 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3478, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800D8A16E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3479, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98800D9BA03 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3480, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98800DA3346 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3481, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98800DA4F01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3482, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98800DA69EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3483, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98800DED1A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3484, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98800DF197F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3485, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800E1B6FE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3486, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A98800E29627 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3487, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98800E314C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3488, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800E38FBF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3489, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800E65CEC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3490, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800E6B2E1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3491, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98800E7BA2F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3492, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98800E8C3D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3493, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98800E92954 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3494, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98800EBD346 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3495, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98800ECBD47 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3496, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A98800EEFDAF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3497, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98800EF4F7A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3498, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98800EFECDC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3499, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98800F060F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3500, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98800F0A98A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3501, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98800F1F108 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3502, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98800F28002 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3503, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98800F35863 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3504, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98800F83287 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3505, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98800FF564A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3506, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98801008215 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3507, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9880100D2A6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3508, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98801014757 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3509, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98801022254 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3510, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A988010353F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3511, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98801045924 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3512, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A9880107B27A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3513, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98801090666 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3514, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A988010DBE89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3515, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98801141A86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3516, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98801145138 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3517, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9880115092A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3518, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98801171A5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3519, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A988011C9787 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3520, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A988011CA21C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3521, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98801210016 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3522, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9880123A3B0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3523, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98801273DCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3524, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A988012A2146 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3525, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A988012A2C6D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3526, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A988012A534F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3527, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A988012EE749 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3528, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98801359454 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3529, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98801378C9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3530, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A98801379A83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3531, N'0105002', N'上海雄雄木业有限公司', N'101.231.72.95', CAST(0x0000A988014528FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3532, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A988014D5F9E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3533, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98801532190 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3534, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A988016541B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3535, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98900689787 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3536, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A9890080DFC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3537, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9890089BB3B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3538, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A989008C94E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3539, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A989008E42CC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3540, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A989009320F5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3541, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A9890094B990 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3542, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A9890094C64E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3543, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98900954BDE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3544, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A9890095CBA3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3545, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98900985720 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3546, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98900987149 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3547, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98900993B63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3548, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98900998B6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3549, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A9890099BD9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3550, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9890099EA8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3551, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A989009C55E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3552, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A989009D9E1D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3553, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A989009F3461 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3554, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98900A05CF0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3555, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98900A08FC2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3556, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98900A32625 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3557, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900A55740 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3558, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900A55745 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3559, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98900A5EC30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3560, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A98900A6F01D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3561, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98900A9759B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3562, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98900AA3BD4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3563, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98900AA6D72 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3564, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98900AC027C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3565, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98900AC9320 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3566, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98900AE297C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3567, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98900B0D117 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3568, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98900B47AB8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3569, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98900B482AC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3570, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98900B483F8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3571, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98900B4EDBA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3572, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98900B66C56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3573, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98900B7CAC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3574, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98900B84959 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3575, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98900BAF030 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3576, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98900BE1FD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3577, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98900C03AE3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3578, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98900C2F1DE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3579, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98900C684E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3580, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98900C78461 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3581, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98900C8C90E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3582, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98900CB8A88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3583, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98900CC3E79 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3584, N'0101030', N'上海恺德家用电器有限公司', N'101.231.72.95', CAST(0x0000A98900D08455 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3585, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900D3344B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3586, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900D334A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3587, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98900D630F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3588, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900D9187B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3589, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98900DB5085 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3590, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98900DD0E9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3591, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98900DF54C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3592, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98900E58BF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3593, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98900E75CF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3594, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98900E81383 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3595, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98900E99E68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3596, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98900EE972B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3597, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98900F64B92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3598, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98900F680A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3599, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98900F70DC1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3600, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98900F810EE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3601, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98900F85083 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3602, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98900F8C8F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3603, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98900F9097B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3604, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98900FA169E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3605, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98900FAC146 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3606, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A9890100F16B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3607, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98901075679 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3608, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A989010777E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3609, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A9890109E7C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3610, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A989010D9652 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3611, N'004479', N'耿晓杰', N'101.231.72.95', CAST(0x0000A9890111BBD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3612, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98901145DD6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3613, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A989011497FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3614, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9890114E880 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3615, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A989011574CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3616, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A9890115E9E2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3617, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A9890115EA31 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3618, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A9890117DEE2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3619, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A9890118B164 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3620, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A989011B9BAB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3621, N'003954', N'蒋孟军', N'101.231.72.95', CAST(0x0000A989011E4849 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3622, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A9890120C272 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3623, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A989012573BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3624, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98901265A45 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3625, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98901305F02 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3626, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A989013E4CD8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3627, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A989014C1E2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3628, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A989015651CF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3629, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A989017549FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3630, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A9890177D609 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3631, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98A0087CDC5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3632, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A0092503A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3633, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98A00942B64 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3634, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98A0096FEB6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3635, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A0097DCCF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3636, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98A0098393D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3637, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98A009C9ACC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3638, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98A009E3AD3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3639, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98A009EBBA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3640, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98A00A00483 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3641, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A98A00A0C849 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3642, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98A00A0F800 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3643, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98A00A1FAC1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3644, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98A00A20701 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3645, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A00A3229A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3646, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00A40A14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3647, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98A00A55B6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3648, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A00A5B14A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3649, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00A5F7F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3650, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98A00A6A72C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3651, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00A70EF0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3652, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00A8470E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3653, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A00A8C8E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3654, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98A00A8E394 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3655, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98A00A91A88 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3656, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98A00A9DE7D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3657, N'000606', N'陈俊', N'101.231.72.95', CAST(0x0000A98A00AB9CAE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3658, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00ACF76C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3659, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98A00AE5D34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3660, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98A00B02EFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3661, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98A00B0C5BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3662, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98A00B0E89A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3663, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98A00B14FBF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3664, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98A00B153B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3665, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98A00B17EA8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3666, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98A00B366B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3667, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98A00B39882 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3668, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00B4F285 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3669, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98A00B635BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3670, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00B6663B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3671, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98A00B73B2C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3672, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00B74DDB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3673, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98A00B753C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3674, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00B7A36E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3675, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98A00B82067 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3676, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98A00B8EABD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3677, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00BB1FBD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3678, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98A00BCB37B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3679, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98A00BD0B08 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3680, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98A00BFB858 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3681, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98A00C02B6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3682, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00C6D24E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3683, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98A00C775D0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3684, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98A00CA64D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3685, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00CA7215 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3686, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98A00CB2997 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3687, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98A00CE6C00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3688, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00D882DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3689, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A00D88A34 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3690, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98A00DCC1DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3691, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98A00E3D219 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3692, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98A00E4986E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3693, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00E4F6BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3694, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00E53D04 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3695, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98A00E851A2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3696, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98A00E88539 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3697, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A00E94EC7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3698, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98A00EB2E63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3699, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98A00EBEF53 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3700, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00ED2B51 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3701, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00F713A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3702, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98A00F7840E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3703, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00F8FA25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3704, N'000103', N'刘瑞怡', N'101.231.72.95', CAST(0x0000A98A00F92996 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3705, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A00F92EFB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3706, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98A00FAFFAC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3707, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98A01036137 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3708, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98A01046D7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3709, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98A010495A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3710, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A98A01053482 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3711, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A01057538 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3712, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98A01072FD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3713, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98A0107CD6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3714, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98A010BCC66 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3715, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98A010D3035 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3716, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98A010F19E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3717, N'002971', N'姚秋晨', N'101.231.72.95', CAST(0x0000A98A011231DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3718, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98A0116EE1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3719, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A011A2E31 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3720, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98A011A5AED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3721, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A011B60AE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3722, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98A011C90D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3723, N'0113055', N'上海豪郝建筑装潢材料有限公司', N'101.231.72.95', CAST(0x0000A98A011CF01B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3724, N'003564', N'崔滨伟', N'61.171.210.130', CAST(0x0000A98A011D7F26 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3725, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A011E80B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3726, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A0121B555 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3727, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98A0121CA3A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3728, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98A0121F58E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3729, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98A01247C4B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3730, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98A012514C2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3731, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98A01256274 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3732, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A98A0125BC7D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3733, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98A01278114 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3734, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98A0136B4F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3735, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A013BDA6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3736, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98A013FD217 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3737, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A0144E274 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3738, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A01468813 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3739, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A01472980 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3740, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98A0148704C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3741, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98A0154254B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3742, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98B0071257D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3743, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98B008AD64E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3744, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98B008B16B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3745, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B008C16E3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3746, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98B00945C80 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3747, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98B0094FDCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3748, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98B0094FDDE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3749, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00950DF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3750, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B0095862C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3751, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B009652B9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3752, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00968561 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3753, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B00973FF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3754, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98B0097525E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3755, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B00979D81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3756, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98B00982C56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3757, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98B009B7D8A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3758, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98B009D3AF6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3759, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B009DA65D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3760, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98B009E3371 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3761, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98B00A04F0D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3762, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98B00A1323B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3763, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98B00A17751 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3764, N'003592', N'纪晶晶', N'101.231.72.95', CAST(0x0000A98B00A6B24B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3765, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98B00A71102 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3766, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98B00A98B26 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3767, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98B00AA789F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3768, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98B00AA8DD9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3769, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98B00AAE701 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3770, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98B00ACB139 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3771, N'0104025', N'上海熙巢贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00ADA1EF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3772, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98B00AE06D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3773, N'005030', N'姚佳琳', N'101.231.72.95', CAST(0x0000A98B00AF277D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3774, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98B00AF917C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3775, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98B00AFD5B6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3776, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00B146B8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3777, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98B00B15FE9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3778, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B1FFB5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3779, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B2265A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3780, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B4C0ED AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3781, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98B00B5AC5F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3782, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98B00B8A760 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3783, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B99140 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3784, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B99291 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3785, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B00B99D55 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3786, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98B00BC6394 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3787, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98B00BDDD6F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3788, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98B00BE8AE3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3789, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98B00BEA641 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3790, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98B00BEB940 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3791, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00BF98C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3792, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00BFB03A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3793, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98B00BFB5E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3794, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00C07E84 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3795, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A98B00C24DF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3796, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00C27E89 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3797, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98B00C4AAD6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3798, N'000109', N'施春艳', N'101.231.72.95', CAST(0x0000A98B00C4C94B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3799, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00C85110 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3800, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98B00CA9A81 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3801, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A98B00CBA390 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3802, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98B00CBD98D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3803, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98B00CC5602 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3804, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98B00CC7EFA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3805, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98B00CD7568 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3806, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98B00D6D294 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3807, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A98B00D7E728 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3808, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00DA57F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3809, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98B00DA77DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3810, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00DE47C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3811, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98B00DE6B8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3812, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98B00E6349F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3813, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98B00E7C7F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3814, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98B00E95E48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3815, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98B00E9DA0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3816, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98B00EA125D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3817, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98B00EADAF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3818, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98B00EDED94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3819, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98B00EE9E78 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3820, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98B00F05494 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3821, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00F0DABF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3822, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98B00F12888 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3823, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98B00F75766 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3824, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98B00F85780 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3825, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98B00F8EF17 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3826, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98B00F9384A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3827, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98B00FA8713 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3828, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98B01006B01 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3829, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98B01031D61 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3830, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98B01038C9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3831, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98B0104BF99 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3832, N'0113036', N'上海瀛高贸易有限公司', N'101.231.72.95', CAST(0x0000A98B01066619 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3833, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98B010880AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3834, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98B0109BD2B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3835, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98B010A17D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3836, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98B010B242D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3837, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98B010C8272 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3838, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98B010E31D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3839, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B010F9E1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3840, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B010FFB77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3841, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98B01100324 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3842, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98B0110CC67 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3843, N'003564', N'崔滨伟', N'101.231.72.95', CAST(0x0000A98B0110E5EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3844, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98B0113E6AB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3845, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98B0115AFCF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3846, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98B01167151 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3847, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98B011C6C65 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3848, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98B011E56B2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3849, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98B011E8597 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3850, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98B012B433E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3851, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98B012B9D63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3852, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98B012BB341 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3853, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98B0136980B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3854, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98B01437639 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3855, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98B014683E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3856, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98B014A4646 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3857, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98B01511A50 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3858, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98B016B6665 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3859, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98C006B46CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3860, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98C008B292E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3861, N'000105', N'刘燕军', N'101.231.72.95', CAST(0x0000A98C008C183A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3862, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98C008C3703 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3863, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98C008C5EAE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3864, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98C008CD934 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3865, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98C008D231D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3866, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98C008F0401 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3867, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C009005D7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3868, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C00900602 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3869, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00902B56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3870, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00931679 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3871, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00932F0B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3872, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98C0093F232 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3873, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98C0096EAEB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3874, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98C0097FA07 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3875, N'0113013', N'上海城庄建材经营部', N'101.231.72.95', CAST(0x0000A98C009915AA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3876, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98C009A3548 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3877, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A98C009AEB25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3878, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98C009B32E6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3879, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98C009B9D22 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3880, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98C009F7B48 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3881, N'003242', N'刘艳', N'101.231.72.95', CAST(0x0000A98C009FA49E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3882, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98C00A07D6A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3883, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98C00A11D15 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3884, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00A156DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3885, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98C00A1D990 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3886, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00A23A9A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3887, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98C00A31280 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3888, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98C00A5D3D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3889, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98C00A671D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3890, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98C00A6B07C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3891, N'002800', N'郭韵囡', N'101.231.72.95', CAST(0x0000A98C00A6B1C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3892, N'0106003', N'上海帕布洛厨卫有限公司', N'101.231.72.95', CAST(0x0000A98C00A7D888 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3893, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98C00A8972E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3894, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00A96DE7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3895, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98C00AA4F9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3896, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98C00AA9CBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3897, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98C00ACD9A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3898, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98C00ADDB57 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3899, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98C00B1BEFF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3900, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98C00B48C30 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3901, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00B4CD6F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3902, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00B50207 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3903, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00B51FF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3904, N'000104', N'孙杰', N'101.231.72.95', CAST(0x0000A98C00BA45DF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3905, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98C00BC95F7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3906, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98C00BCA540 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3907, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00BCFD2E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3908, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98C00BE0E2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3909, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98C00C016D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3910, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98C00C0ED94 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3911, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C00C1D104 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3912, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C00C616BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3913, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C00C616E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3914, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98C00CBCE2A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3915, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98C00CC8B5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3916, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98C00CCB4DB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3917, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00CFB988 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3918, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C00D68305 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3919, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00D6AED7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3920, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00D7D822 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3921, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00D86960 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3922, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00D88348 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3923, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98C00DAF299 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3924, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98C00DD8A3F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3925, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98C00DEF4FC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3926, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98C00DF6743 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3927, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98C00E031E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3928, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98C00E098A1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3929, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98C00E67EA1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3930, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00E75852 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3931, N'0102027', N'上海凯艾翔商贸有限公司', N'101.231.72.95', CAST(0x0000A98C00E79212 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3932, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98C00EC5EB4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3933, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98C00EE721A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3934, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00EECFFA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3935, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00EFC2A9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3936, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98C00F0356E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3937, N'002747', N'许骏', N'101.231.72.95', CAST(0x0000A98C00F08679 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3938, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00F09374 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3939, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00F101F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3940, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C00F635A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3941, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98C00F68669 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3942, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C00F8BD92 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3943, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98C00FC02C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3944, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98C00FCEA1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3945, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98C00FFF90F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3946, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C0100AE23 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3947, N'000552', N'陈宝娣', N'101.231.72.95', CAST(0x0000A98C01012117 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3948, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C0101D68D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3949, N'0113075', N'上海贯珂电器科技有限公司', N'101.231.72.95', CAST(0x0000A98C0103C27B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3950, N'000632', N'李雯', N'101.231.72.95', CAST(0x0000A98C010A5F70 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3951, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C010AE4D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3952, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98C010AE4FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3953, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98C010C03BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3954, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C011151C0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3955, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98C011A4BCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3956, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98C011B0B83 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3957, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98C0122EEB3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3958, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98C01256F1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3959, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98C01282D21 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3960, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98C0130B290 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3961, N'004369', N'杨彦', N'101.231.72.95', CAST(0x0000A98C0146DFF1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3962, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98C014912CE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3963, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98C01543E41 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3964, N'004500', N'康晔', N'101.231.72.95', CAST(0x0000A98D008B1EAC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3965, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98D009248EC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3966, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98D00952F82 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3967, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98D0096FF1B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3968, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98D0098552F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3969, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98D009BF670 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3970, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98D009D6905 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3971, N'0104024', N'上海宏地木业有限公司', N'101.231.72.95', CAST(0x0000A98D00A096B3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3972, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98D00A2C990 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3973, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98D00A4E3A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3974, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98D00A775BA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3975, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98D00AA474A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3976, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98D00ACD1BC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3977, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98D00AD879E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3978, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98D00ADD65F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3979, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98D00AE95D5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3980, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98D00B0091B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3981, N'0108012', N'上海闼闼建材有限公司', N'101.231.72.95', CAST(0x0000A98D00B4C9FB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3982, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98D00B4D592 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3983, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98D00B600F2 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3984, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D00B67CBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3985, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D00B6B2E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3986, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D00B6B301 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3987, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98D00B6C2E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3988, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D00BB1FF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3989, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98D00C4A24E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3990, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98D00C8EAE8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3991, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98D00CA1196 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3992, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98D00CC3C8D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3993, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98D00D0076E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3994, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98D00D5AA56 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3995, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98D00D922A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3996, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98D00DD8F71 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3997, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98D00E89119 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3998, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98D00EBFC1D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (3999, N'0113005', N'上海鸿廓实业有限公司', N'101.231.72.95', CAST(0x0000A98D00EF8B9F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4000, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D00F07190 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4001, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98D00F4F4A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4002, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D00F4FB8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4003, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D00F529A0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4004, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D00F529CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4005, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98D00F6D6C7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4006, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98D00FA56D6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4007, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98D00FFE3B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4008, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98D00FFF63B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4009, N'0104016', N'书香门地（上海）商贸有限公司', N'101.231.72.95', CAST(0x0000A98D01040309 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4010, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D01041037 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4011, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98D0104336D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4012, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D0105FD76 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4013, N'0103024', N'上海合亚建材有限公司', N'101.231.72.95', CAST(0x0000A98D0105FDA5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4014, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98D0107E7DC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4015, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98D011051E8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4016, N'0102025', N'上海昕励贸易有限公司', N'101.231.72.95', CAST(0x0000A98D0110AE5B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4017, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D0110B82C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4018, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98D01178BC0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4019, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D01197A43 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4020, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98D011A863F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4021, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98D011B9A42 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4022, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98D011BBE87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4023, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98D011CA913 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4024, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98D012107E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4025, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98D012364E4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4026, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98D012D75A8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4027, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98D0146EA0E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4028, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98E008B1F7F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4029, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98E0090D51A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4030, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98E0093CAE6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4031, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98E0093EFC6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4032, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98E0098A7C3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4033, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98E0098E876 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4034, N'0102016', N'上海华耐陶瓷工贸有限公司', N'101.231.72.95', CAST(0x0000A98E009AF058 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4035, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98E009D727E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4036, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98E009F399B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4037, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98E00A538FF AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4038, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98E00A6806A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4039, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98E00A93EA7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4040, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98E00AB4DA1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4041, N'0108036', N'上海欧派装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00AB5D6C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4042, N'002838', N'方巍巍', N'101.231.72.95', CAST(0x0000A98E00ABC592 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4043, N'0103040', N'上海欧神诺陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98E00AC8E06 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4044, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98E00AE6649 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4045, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98E00AF910A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4046, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98E00B02A7E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4047, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98E00B59B86 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4048, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00C6C99E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4049, N'0107008', N'上海攀晶装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00C75E72 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4050, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98E00C7724D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4051, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98E00C82031 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4052, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98E00CAAC77 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4053, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98E00CC20E5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4054, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00D8DEF8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4055, N'0101025', N'上海林内有限公司', N'101.231.72.95', CAST(0x0000A98E00D92C3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4056, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00DBCB00 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4057, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98E00E2C20C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4058, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98E00E2D40A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4059, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98E00E2F5C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4060, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98E00E4A1C4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4061, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98E00E4D4C1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4062, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98E00E6401D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4063, N'0101026', N'上海弘景冷暖设备有限公司', N'101.231.72.95', CAST(0x0000A98E00EA9112 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4064, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98E00EA99A5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4065, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98E00EF23BB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4066, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98E00F04F3C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4067, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00F06D4E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4068, N'0108024', N'上海浩广建筑工程有限公司', N'101.231.72.95', CAST(0x0000A98E00F07825 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4069, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E00F257E7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4070, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98E00FA2BE5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4071, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98E00FBF90F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4072, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98E00FF1B35 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4073, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98E01000D0C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4074, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98E0100C443 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4075, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E0101535F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4076, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98E0101E2B7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4077, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98E01041E18 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4078, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98E0107DD96 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4079, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E0108B2E9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4080, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E010E5F1F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4081, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98E0110A38E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4082, N'0105019', N'上海尚志家居有限公司', N'101.231.72.95', CAST(0x0000A98E0111E0A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4083, N'0113061', N'上海崇明室超建材销售有限公司', N'101.231.72.95', CAST(0x0000A98E01178E06 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4084, N'0113049', N'上海厚福石材装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98E011EAEBB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4085, N'0104036', N'上海拓桓木业制品有限公司', N'101.231.72.95', CAST(0x0000A98E011FB803 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4086, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98E01210F68 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4087, N'0102002', N'上海冰星卫浴有限公司', N'101.231.72.95', CAST(0x0000A98E0129810A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4088, N'0113038', N'上海菁虹贸易有限公司', N'101.231.72.95', CAST(0x0000A98E01467F63 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4089, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98F008D0AF5 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4090, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98F008EF1C9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4091, N'004822', N'曹爱香', N'101.231.72.95', CAST(0x0000A98F0094FAFE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4092, N'0103012', N'上海频浩贸易有限公司', N'101.231.72.95', CAST(0x0000A98F0095D8B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4093, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98F00970A10 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4094, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F009836A4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4095, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F0099078F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4096, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98F009B537D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4097, N'0103021', N'上海东鹏陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98F009BFE3C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4098, N'002856', N'吴佳俊', N'101.231.72.95', CAST(0x0000A98F009E8D66 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4099, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98F009EFA8E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4100, N'004222', N'倪俊', N'101.231.72.95', CAST(0x0000A98F009F71EA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4101, N'0106004', N'鲨胤国际贸易（上海）有限公司', N'101.231.72.95', CAST(0x0000A98F00A076D8 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4102, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98F00A09463 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4103, N'0107001', N'上海顺君建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98F00A0C3CA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4104, N'0105023', N'上海中正梁实业有限公司', N'101.231.72.95', CAST(0x0000A98F00A0F412 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4105, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98F00A19627 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4106, N'0103045', N'上海豪男尔商贸有限公司', N'101.231.72.95', CAST(0x0000A98F00A1E08E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4107, N'0115006', N'上海老板电器销售有限公司', N'101.231.72.95', CAST(0x0000A98F00A319FD AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4108, N'0103039', N'上海荣联陶瓷销售公司', N'101.231.72.95', CAST(0x0000A98F00A328A7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4109, N'000085', N'顾敏', N'101.231.72.95', CAST(0x0000A98F00A3675B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4110, N'admin', N'超级管理员', N'101.231.72.95', CAST(0x0000A98F00A4C2CB AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4111, N'0103032', N'上海瑞福陶瓷有限公司', N'101.231.72.95', CAST(0x0000A98F00A56331 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4112, N'0101014', N'上海亦晶实业发展有限公司', N'101.231.72.95', CAST(0x0000A98F00A62F8F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4113, N'0102010', N'上海起鑫实业有限公司', N'101.231.72.95', CAST(0x0000A98F00A66DF4 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4114, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00A6DD78 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4115, N'0104027', N'得高健康家居有限公司上海分公司', N'101.231.72.95', CAST(0x0000A98F00A7BC3E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4116, N'005136', N'黄瑀彬', N'101.231.72.95', CAST(0x0000A98F00A83106 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4117, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00A8FF1C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4118, N'0103023', N'上海九楹建材有限公司', N'101.231.72.95', CAST(0x0000A98F00AA30F9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4119, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00AAD51A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4120, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00AB4656 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4121, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98F00AD209C AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4122, N'0103037', N'上海伊派贸易有限公司', N'101.231.72.95', CAST(0x0000A98F00AD3FCC AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4123, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98F00AD4D2D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4124, N'0113065', N'上海市宝山区珏玉石材经营部', N'101.231.72.95', CAST(0x0000A98F00AD7C87 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4125, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00ADE5D3 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4126, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00AE192E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4127, N'000471', N'甘向阳', N'101.231.72.95', CAST(0x0000A98F00AE339D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4128, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00AE580B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4129, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00AF42DA AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4130, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00B01382 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4131, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00B0A99E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4132, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00B0E4F6 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4133, N'0102029', N'上海艾苏玛国际贸易有限公司', N'101.231.72.95', CAST(0x0000A98F00B13085 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4134, N'0104009', N'上海地洋实业有限公司', N'101.231.72.95', CAST(0x0000A98F00B1395A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4135, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00B13BF7 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4136, N'0108028', N'上海复亚建筑装饰工程有限公司', N'101.231.72.95', CAST(0x0000A98F00B1C664 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4137, N'0103005', N'上海惠美建材有限公司', N'61.171.210.130', CAST(0x0000A98F00B1DE6D AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4138, N'0102035', N'上海筑尚建材有限公司', N'101.231.72.95', CAST(0x0000A98F00B2F867 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4139, N'0103005', N'上海惠美建材有限公司', N'101.231.72.95', CAST(0x0000A98F00B36443 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4140, N'0113014', N'上海艺闽石业有限公司', N'101.231.72.95', CAST(0x0000A98F00B44E19 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4141, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98F00B549D9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4142, N'0113077', N'上海蚁人实业有限公司', N'101.231.72.95', CAST(0x0000A98F00B67DB9 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4143, N'0102016', N'上海华耐陶瓷工贸有限公司', N'61.171.210.130', CAST(0x0000A98F00B7E0B1 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4144, N'0113068', N'上海武权建材有限公司', N'101.231.72.95', CAST(0x0000A98F00B8029F AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4145, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98F0104B960 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4146, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F01052C72 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4147, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98F01054D1A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4148, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F01056A23 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4149, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F0105DB59 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4150, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F0106DEB0 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4151, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F01081C28 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4152, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F0109725E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4153, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F0109A248 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4154, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F010A2E14 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4155, N'admin', N'超级管理员', N'61.171.210.130', CAST(0x0000A98F010A7148 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4156, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F010AA035 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4157, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F010C4B9E AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4158, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F010CAF4A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4159, N'system', N'系统管理员', N'61.171.210.130', CAST(0x0000A98F01138D36 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4160, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D2010B467A AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4161, N'0123456', N'权限名', N'::1', CAST(0x0000A9D201139A38 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4162, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D20113A722 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4163, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D201161F69 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4164, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D201186E25 AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4165, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D20118C6BE AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4166, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D20119394B AS DateTime))
GO
INSERT [dbo].[tbUserLog] ([Id], [AccountName], [RealName], [IP], [CreateTime]) VALUES (4167, N'003564', N'崔滨伟', N'::1', CAST(0x0000A9D5009A1C86 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbUserLog] OFF
GO
SET IDENTITY_INSERT [dbo].[tbUserRole] ON 

GO
INSERT [dbo].[tbUserRole] ([Id], [UserId], [RoleId]) VALUES (2, 936, 89)
GO
INSERT [dbo].[tbUserRole] ([Id], [UserId], [RoleId]) VALUES (3, 940, 94)
GO
INSERT [dbo].[tbUserRole] ([Id], [UserId], [RoleId]) VALUES (7, 939, 90)
GO
SET IDENTITY_INSERT [dbo].[tbUserRole] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编码：唯一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbRole', @level2type=N'COLUMN',@level2name=N'RoleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户ID(网站关联的AccountID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户密码（32位MD5加密）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系的邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介绍描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUser', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUserLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUserLog', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUserLog', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前设备登陆IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUserLog', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbUserLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
