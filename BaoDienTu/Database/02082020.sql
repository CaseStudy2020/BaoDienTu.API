USE [Online-Newspaper-DB]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ContentComment] [nvarchar](max) NOT NULL,
	[DateCreated] [date] NULL,
	[Like] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[ParentCommentId] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[History]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 02/08/2020 5:44:05 SA ******/
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
	[CategoryId] [int] NOT NULL,
	[PostHastagId] [int] NULL,
	[AuthorId] [int] NOT NULL,
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
/****** Object:  Table [dbo].[PostHashTag]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[PostId] [int] NOT NULL,
	[RateValue] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[SubCategory]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[DoB] [nvarchar](max) NULL,
	[Emaill] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[DateCreated] [date] NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (1, N'Nguyen', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'mail', N'292929292', N'day la address', N'day la avartar', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-13' AS Date), 0)
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (2, N'Hiep', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'Email', N'292929292', N'day la address hiep', N'day la avartar Hiep', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-13' AS Date), 0)
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [DateModified], [isDelete]) VALUES (3, N'Vu', N'123123', N'Nam', CAST(N'2020-12-12' AS Date), N'Mail', N'2929292929', N'Day la address Vu', N'day la avartar Vu', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-12' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (1, N'Xã hội', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (2, N'Thế giới', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (3, N'Văn hóa', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (4, N'Video', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (5, N'Thời sự', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (6, N'Tôi vi?t', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (7, N'Thể thao', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (8, N'Ð?i s?ng', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (9, N'Tài chính', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (10, N'Vanhoa the thao', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (11, N'Giải trí', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (12, N'Đời sống', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (13, N'Du lịch', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (14, N'Kinh tế', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted]) VALUES (15, N'Khoa học', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (3, N'covid22', N'sdsdsdsdsds', 1, N'ssdsdsdssd', 0, 1, 1, 1, 1, 2, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(1 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (4, N'change title', N'changedContent', 1, N'changedLink', 1, 1, 1, 1, 1, 1, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(1 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (5, N'Day la title', N'Day la content', 3, N'LInk', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (6, N'Day la title', N'Day la content', 3, N'LInk', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (7, N'Day la title', N'bla bla', 3, N'LInk', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (8, N'title', N'content', 2, N'link', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (9, N'title', N'content', 2, N'link', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (10, N'title', N'4', 2, N'link', 1, 1, 1, 1, 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(3 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (11, N'covid19', N'sdadsadasdsadsa', 1, N'sdsdsdssds', 0, 1, 1, 1, 1, 1, CAST(N'2020-07-29T00:00:00.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (12, N'covid19', N'sdadsadasdsadsa', 1, N'sdsdsdssds', 0, 1, 1, 1, 1, 1, CAST(N'2020-07-29T00:00:00.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (13, N'covid222', N'sdsđssđsdsds', 1, N'sdsdssdsdsds', 0, 1, 1, 1, 1, 1, CAST(N'2020-07-29T00:00:00.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (24, N'covid22', N'string', 0, N'string', 0, 0, 0, 0, 0, 0, CAST(N'2020-07-31T05:51:05.953' AS DateTime), CAST(0 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (25, N'covid199999', N'sdsdsdsda', 2, N'sdsdsdddddd', 1, 2, 2, 2, 2, 2, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (26, N'kusop', N'sdsdsđs', 2, N'sdsdsdsdsdring', 1, 2, 2, 2, 2, 2, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (27, N'covid92929292', N'strindsdsg', 2, N'string', 0, 2, 2, 2, 2, 2, CAST(N'2020-07-30T16:56:39.863' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Post] ([PostId], [Title], [Content], [Like], [Link], [Status], [CategoryId], [PostHastagId], [AuthorId], [SubcategoryId], [View], [DateCreated], [AverageRate], [IsDeleted], [Thumbnail]) VALUES (28, N'covid8888888', N'strindsdsg', 2, N'string', 0, 2, 2, 2, 2, 2, CAST(N'2020-07-30T16:58:06.043' AS DateTime), CAST(2 AS Decimal(18, 0)), 0, NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (1, N'Chính trị', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (2, N'Thể thao ', 2, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (3, N'Thế giới', 3, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (4, N'Chính tr?', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (5, N'Pháp lu?t', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (6, N'Dân sinh', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (7, N'Quy?n du?c bi?t', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (8, N'Việt Nam', 1, 0)
INSERT [dbo].[SubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [IsDeleted]) VALUES (9, N'Mỹ', 1, 1)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [isDelete]) VALUES (1, N'Htnguyen', N'123123', N'Nam', N'2020-12-12', N'maiiNGuyen', N'123123123123', N'addressNguyen', N'avartarNguyen', CAST(N'2020-12-12' AS Date), 0)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [isDelete]) VALUES (2, N'HiepHoang', N'123123', N'Nam', N'2020-12-12', N'mailHiep', N'123123123123', N'AdressHiep', N'avartarHiep', CAST(N'2020-12-12' AS Date), 0)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [Gender], [DoB], [Emaill], [PhoneNumber], [Address], [Avatar], [DateCreated], [isDelete]) VALUES (3, N'VuLe', N'123123123', N'Nam', N'2020-12-12', N'MailVu', N'123123123123', N'AdressVu', N'AvartarVu', CAST(N'2020-12-12' AS Date), 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Author] ADD  CONSTRAINT [DF_AuthorId_isDelete]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Like]  DEFAULT ((0)) FOR [Like]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_Like]  DEFAULT ((0)) FOR [Like]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_Average Rate]  DEFAULT ((0)) FOR [AverageRate]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SubCategory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_isDelete]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment] FOREIGN KEY([ParentCommentId])
REFERENCES [dbo].[Comment] ([CommentId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Post]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_User]
GO
ALTER TABLE [dbo].[PostHashTag]  WITH CHECK ADD  CONSTRAINT [FK_PostHashTag_Hashtag] FOREIGN KEY([HashTagId])
REFERENCES [dbo].[Hashtag] ([HashTagId])
GO
ALTER TABLE [dbo].[PostHashTag] CHECK CONSTRAINT [FK_PostHashTag_Hashtag]
GO
ALTER TABLE [dbo].[PostHashTag]  WITH CHECK ADD  CONSTRAINT [FK_PostHashTag_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([PostId])
GO
ALTER TABLE [dbo].[PostHashTag] CHECK CONSTRAINT [FK_PostHashTag_Post]
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
/****** Object:  StoredProcedure [dbo].[SP_createCategory]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_createNewPost]    Script Date: 02/08/2020 5:44:05 SA ******/
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
           ,@CategoryId int
           ,@PostHastagId int
           ,@AuthorId int
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
            Title, Content,[Like], Link, [Status], CategoryId,PostHastagId,AuthorId,SubcategoryId,[View],DateCreated,AverageRate
            )
            VALUES
            ( -- First row: values for the columns in the list above
            @Title, @Content, @Like,@Link,@Status,@CategoryId,@PostHastagId,@AuthorId,@SubcategoryId,@View,GETDate(),@AverageRate
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
/****** Object:  StoredProcedure [dbo].[SP_createSubCategory]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_editCategory]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_getAllCategory]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_getAllPost]    Script Date: 02/08/2020 5:44:05 SA ******/
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
	  WHERE p.IsDeleted=0
	  ORDER BY p.DateCreated desc
GO
/****** Object:  StoredProcedure [dbo].[SP_getFastInfoPost]    Script Date: 02/08/2020 5:44:05 SA ******/
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
    WHERE p.IsDeleted = 0
	ORDER BY p.DateCreated desc
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getPostByCategoryId]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_getPostByPostID]    Script Date: 02/08/2020 5:44:05 SA ******/
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
            SELECT @message as [Message], p.PostId, p.Title,p.Content,p.[Like],p.Link,p.[Status],p.CategoryId,p.PostHastagId,p.AuthorId,p.SubcategoryId,p.[View],FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, p.AverageRate,p.IsDeleted,p.Thumbnail
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
/****** Object:  StoredProcedure [dbo].[SP_getPostBySubCategoryId]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getPostBySubCategoryId]
    @SubCategoryId int
-- add more stored procedure parameters here
AS
    -- body of the stored procedure
    SELECT *
    FROM dbo.Post p
    WHERE p.IsDeleted = 0 and p.SubcategoryId = @SubCategoryId
GO
/****** Object:  StoredProcedure [dbo].[SP_getSubcategoryByCategoryId]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getSubcategoryByCategoryId]
    @CategoryId int
​
AS
    -- body of the stored procedure
    select SubCategoryId, SubCategoryName,CategoryName, c.CategoryId
    FROM SubCategory s INNER JOIN Category c on c.CategoryId = s.CategoryId
    WHERE c.CategoryId = @CategoryId AND s.IsDeleted=0
GO
/****** Object:  StoredProcedure [dbo].[SP_getTop10MostViewOfDay]    Script Date: 02/08/2020 5:44:05 SA ******/
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
	SELECT TOP 10 *
	from Post p
	where p.DateCreated = GETDATE() and p.IsDeleted = 0
	order by p.[View]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_getTopPostByDay]    Script Date: 02/08/2020 5:44:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getTopPostByDay]
    @DateToGet DATE,
    @NumberOfPost int
