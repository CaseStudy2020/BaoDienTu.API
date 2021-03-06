USE [Online-Newspaper-DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Gender] [bit] NOT NULL,
	[DoB] [datetime2](7) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[DoB] [date] NULL,
	[Emaill] [nvarchar](max) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[DateCreated] [date] NOT NULL,
	[DateModified] [date] NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_AuthorId] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ContentComment] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[ParentCommentId] [int] NULL,
	[isDeleted] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Comment__C3B4DFCA5421694E] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hashtag](
	[HashTagId] [int] IDENTITY(1,1) NOT NULL,
	[HashTagName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Hashtag] PRIMARY KEY CLUSTERED 
(
	[HashTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[PostId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikeHistory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikeHistory](
	[LikeHistoryId] [int] NOT NULL,
	[CommentId] [int] NULL,
	[UserId] [nvarchar](450) NULL,
	[isLike] [bit] NULL,
 CONSTRAINT [PK__LikeHist__551027173C2006A9] PRIMARY KEY CLUSTERED 
(
	[LikeHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Like] [int] NOT NULL,
	[Link] [varchar](200) NULL,
	[Status] [int] NOT NULL,
	[PostHastagId] [int] NULL,
	[AuthorId] [nvarchar](450) NOT NULL,
	[SubcategoryId] [int] NOT NULL,
	[View] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[AverageRate] [decimal](18, 0) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Thumbnail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostHashTag]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostHashTag](
	[PostHashTagId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[HashTagId] [int] NOT NULL,
 CONSTRAINT [PK_PostHashTag] PRIMARY KEY CLUSTERED 
(
	[PostHashTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[PostId] [int] NOT NULL,
	[RateValue] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](200) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200802095131_InitIdentityDb', N'3.1.6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'46a2b053-d0be-4bd6-8949-af4fb95dccde', N'coviviv', N'COVID98@GMAIL.COM', N'coviviv', N'COVID98@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPcVkNbECLs9fKCYxb/6DOyKpmUo0YRYagDAgGYsnsw8R3iSovEhXih5eVvy32N6dg==', N'T76R6W5753FFHRBDPSGVL2ANJJNWQZYE', N'c7514251-f63f-4ffa-b517-2ac903484c20', N'string', 0, 0, NULL, 1, 0, 1, CAST(N'2020-08-12T03:25:38.8133333' AS DateTime2), N'dsdsđs', N'28dsdsđs', 0, CAST(N'2020-08-06T08:21:20.4456312' AS DateTime2), CAST(N'2020-08-12T10:26:29.6466667' AS DateTime2), N'aaaa')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'56e3c62e-7dd2-4acf-a372-cda477c80326', N'covid19@gmail.com', N'COVID19@GMAIL.COM', N'covid19@gmail.com', N'COVID19@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHr7AlqCWB62hE92sXL/bBAFZxpMupW1k1R1WEWtTkbg87TZxh0WQZ7O2zNiBBCf4Q==', N'QMVKCQYSKNUIGQ7KK5J244ZMT2VK7EHJ', N'62138a32-b67e-496b-a22d-19a2a764b1cd', NULL, 0, 0, NULL, 1, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'6f585f17-4856-4ad5-9dc7-46673e3e1b81', N'covid25@gmail.com', N'COVID25@GMAIL.COM', N'covid25@gmail.com', N'COVID25@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH4iPzTjfixvffY2IJcOeKaBAl3saXgmne1YTSGMlsEf39kGbgpLc7wfpxDpcrFX6Q==', N'LTM5NXC3ZPXKDM3OX5PL3G7AORHQOV36', N'c9564923-d3f3-4960-836d-11900b3f8fee', NULL, 0, 0, NULL, 1, 0, 1, CAST(N'1983-06-27T06:27:00.0000000' AS DateTime2), N'Dolor voluptate et d', N'Quam sint aliquam c', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'c7e333b8-5172-427a-9247-bec2af91c683', N'covid90@gmail.com', N'COVID90@GMAIL.COM', N'covid90@gmail.com', N'COVID90@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMf+gU5Y0tcBw7wM/u4vzEFwhC4X04IXOfwnO4S3D8UIQU8VasNPVxpxCxNHzax38w==', N'RLIQPIHCE3RLZUJ75KRT35H3ZZOY6AZZ', N'7ff395c2-87cb-4921-810f-9b34e8ca24f8', NULL, 0, 0, NULL, 1, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, CAST(N'2020-08-10T11:06:18.6844096' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'ce2ab2bf-c15d-4d59-b07a-e749d3f63bae', N'Covid89@gmail.com', N'COVID89@GMAIL.COM', N'Covid89@gmail.com', N'COVID89@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJhRduOnviEvDYpcIJr69lknkEC81ITK83pYXrGh1CGhKJZO8Bs7RDM5LbIBbxzdiw==', N'NBQEVYEIV6KF6SI2Z2APQDCAZB746HOU', N'de625166-283a-48b3-aa3a-431753c73c4e', N'0973586506', 0, 0, NULL, 1, 0, 1, CAST(N'2020-08-19T00:00:00.0000000' AS DateTime2), NULL, N'25 nguyen tri phuong', 0, CAST(N'2020-08-10T11:14:23.8475924' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'HiepHoang')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'd4b99a7e-dcd3-4662-a92d-6646d0cf7e49', N'covid99@gmail.com', N'COVID99@GMAIL.COM', N'covid99@gmail.com', N'COVID99@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHrStN1yBbpl8Dm0wE/BAAOFdxw2tDXyRxBmu3vZKmsMW0CBunzS7cgz+c2Sh37C5A==', N'2FP2BGT2XERUP2MMFRR76MOPG55VFSIV', N'4773d6e6-574f-403c-aba1-f367f9c4a1cc', NULL, 0, 0, NULL, 1, 0, 1, CAST(N'2020-08-05T07:28:22.5840000' AS DateTime2), N'sđs', N'sdsds', 0, CAST(N'2020-08-05T14:28:54.5497451' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'string')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'f01705f6-9938-4691-a202-eb0e3d778f44', N'covid23', N'COVID23', N'covid23', N'COVID23', 0, N'AQAAAAEAACcQAAAAEN//4nCP7nUfb5fQVS8CAw+g50DpKamnZ3VPakxgCkA3nZtQBklc+uWJFmfNXRd2rA==', N'KCEBWOC2UU4WYXNWPPQVOYMEBRO7QLDC', N'81b1f376-bf77-40e5-aa16-91bb1b0c9689', NULL, 0, 0, NULL, 1, 0, 1, CAST(N'2020-08-04T04:37:21.8480000' AS DateTime2), N'string', N'28 nguyen tri phuong', 0, CAST(N'2020-08-04T04:37:21.8480000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'f4863bf1-6d4b-426b-a6ad-3d350ab23355', N'covid75@gmail.com', N'COVID75@GMAIL.COM', N'covid75@gmail.com', N'COVID75@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGi190GrZoxgTy2AnoMczUh1ufDRnPq2cgd/zvz5LSms8TDNbcGloBsq+0cR1a3TMg==', N'ITBUE5IRGVPEBRFEILJSHQBRMYLHSXPJ', N'8557f3d1-a3a1-4f6d-8ebd-aabc237a8d71', N'0973586506', 0, 0, NULL, 1, 0, 0, CAST(N'2020-08-13T00:00:00.0000000' AS DateTime2), NULL, N'25 nguyen tri phuong', 0, CAST(N'2020-08-10T11:21:23.7473700' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'HiepHoang2222222')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'fbca3bfc-ae3f-4fdd-8e28-6952360fc0bf', N'covid97@gmail.com', N'COVID97@GMAIL.COM', N'covid97@gmail.com', N'COVID97@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECAHgoukxocyP/CNOQJ7KYUOiy7g+1lOQ89AJMkTR9Uav8ROIu3x2Ew1E5elWwQPYw==', N'D4OQIIWRREPAPIJB4DVYSPE6LSJDCDFR', N'5e95fee1-9b4e-4f42-9457-f953699a40e4', NULL, 0, 0, NULL, 1, 0, 1, CAST(N'2020-07-31T08:29:00.0000000' AS DateTime2), N'', N'<p>dsdsd</p>
', 0, CAST(N'2020-08-06T08:30:15.9440904' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender], [DoB], [Avatar], [Address], [IsDeleted], [DateCreated], [DateModified], [FullName]) VALUES (N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'covid20@gmail.com', N'COVID20@GMAIL.COM', N'covid20@gmail.com', N'COVID20@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMedS+DgX8+F0aurkfrqGaYXACzKn6WO48fOg+7/fc2e7DD/SfbnU2F3wfOITQ4KoA==', N'WWPNZ32Z5HLS4TJGAIUGRQO6YAQWE7RD', N'2098bae0-4eab-400b-a4fc-8571b4942c61', NULL, 0, 0, NULL, 1, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (1, N'Nguyen', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'mail', N'292929292', N'day la address', N'day la avartar', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-13' AS Date), 0)
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (2, N'Hiep', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'Email', N'292929292', N'day la address hiep', N'day la avartar Hiep', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-13' AS Date), 0)
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (3, N'Vu', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'Mail', N'2929292929', N'Day la address Vu', N'day la avartar Vu', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-12' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (1, N'Thời sự', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (2, N'Thế giới', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (3, N'Tài chính', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (4, N'Kinh doanh', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (5, N'Đời sống', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (6, N'Văn hóa', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (7, N'Giải trí', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (8, N'Giới trẻ', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (9, N'Giáo dục', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (10, N'Thể thao', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (11, N'Sức khỏe', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (12, N'Du lịch', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (13, N'Công nghệ', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (14, N'Xe', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (15, N'Game', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (16, N'Thời trang trẻ', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (17, N'Thế giới2', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (2, 17, N'56e3c62e-7dd2-4acf-a372-cda477c80326', N'godododododo', CAST(N'2020-08-03T19:16:15.000' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (8, 17, N'56e3c62e-7dd2-4acf-a372-cda477c80326', N'contentgood', CAST(N'2020-08-03T19:24:13.620' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (11, 17, N'56e3c62e-7dd2-4acf-a372-cda477c80326', N'contentgood', CAST(N'2020-08-03T19:26:01.910' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (12, 16, N'56e3c62e-7dd2-4acf-a372-cda477c80326', N'contentgood', CAST(N'2020-08-03T19:26:40.923' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (16, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'dddddddd', CAST(N'2020-08-04T08:09:10.043' AS DateTime), 2, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (17, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'verygoooood', CAST(N'2020-08-04T08:12:47.920' AS DateTime), 2, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (21, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'DSDSDSD', CAST(N'2020-08-04T08:29:30.240' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (22, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'DSDSDSDSDDSD', CAST(N'2020-08-04T08:31:18.590' AS DateTime), 21, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (23, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'', CAST(N'2020-08-04T08:33:37.320' AS DateTime), 21, 0, 0)
INSERT [dbo].[Comment] ([CommentId], [PostId], [UserId], [ContentComment], [DateCreated], [ParentCommentId], [isDeleted], [Status]) VALUES (24, 17, N'ffba408b-83f0-4c20-b736-590ed1d9d194', N'', CAST(N'2020-08-04T08:34:31.820' AS DateTime), 2, 0, 0)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Hashtag] ON 

INSERT [dbo].[Hashtag] ([HashTagId], [HashTagName]) VALUES (1, N'Xe')
INSERT [dbo].[Hashtag] ([HashTagId], [HashTagName]) VALUES (2, N'Thể thao')
INSERT [dbo].[Hashtag] ([HashTagId], [HashTagName]) VALUES (3, N'Thế giới')
SET IDENTITY_INSERT [dbo].[Hashtag] OFF
GO
INSERT [dbo].[History] ([PostId], [UserId], [Date]) VALUES (13, N'46a2b053-d0be-4bd6-8949-af4fb95dccde', CAST(N'2020-08-11' AS Date))
INSERT [dbo].[History] ([PostId], [UserId], [Date]) VALUES (14, N'46a2b053-d0be-4bd6-8949-af4fb95dccde', CAST(N'2020-08-11' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (13, N'Tổng thống Trump: Người Mỹ sẽ phải học tiếng Trung nếu ông Biden đắc cử', N'Người Việt trải nghiệm Las Vegas ''không bao giờ ngủ'' trong dịch Covid-19.Mùa hè gây ấn tượng với du khách ở nơi này bởi mùa hè là mùa cao điểm của du lịch nên cuộc sống luôn náo động và nhộn nhịp 24/7. Những sòng bạc (casino) đủ kiểu kiến trúc lộng lẫy, tráng lệ trong ánh đèn nhiều màu hấp dẫn dòng người đông đúc đang chen chúc nhau trên đường phố.', 1, N'covid.com.vn', 0, 1, N'56e3c62e-7dd2-4acf-a372-cda477c80326', 1, 9, CAST(N'2020-08-03T15:11:11.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, N'lib/img/gallery/banner-cap1.png')
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (14, N'Xiaomi giới thiệu OLED TV trong suốt, giá 7.195 USD', N'Người Việt trải nghiệm Las Vegas ''không bao giờ ngủ'' trong dịch Covid-19.Mùa hè gây ấn tượng với du khách ở nơi này bởi mùa hè là mùa cao điểm của du lịch nên cuộc sống luôn náo động và nhộn nhịp 24/7. Những sòng bạc (casino) đủ kiểu kiến trúc lộng lẫy, tráng lệ trong ánh đèn nhiều màu hấp dẫn dòng người đông đúc đang chen chúc nhau trên đường phố.', 0, N'string', 0, 1, N'56e3c62e-7dd2-4acf-a372-cda477c80326', 2, 8, CAST(N'2020-08-03T15:13:21.913' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, N'lib/img/gallery/banner-cap2.png')
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (15, N'title', N'Người Việt trải nghiệm Las Vegas ''không bao giờ ngủ'' trong dịch Covid-19.Mùa hè gây ấn tượng với du khách ở nơi này bởi mùa hè là mùa cao điểm của du lịch nên cuộc sống luôn náo động và nhộn nhịp 24/7. Những sòng bạc (casino) đủ kiểu kiến trúc lộng lẫy, tráng lệ trong ánh đèn nhiều màu hấp dẫn dòng người đông đúc đang chen chúc nhau trên đường phố.', 0, N'', 0, NULL, N'56e3c62e-7dd2-4acf-a372-cda477c80326', 1, 7, CAST(N'2020-08-03T15:26:17.457' AS DateTime), CAST(0 AS Decimal(18, 0)), 0, N'lib/img/gallery/banner-cap3.png')
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (16, N'covid222', N'Người Việt trải nghiệm Las Vegas ''không bao giờ ngủ'' trong dịch Covid-19.Mùa hè gây ấn tượng với du khách ở nơi này bởi mùa hè là mùa cao điểm của du lịch nên cuộc sống luôn náo động và nhộn nhịp 24/7. Những sòng bạc (casino) đủ kiểu kiến trúc lộng lẫy, tráng lệ trong ánh đèn nhiều màu hấp dẫn dòng người đông đúc đang chen chúc nhau trên đường phố.', 0, N'', 0, NULL, N'56e3c62e-7dd2-4acf-a372-cda477c80326', 1, 6, CAST(N'2020-08-03T16:08:09.080' AS DateTime), CAST(0 AS Decimal(18, 0)), 0, N'lib/img/gallery/banner-cap4.png')
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (17, N'covid1999999', N'Người Việt trải nghiệm Las Vegas ''không bao giờ ngủ'' trong dịch Covid-19.Mùa hè gây ấn tượng với du khách ở nơi này bởi mùa hè là mùa cao điểm của du lịch nên cuộc sống luôn náo động và nhộn nhịp 24/7. Những sòng bạc (casino) đủ kiểu kiến trúc lộng lẫy, tráng lệ trong ánh đèn nhiều màu hấp dẫn dòng người đông đúc đang chen chúc nhau trên đường phố.', 0, N'string', 0, 1, N'56e3c62e-7dd2-4acf-a372-cda477c80326', 1, 5, CAST(N'2020-08-03T16:16:37.410' AS DateTime), CAST(0 AS Decimal(18, 0)), 0, N'lib/img/gallery/banner-cap1.png')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[PostHashTag] ON 

INSERT [dbo].[PostHashTag] ([PostHashTagId], [PostId], [HashTagId]) VALUES (1, 1, 1)
INSERT [dbo].[PostHashTag] ([PostHashTagId], [PostId], [HashTagId]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[PostHashTag] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (1, N'Chính trị', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (2, N'Pháp luật', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (3, N'Dân sinh', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (4, N'Lao động', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (5, N'Việc làm', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (6, N'Kinh tế thế giới', 2, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (7, N'Quân sự', 2, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (8, N'Câu chuyện văn hóa', 3, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (9, N'Khảo cứu', 3, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (10, N'Phim', 4, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (11, N'Truyền hình', 4, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (12, N'Bóng đá Việt Nam', 5, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (13, N'Bóng đá quốc tế', 5, 1)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
ALTER TABLE [dbo].[Author] ADD  CONSTRAINT [DF_AuthorId_isDelete]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__isDelet__05D8E0BE]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[LikeHistory] ADD  CONSTRAINT [DF__LikeHisto__isLik__0A9D95DB]  DEFAULT ((0)) FOR [isLike]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_Average Rate]  DEFAULT ((0)) FOR [AverageRate]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SubCategory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK__Comment__ParentC__04E4BC85] FOREIGN KEY([ParentCommentId])
REFERENCES [dbo].[Comment] ([CommentId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK__Comment__ParentC__04E4BC85]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AspNetUsers]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post1] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post1]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_AspNetUsers]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Post]
GO
ALTER TABLE [dbo].[LikeHistory]  WITH CHECK ADD  CONSTRAINT [FK__LikeHisto__Comme__08B54D69] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comment] ([CommentId])
GO
ALTER TABLE [dbo].[LikeHistory] CHECK CONSTRAINT [FK__LikeHisto__Comme__08B54D69]
GO
ALTER TABLE [dbo].[LikeHistory]  WITH CHECK ADD  CONSTRAINT [FK_LikeHistory_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LikeHistory] CHECK CONSTRAINT [FK_LikeHistory_AspNetUsers]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_AspNetUsers] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_AspNetUsers]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostHashTag] FOREIGN KEY([PostHastagId])
REFERENCES [dbo].[PostHashTag] ([PostHashTagId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostHashTag]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_SubCategory] FOREIGN KEY([SubcategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_SubCategory]
GO
ALTER TABLE [dbo].[PostHashTag]  WITH CHECK ADD  CONSTRAINT [FK_PostHashTag_Hashtag] FOREIGN KEY([HashTagId])
REFERENCES [dbo].[Hashtag] ([HashTagId])
GO
ALTER TABLE [dbo].[PostHashTag] CHECK CONSTRAINT [FK_PostHashTag_Hashtag]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Post]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
/****** Object:  StoredProcedure [dbo].[getComment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: 03/08/2020
-- Description:	Create Comment
-- =============================================
CREATE PROCEDURE [dbo].[getComment]
    @CommentId int
AS
    -- body of the stored procedure
    SELECT * FROM dbo.Comment c WHERE c.CommentId = @CommentId and c.isDeleted = 0
GO
/****** Object:  StoredProcedure [dbo].[saveHistory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[saveHistory]
    @UserId NVARCHAR(450),
    @PostId int
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    BEGIN
        IF NOT EXISTS( select 1 from dbo.AspNetUsers u WHERE u.Id =@UserId)
        SET @message = 'Not valid User'
        ;
        IF NOT EXISTS( select 1 from dbo.Post p WHERE p.PostId = @PostId)
        SET @message = 'Not valid Post'
        ;
        IF ( EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId)
        and EXISTS( select 1 from dbo.Post p where p.PostId = @PostId))
        BEGIN
            INSERT INTO [dbo].[History]
            ( 
                UserId,PostId,[Date]
            )
            VALUES
            ( 
                @UserId,@PostId,GETDATE()
            )
            SET @message = 'Done'
        END
    END
END TRY
BEGIN CATCH
    SET @message = 'Something error!'
END CATCH
SELECT @message as [Message]
GO
/****** Object:  StoredProcedure [dbo].[SP_addComment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_addComment]
    @PostId int,
    @UserId nvarchar(450),
    @ContentComment nvarchar(max),
    @ParentCommentId int 
AS
DECLARE @message nvarchar(50)= 'Add fail'
if @ParentCommentId=-1 SET @ParentCommentId=NULL;
BEGIN
​
    BEGIN TRY
        IF  (EXISTS(select 1 from dbo.Post p where p.PostId = @PostId) and
            EXISTS(select 1 from dbo.[AspNetUsers] u where u.Id = @UserId)
            )
            BEGIN
                INSERT INTO [dbo].[Comment]
                ( 
                PostId,UserId,ContentComment,DateCreated,ParentCommentId
                )
                VALUES
                ( 
                @PostId,@UserId,@ContentComment,GETDATE(),@ParentCommentId
                )
                SET @message ='Add complete'
            END
            
        ;
        ELSE
            BEGIN
                IF NOT EXISTS(select 1 from dbo.Post p WHERE p.PostId = @PostId) SET @message = 'Post is not valid';
                IF NOT EXISTS (select 1 from dbo.[AspNetUsers] u where u.Id = @UserId ) SET @message ='User is not valid';
            END
        ;
    END TRY
​
    BEGIN CATCH
        SET @message = 'Some thing is wrong'
    END CATCH
​
END
SELECT @message as [Message] , [dbo].[Comment].CommentId as CommentId from [dbo].[Comment]
GO
/****** Object:  StoredProcedure [dbo].[SP_createCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_createCategory]
    @CategoryName nvarchar(200)
AS
DECLARE @Message nvarchar(200)
    
BEGIN
    IF EXISTS(select 1 from dbo.Category c WHERE c.CategoryName = @CategoryName )
        BEGIN
            SET @Message = 'Already exist'
            SELECT *, @Message as [Message] FROM dbo.Category c WHERE c.CategoryName=@CategoryName
        END
        
    ;
    ELSE
        BEGIN
            INSERT INTO dbo.Category(CategoryName)
            VALUES( @CategoryName)
            SET @Message = 'Add success'
            SELECT *, @Message as [Message] FROM dbo.Category c WHERE c.CategoryName=@CategoryName
        END
        
    ;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_createModelFromSQLTable]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
​
CREATE PROCEDURE [dbo].[SP_createModelFromSQLTable]  
(  
     @TableName SYSNAME ,  
     @CLASSNAME VARCHAR(500)  = 'public class'
)  
AS 
DECLARE @Result VARCHAR(MAX)  
SET @Result = @CLASSNAME + @TableName + '  
{'   
BEGIN  
    
SELECT @Result = @Result + '  
    public ' + ColumnType + NullableSign + ' ' + ColumnName + ' { get; set; }'  
FROM  
(  
    SELECT   
        REPLACE(col.NAME, ' ', '_') ColumnName,  
        column_id ColumnId,  
        CASE typ.NAME   
            WHEN 'bigint'   THEN 'long'  
            WHEN 'binary'   THEN 'byte[]'  
            WHEN 'bit'      THEN 'bool'  
            WHEN 'char'     THEN 'string'  
            WHEN 'date'     THEN 'DateTime'  
            WHEN 'datetime' THEN 'DateTime'  
            WHEN 'datetime2' Then 'DateTime'  
            WHEN 'datetimeoffset' THEN 'DateTimeOffset'  
            WHEN 'decimal'  THEN 'decimal'  
            WHEN 'float'    THEN 'float'  
            WHEN 'image'    THEN 'byte[]'  
            WHEN 'int'      THEN 'int'  
            WHEN 'money'    THEN 'decimal'  
            WHEN 'nchar'    THEN 'char'  
            WHEN 'ntext'    THEN 'string'  
            WHEN 'numeric'  THEN 'decimal'  
            WHEN 'nvarchar' THEN 'string'  
            WHEN 'real'     THEN 'double'  
            WHEN 'smalldatetime' THEN 'DateTime'  
            WHEN 'smallint' THEN 'short'  
            WHEN 'smallmoney' THEN 'decimal'  
            WHEN 'text'     THEN 'string'  
            WHEN 'time'     THEN 'TimeSpan'  
            WHEN 'timestamp' THEN 'DateTime'  
            WHEN 'tinyint'  THEN 'byte'  
            WHEN 'uniqueidentifier' THEN 'Guid'  
            WHEN 'varbinary' THEN 'byte[]'  
            WHEN 'varchar'  THEN 'string'  
            ELSE 'UNKNOWN_' + typ.NAME  
        END ColumnType,  
        CASE   
            WHEN col.is_nullable = 1 and typ.NAME in ('bigint', 'bit', 'date', 'datetime', 'datetime2', 'datetimeoffset', 'decimal', 'float', 'int', 'money', 'numeric', 'real', 'smalldatetime', 'smallint', 'smallmoney', 'time', 'tinyint', 'uniqueidentifier')   
            THEN '?'   
            ELSE ''   
        END NullableSign  
    FROM SYS.COLUMNS col join sys.types typ on col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id  
    where object_id = object_id(@TableName)  
) t
ORDER BY ColumnId  
SET @Result = @Result  + '  
}'  
print @Result  
​
END
​
​
-- example to execute the stored procedure we just created
exec SP_createModelFromSQLTable 'FastInfoPost'
GO
/****** Object:  StoredProcedure [dbo].[SP_createNewPost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_createNewPost]
	-- Add the parameters for the stored procedure here
			@Title nvarchar(200)
           ,@Content nvarchar(max)
           ,@Like  int
           ,@Link varchar(200)
           ,@Status int
           ,@PostHastagId int
           ,@AuthorId nvarchar(450)
           ,@SubcategoryId int
           ,@View int
           ,@AverageRate decimal(18,0)
AS
DECLARE @Message nvarchar(50)
​
​
BEGIN
    IF NOT EXISTS(SELECT 1 FROM dbo.Post where Title = @Title )
    
        BEGIN TRY  
            -- Insert rows into table 'Post' in schema '[dbo]'
            INSERT INTO [dbo].[Post]
            ( -- Columns to insert data into
            Title, Content,[Like], Link, [Status],PostHastagId,AuthorId,SubcategoryId,[View],DateCreated,AverageRate
            )
            VALUES
            ( -- First row: values for the columns in the list above
            @Title, @Content, @Like,@Link,@Status,@PostHastagId,@AuthorId,@SubcategoryId,@View,GETDate(),@AverageRate
            )
            
            -- Add more rows here
​
            SET @Message = 'Add complete'
        END TRY  
        BEGIN CATCH  
            SET @Message = 'Add fail ' 
        END CATCH  
   
    ELSE
        SET @Message='Title is duplicated';
      
        Select @Message as [Message], SCOPE_IDENTITY() as PostId
    END
GO
/****** Object:  StoredProcedure [dbo].[SP_createNewPost2]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_createNewPost2]
    @Title nvarchar(200)
    ,@Content nvarchar(max)
    ,@AuthorId nvarchar(450)
    ,@SubcategoryId int
    ,@Thumbnail NVARCHAR(max)
AS
DECLARE @Message nvarchar(50)
BEGIN
    BEGIN TRY
        IF( EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @AuthorId)
            and EXISTS( select 1 from dbo.SubCategory sub where sub.SubCategoryId =@SubcategoryId))
        BEGIN
       
            INSERT INTO [dbo].[Post]
            ( 
            AuthorId,AverageRate,Content,DateCreated,IsDeleted,[Like],Link,PostHastagId,[Status],SubcategoryId,Thumbnail,Title,[View]
            )
            VALUES
            ( -- First row: values for the columns in the list above
            @AuthorId,0,@Content,GETDATE(),0,0,'',null,0,@SubcategoryId,@Thumbnail,@Title,0
            )
            SET @Message = 'Create is completed'
        END
        ;
        ELSE
        BEGIN
            IF NOT EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @AuthorId )
            SET @Message = 'Not found user'
            ;
            IF NOT EXISTS( select 1 from dbo.SubCategory sub where sub.SubCategoryId =@SubcategoryId)
            SET @Message = 'Not found subcategory'
        END
​
    END TRY
    BEGIN CATCH
        SET @Message = 'Some thing is wrong'
    END CATCH
END
SELECT @Message as [Message],SCOPE_IDENTITY() as PostId
GO
/****** Object:  StoredProcedure [dbo].[SP_createSubCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_createSubCategory]
    @CategoryId int,
    @SubCategoryName nvarchar(200)
AS
DECLARE @messenger NVARCHAR(200)
    IF EXISTS( SELECT 1 FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName)
        BEGIN
            SET @messenger = 'Already Exists'
            SELECT *, @messenger as [Message] FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName
        END
    ;
    ELSE
        BEGIN
            
            INSERT INTO dbo.SubCategory
            ( 
             CategoryId, SubCategoryName
            )
            VALUES
            ( -- First row: values for the columns in the list above
             @CategoryId, @SubCategoryName
            )
            SET @messenger = 'Add Success'
            SELECT *, @messenger as [Message] FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName
            
        END
    ;
GO
/****** Object:  StoredProcedure [dbo].[SP_editCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_editCategory]
   @CategoryId int,
   @CategoryName nvarchar(200)
AS
DECLARE @messgenger nvarchar(200)
BEGIN
    IF EXISTS(SELECT 1 FROM dbo.Category c WHERE c.CategoryId = @CategoryID )
        BEGIN
            UPDATE dbo.Category
            SET
                CategoryName = @CategoryName
            WHERE CategoryId = @CategoryId
            SET @messgenger = 'Edit success'
            SELECT *, @messgenger as [Message] FROM dbo.Category c WHERE c.CategoryId = @CategoryId
        END
    ;
    ELSE
        BEGIN
            SET @messgenger = ' Not Found'
            SELECT TOP(1) @CategoryId as CategoryId,@CategoryName as CategoryName, @messgenger as [Message] FROM dbo.Category
        END
    ;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_editComment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_editComment]
    @CommentID int,
    @ContentComment NVARCHAR(max)
​
AS
DECLARE @message nvarchar(100) = 'Edit fail'
BEGIN
    IF EXISTS( SELECT 1 FROM dbo.Comment c WHERE c.CommentId = @CommentID)
        BEGIN
            
            UPDATE [dbo].[Comment]
            SET
                [ContentComment] = @ContentComment
                
            WHERE CommentId = @CommentID
            SET @message = 'Edit success'
        END
    ;
    ELSE SET @message ='Not found comment'
    ;
    SELECT @message as [Message]
END
    
GO
/****** Object:  StoredProcedure [dbo].[SP_editSubCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_editSubCategory]
    @CategoryId int, 
    @SubCategoryId int,
    @SubCategoryName nvarchar(200)
AS
DECLARE @messenger nvarchar(200) = 'Edit fail'
BEGIN
    IF EXISTS(select 1 from dbo.Category c WHERE c.CategoryId = @CategoryId)
        BEGIN
            IF EXISTS( select 1 FROM dbo.SubCategory s WHERE s.SubCategoryId = @SubCategoryId)
            BEGIN
                UPDATE dbo.SubCategory
                SET CategoryId = @CategoryId, SubCategoryName = @SubCategoryName
                WHERE SubCategoryId = @SubCategoryId
​
                SET @messenger = 'Edit success'
                SELECT *, @messenger as [Message] FROM dbo.SubCategory s WHERE s.SubCategoryId = @SubCategoryId
            END
        END
        
    ;
    ELSE
        BEGIN
        SET @messenger = 'Edit fail'
         SELECT @messenger as [Message], @CategoryId as CategoryId, @SubCategoryId as SubcategoryId, @SubCategoryName as SubcategoryName
        END
    ;
​
END
GO
/****** Object:  StoredProcedure [dbo].[SP_get5FastInfoPost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_get5FastInfoPost]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
​
    -- Insert statements for procedure here
	SELECT top(5) p.Thumbnail, p.PostId, p.Title,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, (SELECT COUNT( c.ContentComment) 
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	FROM dbo.Post p
    WHERE p.IsDeleted = 0 AND p.Status=0
	ORDER BY p.DateCreated desc
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getAllCategory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	get all Category
-- =============================================
CREATE PROCEDURE [dbo].[SP_getAllCategory]
   
AS
    
    SELECT * FROM Category c
	WHERE c.IsDeleted=0
GO
/****** Object:  StoredProcedure [dbo].[SP_getAllHistory]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getAllHistory]
    @UserId NVARCHAR(450)
AS
DECLARE @message NVARCHAR(100)
IF ( EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
    and EXISTS( select 1 from dbo.History h where h.UserId = @UserId))
    BEGIN
        SET @message = 'Success'
        SELECT @message as [Message], p.PostId, p.DateCreated, p.Title,p.Thumbnail,p.[Like],p.Link,p.[View], h.Date AS DateView
        FROM dbo.History h INNER JOIN dbo.Post p ON h.PostId = p.PostId 
        ORDER BY p.DateCreated
    END
;
ELSE
BEGIN
    IF NOT EXISTS ( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
    SET @message ='User is not valid'
    ;
    ELSE
    SET @message ='History is emply'
    ;
    SELECT @message as [Message]
END
    
;
GO
/****** Object:  StoredProcedure [dbo].[SP_getAllPost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  -- Create the stored procedure in the specified schema
  CREATE PROCEDURE [dbo].[SP_getAllPost]
     
  AS
      -- body of the stored procedure
      SELECT *
      From [Online-Newspaper-DB].[dbo].[Post] p
	  WHERE p.IsDeleted=0 AND p.Status=0
	  ORDER BY p.DateCreated desc
GO
/****** Object:  StoredProcedure [dbo].[SP_getFastInfoPost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_getFastInfoPost]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
​
    -- Insert statements for procedure here
	SELECT p.Thumbnail, p.PostId, p.Title,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, (SELECT COUNT( c.ContentComment) 
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	FROM dbo.Post p
    WHERE p.IsDeleted = 0 AND P.Status=0
	ORDER BY p.DateCreated desc
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getListCommentByParentCommentId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_getListCommentByParentCommentId]
    @ParentCommentId int
AS
DECLARE @message NVARCHAR(100)
BEGIN
    IF ( EXISTS ( select 1 from dbo.Comment c where c.CommentId = @ParentCommentId)
        AND EXISTS(SELECT 1 FROM dbo.Comment c WHERE (c.ParentCommentId = @ParentCommentId and c.isDeleted = 0 and c.[Status] = 0 )))
    BEGIN
        SET @message = 'Found'
        SELECT *, @message as [Message] 
        FROM dbo.Comment c 
        WHERE (c.ParentCommentId = @ParentCommentId and c.isDeleted = 0 and c.[status] = 0 )
        ORDER BY c.DateCreated asc
    END
    ;
    ELSE
    BEGIN
        SET @message = 'Not found'
        SELECT @message as [Message]
    END
        
    ;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getListCommentByPostId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getListCommentByPostId]
    @PostId int
AS
DECLARE @message nvarchar(100) = 'Not found'
BEGIN
    IF EXISTS( SELECT * FROM dbo.Comment c inner join dbo.Post p on c.PostId = p.PostId WHERE p.PostId = @PostId )
        BEGIN
            SET @message = 'Found'
            Select *, @message as [Message] from dbo.Comment c where c.PostId = @PostId
        END
        
    ;
    ELSE
        Select @message as [Message]
    ;
    
END
    -- body of the stored procedure
    SELECT * FROM dbo.Comment c WHERE c.PostId = @PostId ORDER BY c.DateCreated
GO
/****** Object:  StoredProcedure [dbo].[SP_getListPostBySubCategoryId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getListPostBySubCategoryId]
     @SubCategoryId int
AS
DECLARE @message nvarchar(100) = 'Not found'
BEGIN
    if( exists( select * from dbo.SubCategory s inner join dbo.Post p on s.SubCategoryId = p.SubcategoryId WHERE p.SubcategoryId = @SubCategoryId))
        BEGIN
            SET @message = 'Found'
            SELECT *, @message as [Message] FROM dbo.Post p WHERE p.SubcategoryId = @SubCategoryId
        END
        
    ;
    ELSE
        SELECT @message as [Message]
    ;
END
  
GO
/****** Object:  StoredProcedure [dbo].[SP_getPostByCategoryId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_getPostByCategoryId] 
	@CategoryId int
AS
BEGIN
​
		SELECT *
	  FROM [dbo].[Post] p
	  Where p.CategoryId = @CategoryId AND p.IsDeleted = 0
	  order by p.DateCreated desc
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getPostByPostID]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getPostByPostID]
    @PostId int
​
-- add more stored procedure parameters here
AS
DECLARE @message nvarchar(50)
BEGIN
    IF EXISTS (SELECT * FROM dbo.Post p WHERE p.PostId = @PostID and p.IsDeleted = 0) 
        BEGIN
            SET @message = 'Success!'
            SELECT @message as [Message], p.PostId, p.Title,p.Content,p.[Like],p.Link,p.[Status],p.PostHastagId,p.AuthorId,p.SubcategoryId,p.[View],FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, p.AverageRate,p.IsDeleted,p.Thumbnail
            FROM dbo.Post p  WHERE p.PostId = @PostId and p.IsDeleted = 0 
        END
    ;
    ELSE 
    BEGIN
        SET @message = 'Invalid'
        SELECT @message as [Message]
    END
    ;
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getSubcategoryByCategoryId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getSubcategoryByCategoryId]
    @CategoryId int

AS
DECLARE @message nvarchar(125) = 'Not found'
BEGIN
    IF EXISTS(SELECT * FROM dbo.Category c INNER JOIN dbo.SubCategory s on c.CategoryId = s.CategoryId where c.CategoryId = @CategoryId )
        BEGIN
            SET @message = 'Found'
            select * from dbo.SubCategory s WHERE s.CategoryId = @CategoryId AND s.IsDeleted=0
        END
    ;
    ELSE
        SELECT @message as [Message]
    ;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getTop10MostViewOfDay]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	get top 10 most  view of day 
-- =============================================
CREATE PROCEDURE [dbo].[SP_getTop10MostViewOfDay]
	
AS
BEGIN
	SELECT TOP 10 p.Thumbnail,p.[View], p.PostId, p.Title,p.Content,SUBSTRING(p.Content,0, 250) as ShortContent,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated,(SELECT COUNT( c.ContentComment)
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	from Post p
	where  p.IsDeleted = 0
	order by p.[View] DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getTop5LastestPost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	get top 10 most  view of day
-- =============================================
CREATE PROCEDURE [dbo].[SP_getTop5LastestPost]
	
AS
BEGIN
	SELECT TOP 5 p.Thumbnail, p.PostId, p.Title,p.Content,SUBSTRING(p.Content,0, 160) as ShortContent,SUBSTRING(p.Content,0, 30) as ShortContent2,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated,(SELECT COUNT( c.ContentComment)
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	from Post p
	where  p.IsDeleted = 0 and p.Status = 0
	order by p.DateCreated DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getTopPostByDay]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getTopPostByDay]
    @DateToGet DATETIME,
    @NumberOfPost int
AS
BEGIN
    SELECT p.Thumbnail, p.PostId, p.Title,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, (SELECT COUNT( c.ContentComment) 
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	FROM dbo.Post p
	where CONVERT(DATE,p.DateCreated) = CONVERT(DATE, @DateToGet) and p.IsDeleted = 0
	order by p.[View] DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getUserByUserId]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getUserByUserId]
   @UserId NVARCHAR(450)
AS
DECLARE @message NVARCHAR(100)
IF EXISTS ( select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId and u.IsDeleted = 0)
    BEGIN
        SELECT Id,UserName,Email,PhoneNumber,Gender,DoB,Avatar,[Address],FullName
        FROM dbo.AspNetUsers u 
        WHERE u.Id = @UserId
        SET @message = 'Done'
    END
;
ELSE
    BEGIN
        SET @message = 'Not found user'
        SELECT @message as [Message]
    END
;
GO
/****** Object:  StoredProcedure [dbo].[sp_SavePost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Hiệp>
-- Create date: <29/07/2020>
-- Description:	create/update Post
-- =============================================
CREATE PROCEDURE [dbo].[sp_SavePost]
	@PostId INT,
	@Title NVARCHAR(200),
	@Content NVARCHAR(Max),
	@Like INT,
	@Link VARCHAR(200),
	@Status INT,
	@CategoryId INT,
	@PostHashTagId INT,
	@AuthorId INT,
	@SubCategoryId INT,
	@View INT,
	@AverageRate DECIMAL

AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Post
		IF(@PostId IS NULL OR @PostId = 0)
		BEGIN
		
INSERT INTO [dbo].[Post]
           ([Title]
           ,[Content]
           ,[Like]
           ,[Link]
           ,[Status]
           ,[PostHastagId]
           ,[AuthorId]
           ,[SubcategoryId]
           ,[View]
           ,[DateCreated]
           ,[AverageRate])
         
     VALUES
           (@Title
           ,@Content
           ,@Like
           ,@Link
           ,@Status
           ,@PostHashTagId
           ,@AuthorId
           ,@SubCategoryId
           ,@View
           ,GETDATE()
           ,@AverageRate)
        





			SET @PostId = SCOPE_IDENTITY()
			SET @Message = 'Post has been created successfully!'

		END
		ELSE --Update Post by Id
		BEGIN


UPDATE [dbo].[Post]
   SET [Title] = @Title
      ,[Content] = @Content
      ,[Like] = @Like
      ,[Link] = @Link
      ,[Status] = @Status

      ,[PostHastagId] = @PostHashTagId
      ,[AuthorId] = @AuthorId
      ,[SubcategoryId] = @SubCategoryId
      ,[View] = @View
      ,[DateCreated] = GETDATE()
      ,[AverageRate] = @AverageRate
      
			WHERE PostId=@PostId




	
			 SET @Message = 'Post has been updated successfully!'
		END

		SELECT @PostId AS PostId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @PostId = 0
		SELECT @PostId AS PostId, @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_softDelete]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_softDelete] 
	@PostId int
AS
DECLARE @message nvarchar(50)
SET @message = 'Invalid!'
BEGIN
	BEGIN TRY
		UPDATE dbo.Post
		SET IsDeleted = 1
		WHERE PostId = @PostId
		SET @message = 'Done!'
	END TRY
	BEGIN CATCH
		SET @message = 'Error!'
	END CATCH

	Select @PostId as PostId, @message as Message
END
GO
/****** Object:  StoredProcedure [dbo].[SP_softDeleteCategoryById]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_softDeleteCategoryById]
    @CategoryId int
AS
DECLARE @messenger nvarchar(200) = 'Soft delete  is fail'
BEGIN
    IF EXISTS (select 1 from dbo.Category c WHERE c.CategoryId = @CategoryId )
        BEGIN
            UPDATE dbo.Category SET IsDeleted = 1 where CategoryId = @CategoryId
            SET @messenger = 'Soft Delete is completed'
            SELECT *, @messenger as [Message] FROM dbo.Category c WHERE c.CategoryId = @CategoryId 
        END
    ;
    ELSE
    BEGIN
        SELECT @messenger as [Message] 
    END
    ;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_softDeleteComment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_softDeleteComment]
    @CommentId int
AS
DECLARE @message nvarchar(200) = 'Soft Delete is fail'
BEGIN
    IF  EXISTS ( select 1 from dbo.Comment c where c.CommentId = @CommentId and c.isDeleted = 0)
        BEGIN
            UPDATE [dbo].[Comment]
            SET isDeleted = 1
            WHERE CommentId = @CommentId ;
            SET @message = 'Soft Delete Complete'
        END
    ;
    ELSE 
        BEGIN
            IF EXISTS (SELECT 1 from dbo.Comment c where c.CommentId=@CommentId and c.isDeleted = 1)
            SET @message = 'This comment have been soft deleted before';
            ELSE SET @message = 'Not found comment';
        END
    ;
​
END
    SELECT @message as [Message], @CommentId as CommentId
GO
/****** Object:  StoredProcedure [dbo].[SP_softDeleteSubCategoryById]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_softDeleteSubCategoryById]
    @SubCategoryId int
AS
DECLARE @messenger nvarchar(200) = 'Soft delete  is fail'
BEGIN
    IF EXISTS (select 1 from dbo.SubCategory c WHERE c.SubCategoryId = @SubCategoryId )
        BEGIN
            UPDATE dbo.SubCategory SET IsDeleted = 1 where SubCategoryId = @SubCategoryId
            SET @messenger = 'Soft Delete is completed'
            SELECT *, @messenger as [Message] FROM dbo.SubCategory c WHERE c.SubCategoryId = @SubCategoryId 
        END
    ;
    ELSE
    BEGIN
        SELECT @messenger as [Message] 
    END
    ;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_updateComment]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_updateComment]
    @CommentId int,
    @PostId int,
    @UserId nvarchar(450),
    @ContentComment NVARCHAR(max)
AS
DECLARE @message nvarchar(max) = 'Update fail'
    BEGIN
        IF EXISTS (select 1 from dbo.Comment c where c.CommentId = @CommentId)
            BEGIN
                UPDATE [dbo].[Comment]
                SET
                    PostId = @PostId,
                    UserId = @UserId,
                    ContentComment = @ContentComment
                WHERE CommentId = @CommentId
                SET @message = 'Update complete'
            END
        ;
        ELSE
        SET @message = 'Not found Comment'
        ;
       
    END
    SELECT @message as [Message], @CommentId as CommentId
GO
/****** Object:  StoredProcedure [dbo].[SP_updatePost]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_updatePost]
			@PostId int,
			@Title nvarchar(200)
           ,@Content nvarchar(max)
           ,@Like  int
           ,@Link varchar(200)
           ,@Status int
           ,@PostHastagId int
           ,@AuthorId nvarchar(450)
           ,@SubcategoryId int
           ,@View int
           ,@AverageRate decimal(18,0),
			@IsDeleted bit,
			@Thumbnail nvarchar(Max)
-- add more stored procedure parameters here
AS
DECLARE @Message NVARCHAR(50) ='Fail'
​
BEGIN
    BEGIN TRY
 

UPDATE [dbo].[Post]
   SET [Title] = @Title
      ,[Content] = @Content
      ,[Like] = @Like
      ,[Link] = @Link
      ,[Status] = @Status
      ,[PostHastagId] = @PostHastagId
      ,[AuthorId] = @AuthorId
      ,[SubcategoryId] = @SubcategoryId
      ,[View] =@View
      ,[DateCreated] = GETDATE()
      ,[AverageRate] = @AverageRate
      ,[IsDeleted] = @IsDeleted
	  ,[Thumbnail] = @Thumbnail
        WHERE PostId = @PostId
        SET @Message = 'Done'
    END TRY
    BEGIN CATCH
        SET @Message ='Error'
    END CATCH
    
    
    select @PostId as PostId, @Message as [Message]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_updateUser]    Script Date: 13/08/2020 7:24:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_updateUser]
    @UserId NVARCHAR(450),
    @FullName nvarchar(max),
    @Gender bit,
    @Dob DATETIME2(7),
    @Email NVARCHAR(256),
    @PhoneNumber NVARCHAR(max),
    @Address NVARCHAR(max),
    @Avatar NVARCHAR(max)
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    
    IF EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @UserId And u.IsDeleted=0)
        BEGIN
            BEGIN TRANSACTION
            UPDATE dbo.AspNetUsers
            SET Id=@UserId,
				UserName=@Email,
				FullName = @FullName, 
                Gender = @Gender,
                DoB = @Dob,
                Email = @Email,
                PhoneNumber = @PhoneNumber,
                [Address] = @Address,
                Avatar = @Avatar,
				DateModified=GetDate()
            WHERE Id = @UserId
            COMMIT TRANSACTION
            SET @message = 'Update complete'
        END
    ;
    ELSE SET @message='User is not valid'
END TRY
BEGIN CATCH
    ROLLBACK
    SET @message = 'Some thing is error'
END CATCH
SELECT @message as [Message]
GO
