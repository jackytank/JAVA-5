IF NOT EXISTS(SELECT * FROM sys.databases WHERE name='java5-assm')
BEGIN
	CREATE DATABASE [java5-assm]
END;
GO
USE [java5-assm]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/6/2022 5:54:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[address] [nvarchar](255) NULL,
	[admin] [bit] NOT NULL,
	[image] [nvarchar](255) NOT NULL,
	[activated] [bit] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/6/2022 5:54:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/6/2022 5:54:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/6/2022 5:54:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[createdate] [date] NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/6/2022 5:54:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[available] [bit] NOT NULL,
	[createdate] [date] NOT NULL,
	[categoryid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([username], [email], [password], [phone], [address], [admin], [image], [activated]) VALUES (N'batman', N'batman@gmail.com', N'1221', N'0323232323', N'No 30 Gotham City', 1, N'default.jpg', 1)
INSERT [dbo].[Accounts] ([username], [email], [password], [phone], [address], [admin], [image], [activated]) VALUES (N'superman', N'superman@gmailcom', N'1221', N'0495959959', N'No 10 Gotham City', 0, N'default.jpg', 1)
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'C01', N'money')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'C02', N'coin')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [address], [createdate], [username]) VALUES (7, N'No 30 Gotham City', CAST(N'2022-06-06' AS Date), N'batman')
INSERT [dbo].[Orders] ([id], [address], [createdate], [username]) VALUES (8, N'No 30 Gotham City', CAST(N'2022-06-06' AS Date), N'batman')
INSERT [dbo].[Orders] ([id], [address], [createdate], [username]) VALUES (9, N'No 30 Gotham City', CAST(N'2022-06-06' AS Date), N'batman')
INSERT [dbo].[Orders] ([id], [address], [createdate], [username]) VALUES (10, N'No 30 Gotham City', CAST(N'2022-06-06' AS Date), N'batman')
INSERT [dbo].[Orders] ([id], [address], [createdate], [username]) VALUES (11, N'No 30 Gotham City', CAST(N'2022-06-06' AS Date), N'batman')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (1, N'Vietnamdong 50k Banknotes', 15, N'50k.jpg', 1, CAST(N'2022-10-02' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (2, N'Vietnamdong 20k Banknotes', 10, N'20k.jpg', 1, CAST(N'2021-02-02' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (3, N'Vietnamdong 10k Banknotes', 5, N'10k.jpg', 1, CAST(N'2022-01-01' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (4, N'Vietnamdong 5k Banknotes', 2.5, N'5k.jpg', 1, CAST(N'2020-01-03' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (5, N'Vietnamdong 2k Banknotes', 7, N'2k.jpg', 1, CAST(N'2019-03-02' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (6, N'Vietnamdong 1k Banknotes', 12, N'1k.jpg', 1, CAST(N'2015-03-08' AS Date), N'C01')
INSERT [dbo].[Products] ([id], [name], [price], [image], [available], [createdate], [categoryid]) VALUES (7, N'Vietnamdong 500 Banknotes', 10, N'500vnd.jpg', 1, CAST(N'2019-03-03' AS Date), N'C01')
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_1] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_2] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_2]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Categories] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
