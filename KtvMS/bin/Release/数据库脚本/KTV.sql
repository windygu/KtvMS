USE [KTV02]
GO
/****** Object:  Table [dbo].[tb_DownloadHistory]    Script Date: 2019/6/13 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DownloadHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SongId] [int] NOT NULL,
	[DownloadTime] [datetime] NULL,
 CONSTRAINT [PK_tb_DoloadHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LoginLog]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoginLog](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[LoginTime] [nvarchar](50) NULL,
	[HostName] [nvarchar](50) NULL,
	[LoginIp] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_LoginLog] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_PlayHistory]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PlayHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SongId] [int] NULL,
	[PlayTime] [datetime] NULL,
 CONSTRAINT [PK_tb_PlayHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_singerTypes]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_singerTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[singerType] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_singsType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_sings]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[singTypeId] [int] NULL,
	[photoURL] [nvarchar](200) NULL,
	[remark] [nvarchar](200) NULL,
	[addTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_sings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_songs]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_songs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[songName] [nvarchar](50) NULL,
	[pinyin] [nvarchar](50) NULL,
	[songtypeID] [int] NULL,
	[singerId] [int] NULL,
	[songURL] [nvarchar](200) NULL,
	[playTime] [nvarchar](50) NULL,
	[songSize] [nvarchar](50) NULL,
	[source] [nvarchar](50) NULL,
	[playCount] [int] NULL,
	[addTime] [datetime] NULL,
 CONSTRAINT [PK_tb_Songs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_songTypes]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_songTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[songType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_songType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_users]    Script Date: 2019/6/13 15:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](20) NULL,
	[passWord] [nvarchar](20) NULL,
	[userType] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_DownloadHistory] ON 

GO
INSERT [dbo].[tb_DownloadHistory] ([Id], [SongId], [DownloadTime]) VALUES (1, 1, CAST(0x0000AA6B00F60B1C AS DateTime))
GO
INSERT [dbo].[tb_DownloadHistory] ([Id], [SongId], [DownloadTime]) VALUES (2, 2, CAST(0x0000AA6B00F787F8 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tb_DownloadHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_LoginLog] ON 

GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (1, N'admin', N'2019/6/13 14:44:48', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (2, N'admin', N'2019/6/13 14:46:55', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (3, N'admin', N'2019/6/13 14:52:12', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (4, N'admin', N'2019/6/13 14:53:20', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (5, N'admin', N'2019/6/13 14:53:48', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (6, N'admin', N'2019/6/13 14:54:54', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (7, N'admin', N'2019/6/13 14:55:31', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (8, N'admin', N'2019/6/13 14:57:16', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (9, N'admin', N'2019/6/13 14:57:58', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (10, N'admin', N'2019/6/13 14:58:26', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
INSERT [dbo].[tb_LoginLog] ([LoginId], [UserName], [LoginTime], [HostName], [LoginIp]) VALUES (11, N'admin', N'2019/6/13 14:58:54', N'WATERCHENG20192206666666666', N'192.168.2.44')
GO
SET IDENTITY_INSERT [dbo].[tb_LoginLog] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_PlayHistory] ON 

GO
INSERT [dbo].[tb_PlayHistory] ([Id], [SongId], [PlayTime]) VALUES (1, 2, CAST(0x0000AA6B00F7A1C0 AS DateTime))
GO
INSERT [dbo].[tb_PlayHistory] ([Id], [SongId], [PlayTime]) VALUES (2, 1, CAST(0x0000AA6B00F7A544 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tb_PlayHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_singerTypes] ON 

GO
INSERT [dbo].[tb_singerTypes] ([Id], [singerType]) VALUES (1, N'大陆')
GO
INSERT [dbo].[tb_singerTypes] ([Id], [singerType]) VALUES (2, N'台湾')
GO
INSERT [dbo].[tb_singerTypes] ([Id], [singerType]) VALUES (3, N'香港')
GO
INSERT [dbo].[tb_singerTypes] ([Id], [singerType]) VALUES (4, N'澳门')
GO
INSERT [dbo].[tb_singerTypes] ([Id], [singerType]) VALUES (5, N'外国')
GO
SET IDENTITY_INSERT [dbo].[tb_singerTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_sings] ON 

GO
INSERT [dbo].[tb_sings] ([id], [name], [gender], [singTypeId], [photoURL], [remark], [addTime]) VALUES (50, N'慕容晓晓 ', N'', 1, N'', N'', N'2019-06-11 23:28:37')
GO
INSERT [dbo].[tb_sings] ([id], [name], [gender], [singTypeId], [photoURL], [remark], [addTime]) VALUES (52, N'周杰伦 ', N'', 1, N'', N'', N'2019/6/12 17:41:37')
GO
INSERT [dbo].[tb_sings] ([id], [name], [gender], [singTypeId], [photoURL], [remark], [addTime]) VALUES (53, N'花粥 ', N'', 1, N'', N'', N'2019/6/12 17:44:33')
GO
INSERT [dbo].[tb_sings] ([id], [name], [gender], [singTypeId], [photoURL], [remark], [addTime]) VALUES (56, N'凤凰传奇 ', N'', 1, N'', N'', N'2019/6/13 15:01:13')
GO
SET IDENTITY_INSERT [dbo].[tb_sings] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_songs] ON 

GO
INSERT [dbo].[tb_songs] ([Id], [name], [songName], [pinyin], [songtypeID], [singerId], [songURL], [playTime], [songSize], [source], [playCount], [addTime]) VALUES (1, N'告白气球', N'周杰伦-告白气球.mp3', NULL, NULL, 52, NULL, N'3分35秒', N'3.28MB', N'QQ', 1, CAST(0x0000AA6B00F609F0 AS DateTime))
GO
INSERT [dbo].[tb_songs] ([Id], [name], [songName], [pinyin], [songtypeID], [singerId], [songURL], [playTime], [songSize], [source], [playCount], [addTime]) VALUES (2, N'荷塘月色', N'凤凰传奇-荷塘月色.mp3', NULL, NULL, 56, NULL, N'4分9秒', N'3.81MB', N'QQ', 1, CAST(0x0000AA6B00F787F8 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tb_songs] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_songTypes] ON 

GO
INSERT [dbo].[tb_songTypes] ([id], [songType]) VALUES (1, N'经典老歌')
GO
INSERT [dbo].[tb_songTypes] ([id], [songType]) VALUES (2, N'流行歌曲')
GO
INSERT [dbo].[tb_songTypes] ([id], [songType]) VALUES (3, N'爱情歌曲')
GO
SET IDENTITY_INSERT [dbo].[tb_songTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_users] ON 

GO
INSERT [dbo].[tb_users] ([id], [userName], [passWord], [userType]) VALUES (1, N'admin', N'', N'admin')
GO
INSERT [dbo].[tb_users] ([id], [userName], [passWord], [userType]) VALUES (2, N'leiluo', N'123', N'admin')
GO
INSERT [dbo].[tb_users] ([id], [userName], [passWord], [userType]) VALUES (5, N'9527', N'1', N'管理员')
GO
SET IDENTITY_INSERT [dbo].[tb_users] OFF
GO
ALTER TABLE [dbo].[tb_songs] ADD  CONSTRAINT [DF_tb_songs_source]  DEFAULT (N'手动添加') FOR [source]
GO
ALTER TABLE [dbo].[tb_sings]  WITH CHECK ADD  CONSTRAINT [FK_tb_sings_tb_singsType] FOREIGN KEY([singTypeId])
REFERENCES [dbo].[tb_singerTypes] ([Id])
GO
ALTER TABLE [dbo].[tb_sings] CHECK CONSTRAINT [FK_tb_sings_tb_singsType]
GO
ALTER TABLE [dbo].[tb_songs]  WITH CHECK ADD  CONSTRAINT [FK_tb_Songs_tb_sings] FOREIGN KEY([singerId])
REFERENCES [dbo].[tb_sings] ([id])
GO
ALTER TABLE [dbo].[tb_songs] CHECK CONSTRAINT [FK_tb_Songs_tb_sings]
GO
ALTER TABLE [dbo].[tb_songs]  WITH CHECK ADD  CONSTRAINT [FK_tb_Songs_tb_Songs] FOREIGN KEY([songtypeID])
REFERENCES [dbo].[tb_songTypes] ([id])
GO
ALTER TABLE [dbo].[tb_songs] CHECK CONSTRAINT [FK_tb_Songs_tb_Songs]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_DownloadHistory', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键，歌曲，tb_songs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_DownloadHistory', @level2type=N'COLUMN',@level2name=N'SongId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_DownloadHistory', @level2type=N'COLUMN',@level2name=N'DownloadTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_LoginLog', @level2type=N'COLUMN',@level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_LoginLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_LoginLog', @level2type=N'COLUMN',@level2name=N'LoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_LoginLog', @level2type=N'COLUMN',@level2name=N'HostName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内网IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_LoginLog', @level2type=N'COLUMN',@level2name=N'LoginIp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_PlayHistory', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'歌曲ID，tb_songs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_PlayHistory', @level2type=N'COLUMN',@level2name=N'SongId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'播放时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_PlayHistory', @level2type=N'COLUMN',@level2name=N'PlayTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_singerTypes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_singerTypes', @level2type=N'COLUMN',@level2name=N'singerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列，自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'歌手名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键，歌手类型，tb_singerTypes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'singTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'photoURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_sings', @level2type=N'COLUMN',@level2name=N'addTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键,标识列，自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'歌曲名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全名，歌曲和歌手' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'songName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'pinyin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键，歌曲类型，tb_songType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'songtypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键，歌手信息，tb_sings' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'singerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路劲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'songURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'播放时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'playTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'歌曲大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'songSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'播放次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'playCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songs', @level2type=N'COLUMN',@level2name=N'addTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songTypes', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'歌曲类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_songTypes', @level2type=N'COLUMN',@level2name=N'songType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，标识列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_users', @level2type=N'COLUMN',@level2name=N'userName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_users', @level2type=N'COLUMN',@level2name=N'passWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_users', @level2type=N'COLUMN',@level2name=N'userType'
GO