AS
BEGIN
    SELECT TOP(@NumberOfPost) *
	from Post p
	where p.DateCreated = @DateToGet and p.IsDeleted = 0
	order by p.[View] DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SavePost]    Script Date: 02/08/2020 5:44:05 SA ******/
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
           ,[CategoryId]
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
           ,@CategoryId
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
      ,[CategoryId] = @CategoryId
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
/****** Object:  StoredProcedure [dbo].[SP_softDelete]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_softDeleteCategoryById]    Script Date: 02/08/2020 5:44:05 SA ******/
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
/****** Object:  StoredProcedure [dbo].[SP_softDeleteSubCategoryById]    Script Date: 02/08/2020 5:44:05 SA ******/
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
​
​
alter TABLE dbo.SubCategory
add IsDeleted bit DEFAULT 0
​

​
SELECT TOP (1000) [SubCategoryId]
      ,[SubCategoryName]
      ,[CategoryId]
      ,[IsDeleted]
  FROM [Online-Newspaper-DB].[dbo].[SubCategory]
GO
/****** Object:  StoredProcedure [dbo].[SP_updatePost]    Script Date: 02/08/2020 5:44:05 SA ******/
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
           ,@CategoryId int
           ,@PostHastagId int
           ,@AuthorId int
           ,@SubcategoryId int
           ,@View int
           ,@AverageRate decimal(18,0),
			@IsDeleted bit 
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
      ,[CategoryId] = @CategoryId
      ,[PostHastagId] = @PostHastagId
      ,[AuthorId] = @AuthorId
      ,[SubcategoryId] = @SubcategoryId
      ,[View] =@View
      ,[DateCreated] = GETDATE()
      ,[AverageRate] = @AverageRate
      ,[IsDeleted] = @IsDeleted

        WHERE PostId = @PostId
        SET @Message = 'Done'
    END TRY
    BEGIN CATCH
        SET @Message ='Error'
    END CATCH
    
    
    select @PostId as PostId, @Message as [Message]
END
GO
