USE [OnlineShopDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](250) NOT NULL,
	[TaxCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Representative] [nvarchar](250) NULL,
	[Email] [nvarchar](200) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[manufacturerID] [nvarchar](50) NOT NULL,
	[manufacturerName] [nvarchar](max) NULL,
	[nationID] [nvarchar](50) NULL,
 CONSTRAINT [PK_manufacturer] PRIMARY KEY CLUSTERED 
(
	[manufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nation]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nation](
	[nationID] [nvarchar](50) NOT NULL,
	[nationName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Nation] PRIMARY KEY CLUSTERED 
(
	[nationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [smalldatetime] NULL,
	[CustomerID] [int] NULL,
	[Status] [int] NULL,
	[StaffID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DateOfManufacture] [smalldatetime] NULL,
	[TypeID] [nvarchar](50) NULL,
	[ManufacturerID] [nvarchar](50) NULL,
	[Price] [numeric](18, 0) NULL,
	[Images] [nvarchar](200) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [nvarchar](max) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Images] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 07/06/2021 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[typeID] [nvarchar](50) NOT NULL,
	[typeName] [nvarchar](max) NULL,
	[images] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (1, N'Nguyễn Nhật Tiến', N'123', N'0335167610', N'Gò Vấp', N'Tien Inc.', N'nnt2107@gmail.com', N'tien', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (2, N'Trương Ái Di', NULL, N'0909199991', N'Rach Gia', NULL, N'trgaidi@gmail.com', N'di', N'202cb962ac59075b964b07152d234b70')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'1', N'LG', N'1')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'10', N'Apple', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'11', N'Lenovo', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'12', N'TCL', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'13', N'SHARP', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'14', N'Panasonic', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'15', N'Samsung', N'1')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'16', N'Asanzo', N'5')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'17', N'Sanco', N'5')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'18', N'Logitech', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'19', N'Akko', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'2', N'Dell', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'20', N'Daikin', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'3', N'ACER', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'4', N'ASUS', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'5', N'Intel', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'6', N'MSI', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'7', N'Huawei', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'8', N'Microsoft', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nationID]) VALUES (N'9', N'HP', N'4')
GO
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'1', N'Korea')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'2', N'Japan')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'3', N'United States')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'4', N'China')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'5', N'Viet Nam')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (1, CAST(N'2021-05-23T00:00:00' AS SmallDateTime), 1, 1, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (2, CAST(N'2021-05-28T10:02:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (3, CAST(N'2021-05-28T10:16:00' AS SmallDateTime), 2, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (4, CAST(N'2021-05-28T10:16:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (5, CAST(N'2021-05-28T10:19:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (6, CAST(N'2021-05-28T10:31:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (7, CAST(N'2021-05-28T10:34:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (8, CAST(N'2021-05-28T10:40:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (9, CAST(N'2021-05-28T10:45:00' AS SmallDateTime), 1, 0, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [Status], [StaffID]) VALUES (10, CAST(N'2021-05-28T10:48:00' AS SmallDateTime), 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (1, 199, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (2, 3, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (3, 61, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (4, 58, 3)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (5, 56, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (6, 16, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (7, 1, 2)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (7, 16, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (7, 58, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (8, 58, 2)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (8, 59, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (8, 143, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (9, 58, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (9, 59, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (9, 60, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (10, 58, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (10, 59, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Quantity]) VALUES (10, 60, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (1, N'PC ASUS ROG Strix GL10CS-VN021T (i5-9400/8GB/512GB SSD/GeForce GTX 1660Ti/Win10)', N'- CPU: Intel Core i5-9400 (2.90 GHz - 4.10 GHz/9MB) <br>
- RAM: 1 x 8GB DDR4 2666MHz (2 slot, max support 32GB) <br>
- VGA: Intel UHD Graphics 630 / GeForce GTX 1660TI 6GB <br>
- Storage: 512GB M.2 NVMe SSD <br>
', CAST(N'2020-12-08T00:00:00' AS SmallDateTime), N'1', N'4', CAST(930 AS Numeric(18, 0)), N'PC ASUS ROG Strix GL10CS-VN021T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (2, N'PC ASUS ROG Huracan G21CN (G21CN-D-VN001T) (i5-9400F/8GB/256GB SSD/GeForce RTX 2060/Win10)', N'- CPU: Intel Core i5-9400F (2.90GHz up to 4.10GHz/9MB) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: / GeForce RTX 2060 6GB <br>
- Storage: 256GB M.2 NVMe SSD <br>', CAST(N'2020-12-09T00:00:00' AS SmallDateTime), N'1', N'4', CAST(1300 AS Numeric(18, 0)), N'PC ASUS ROG Huracan G21CN.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (3, N'PC ASUS D540SA I38100012D (i3-8100/4GB/1TB HDD/UHD 630/Endless)', N'- CPU: Intel Core i3-8100 ( 3.6 GHz / 6MB ) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>
                        ', CAST(N'2020-12-09T00:00:00' AS SmallDateTime), N'1', N'4', CAST(476 AS Numeric(18, 0)), N'PC ASUS D540SA I38100012D.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (4, N'PC HP S01-pF0102d (7XE21AA) (i5-9400/4GB/1TB HDD/UHD 630/Win10)', N'- CPU: Intel Core i5-9400 (2.90 GHz - 4.10 GHz/9MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 5400RPM <br>', CAST(N'2020-12-10T00:00:00' AS SmallDateTime), N'1', N'9', CAST(500 AS Numeric(18, 0)), N'PC HP S01-pF0102d (7XE21AA).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (5, N'PC HP Pavilion 590 TP01-0131d (7XF41AA) (i3-9100/4GB/1TB HDD/UHD 630/Win10)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz) <br>
- RAM: 1 x 4GB DDR4 2400MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-11T00:00:00' AS SmallDateTime), N'1', N'9', CAST(400 AS Numeric(18, 0)), N'PC HP Pavilion 590 TP01-0131d.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (6, N'PC HP ProDesk 400 G6 MT 7YH20PA (i3-9100/4GB/1TB HDD/UHD 630/Free DOS)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz/6MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(430 AS Numeric(18, 0)), N'PC HP ProDesk 400 G6 MT 7YH20PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (7, N'PC Dell Optiplex 3070 SFF 70199618 (i3-9100/4GB/1TB HDD/UHD 630/Fedora)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz/6MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-14T00:00:00' AS SmallDateTime), N'1', N'2', CAST(410 AS Numeric(18, 0)), N'PC Dell Optiplex 3070 SFF 70199618.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (8, N'PC Dell Vostro 3471 ST (46R631W) (Pentium G5420/4GB/1TB HDD/UHD 610/Win10)', N'- CPU: Intel Pentium G5420 (3.80 GHz/4MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 610 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-15T00:00:00' AS SmallDateTime), N'1', N'2', CAST(320 AS Numeric(18, 0)), N'PC Dell Vostro 3471 ST (46R631W).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (9, N'PC Dell Inspiron 3881 MT 42IN380001(Intel Core i3-10100/8GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB)<br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-16T00:00:00' AS SmallDateTime), N'1', N'2', CAST(440 AS Numeric(18, 0)), N'PC Dell Inspiron 3881 MT 42IN380001.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (10, N'PC Dell Vostro 3888 MT RJMM6D(Intel Core i5-10400/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB) <br>
- RAM: 1 x 4GB DDR4 3200MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-17T00:00:00' AS SmallDateTime), N'1', N'2', CAST(520 AS Numeric(18, 0)), N'PC Dell Vostro 3888 MT RJMM6D.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (11, N'PC Lenovo V530-15ICR (11BHS07200)', N'- CPU: Intel Core i5-9400 (2.90 GHz up to 4.10 GHz / 9MB / 6 cores, 6 threads) <br>
- RAM: 1 x 4GB DDR4 2666MHz (2 Slot, Max Support 32GB) <br>
- Graphics: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-11T00:00:00' AS SmallDateTime), N'1', N'11', CAST(500 AS Numeric(18, 0)), N'PC Lenovo V530-15ICR (11BHS07200).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (12, N'PC Lenovo V530-15ICB (10TVS0LV00)', N'- CPU: Intel Celeron G4930 (3.20 GHz / 2MB / 2 core, 2 threads) <br>
- RAM: 1 x 4GB DDR4 2666MHz (2 Slot, Max Support 32GB) <br>
- Graphics: Intel UHD Graphics 610 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'11', CAST(310 AS Numeric(18, 0)), N'PC Lenovo V530-15ICB (10TVS0LV00).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (13, N'PC ASUS VF222F V222FAK-WA149T(21.5"Full HD/Intel Core i5-10210U/8GB/512GBSSD/Windows 10 Home SL 64-bit/WiFi 802.11ac)', N'- CPU: Intel Core i5-10210U (1.60 GHz - 4.20 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (2 Khe cắm,
- Đồ họa:
- Lưu trữ: 512GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(950 AS Numeric(18, 0)), N'PC ASUS VF222F V222FAK-WA149T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (14, N'PC ASUS PN60 8i5BAREBONES(Intel Core i5-8250U/Free DOS/WiFi 802.11ac)', N'- CPU: Intel Core i5-8250U (1.60 - 3.40 GHz/6MB/4 nhân, 8 luồng) 
- Đồ họa: Intel UHD Graphics 620
- Wifi AC, Bluetooth 4.2 / LAN
- FreeDOS', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(410 AS Numeric(18, 0)), N'PC ASUS PN60 8i5BAREBONES.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (15, N'PC ASUS S340MC (S340MC-0G5400060T) (Pentium G5400/4GB/1TB HDD/UHD 610/Win10)', N'- CPU: Intel Pentium G5400 (3.7 GHz/4MB/2 nhân, 4 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 610
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(360 AS Numeric(18, 0)), N'PC ASUS S340MC.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (16, N'PC ASUS PN40 BBC061MV(Intel Celeron J4005/WiFi 802.11ac)', N'- CPU: Intel Celeron J4005 (2.0 GHz - 2.70 GHz/4MB/2 nhân, 2 luồng)
- RAM:
- Đồ họa: Intel UHD Graphics 600', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(300 AS Numeric(18, 0)), N'PC ASUS PN40 BBC061MV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (17, N'PC ASUS PN60 BB3046MV(Intel Core i3-8130U/WiFi 802.11ac)', N'- CPU: Intel Core i3-8130U (2.20 GHz - 3.40 GHz/4MB/2 nhân, 4 luồng)
- RAM:
- Đồ họa: Intel UHD Graphics 620', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(320 AS Numeric(18, 0)), N'PC ASUS PN60 BB3046MV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (18, N'PC ASUS VivoMini UN62-M3240M 90MS00A1-M02410 (i3-4010U/HD 4400)', N'- CPU: Intel Core i3-4010U ( 1.7 GHz / 3MB / 2 nhân, 4 luồng ) 
- RAM: Hỗ trợ DDR3L 1600MHz 
- Đồ họa: Intel HD Graphics 4400 ', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(270 AS Numeric(18, 0)), N'PC ASUS VivoMini UN62-M3240M 90MS00A1-M02410.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (19, N'PC ASUS ROG Huracan G21CX-VN006T (i5-9400F/16GB/512GB SSD/GeForce RTX 2060/Win10)', N'- CPU: Intel Core i5-9400F (2.90 GHz - 4.10 GHz/9MB/6 nhân, 6 luồng)
- RAM: 2 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: / GeForce RTX 2060 6GB
- Lưu trữ: 512GB M.2 NVMe SSD/
', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(1420 AS Numeric(18, 0)), N'PC ASUS ROG Huracan G21CX-VN006T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (20, N'PC ASUS PN40 MKM1PE(Intel Pentium J5005/WiFi 802.11ac)', N'- CPU: Intel Pentium J5005 (1.5 GHz - 2.8 GHz/4MB/4 nhân, 4 luồng)
- RAM: DDR4 (2 Khe cắm, Hỗ trợ tối đa 8GB)
- Đồ họa: Intel UHD Graphics 605 8GB', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(490 AS Numeric(18, 0)), N'PC ASUS PN40 MKM1PE.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (21, N'PC ASUS ROG Strix G15DH G15DH-VN004T(AMD Ryzen 5 3600X/8GB/512GBSSD/GeForce GTX 1660TI/Windows 10 Home SL 64-bit/WiFi 802.11ac)', N'- CPU: AMD Ryzen 5 3600X (3.8 GHz - 4.4 GHz/32MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: / GeForce GTX 1660TI 6GB
- Lưu trữ: 512GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(1020 AS Numeric(18, 0)), N'PC ASUS ROG Strix G15DH G15DH-VN004T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (22, N'PC ASUS ROG Strix G35DX G35DX-VN007T(AMD Ryzen 7 3700X/16GB/1TBSSD/GeForce RTX 2070 Super/Windows 10 Home SL 64-bit/WiFi 802.11ac)', N'- CPU: AMD Ryzen 7 3700X (3.6 GHz - 4.4 GHz/32MB/8 nhân, 16 luồng)
- RAM: 2 x 8GB DDR4 3200MHz (4 Khe cắm, Hỗ trợ tối đa 128GB)
- Đồ họa: / GeForce RTX 2070 Super 8GB
- Lưu trữ: 1TB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(2400 AS Numeric(18, 0)), N'PC ASUS ROG Strix G35DX G35DX-VN007T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (23, N'PC ASUS D500MA-3101000490 (90PF0241-M01970)(Intel Core i3-10100/4GB/256GBSSD/Free DOS/WiFi 802.11ax)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(510 AS Numeric(18, 0)), N'PC ASUS D500MA-3101000490.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (24, N'PC ASUS D500MA-5104000100 (90PF0241-M01980)(Intel Core i5-10400/8GB/256GBSSD/Free DOS/WiFi 802.11ax)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(630 AS Numeric(18, 0)), N'PC ASUS D500MA-5104000100.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (25, N'PC ASUS D500MA-7107000100 (90PF0241-M02630)(Intel Core i7-10700/8GB/256GBSSD/Free DOS/WiFi 802.11ax)', N'- CPU: Intel Core i7-10700 (2.90 GHz - 4.80 GHz/16MB/8 nhân, 16 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(870 AS Numeric(18, 0)), N'PC ASUS D500MA-7107000100.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (26, N'PC ASUS PN40-BBC680MV 90MS0181-M06800(Intel Celeron J4025/WiFi 802.11ac)', N'- CPU: Intel Celeron J4025 (2.00 GHz - 2.90 GHz/4MB/2 nhân, 2 luồng)
- RAM: DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 8GB)
- Đồ họa: Intel UHD Graphics 600 8GB', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(450 AS Numeric(18, 0)), N'PC ASUS PN40-BBC680MV 90MS0181-M06800.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (27, N'PC ASUS Workstation Pro E500 G6 PROE500G6-10900003Z(Intel Core i9-10900/8GB/1TBHDD/', N'- CPU: Intel Core i9-10900 (2.80 GHz - 5.20 GHz/20MB/10 nhân, 20 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (4 Khe cắm, Hỗ trợ tối đa 128GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(1600 AS Numeric(18, 0)), N'PC ASUS Workstation Pro E500 G6 PROE500G6-10900003Z.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (28, N'PC ASUS Asus Workstation Pro E500 G6 (PROE500G6-1250004Z) PROE500G6-1250004Z(Intel Xeon W-1250/8GB/1TBHDD)', N'- CPU: Intel Xeon W-1250 (3.30 GHz - 4.70 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (4 Khe cắm, Hỗ trợ tối đa 128GB)
- Đồ họa: Intel UHD Graphics P630
- Lưu trữ: 1TB HDD', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(1140 AS Numeric(18, 0)), N'PC ASUS Asus Workstation Pro E500 G6.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (29, N'PC ASUS Workstation E500 G5 (E500-G5-9500013Z) 90SF00Q1-M12200(Intel Core i5-9500/8GB/1TBHDD)', N'- CPU: Intel Core i5-9500 (3.00 GHz - 4.40 GHz/9MB/6 nhân, 6 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (4 Khe cắm, Hỗ trợ tối đa 128GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'4', CAST(920 AS Numeric(18, 0)), N'PC ASUS Workstation E500 G5.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (30, N'PC HP Pavilion TP01-1111d 180S1AA(Intel Core i3-10100/4GB/256GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(500 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1111d 180S1AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (31, N'PC HP S01-pF1145d 181A5AA(Intel Core i5-10400/8GB/256GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(680 AS Numeric(18, 0)), N'PC HP S01-pF1145d 181A5AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (32, N'PC HP S01-pF1141d 181A1AA(Intel Core i3-10100/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(510 AS Numeric(18, 0)), N'PC HP S01-pF1141d 181A1AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (33, N'PC HP Pavilion TP01-1110d 180S0AA(Intel Core i3-10100/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(490 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1110d 180S0AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (34, N'PC HP S01-pF1167d (22X66AA)(Intel Core i5-10400/8GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 3.40 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(820 AS Numeric(18, 0)), N'PC HP S01-pF1167d (22X66AA).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (35, N'PC HP S01-pF1142d 181A2AA(Intel Core i3-10100/4GB/256GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(450 AS Numeric(18, 0)), N'PC HP S01-pF1142d 181A2AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (36, N'PC HP S01-pF1146d 181A6AA(Intel Core i5-10400F/8GB/1TBHDD/GeForce GT 730/Windows 10 Home SL 64-bit/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400F (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: / GeForce GT 730 2GB
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(740 AS Numeric(18, 0)), N'PC HP S01-pF1146d 181A6AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (37, N'PC HP Pavilion TP01-1114d 180S4AA(Intel Core i5-10400/8GB/512GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 512GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(830 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1114d 180S4AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (38, N'PC HP S01-pF1144d 181A4AA(Intel Core i5-10400/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 4GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(660 AS Numeric(18, 0)), N'PC HP S01-pF1144d 181A4AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (39, N'PC HP Desktop Pro A G2 MT 7GZ51PA (R5 PRO 2400G/4GB/1TB HDD/Radeon RX Vega 11/Free DOS)', N'- CPU: AMD Ryzen 5 PRO 2400G ( 3.6 GHz / 6MB / 4 nhân, 8 luồng )
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: AMD Vega 11 Graphics
- Lưu trữ: 1TB HDD 7200RPM
- Tặng kèm chuột; bàn phím', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(490 AS Numeric(18, 0)), N'PC HP Desktop Pro A G2 MT 7GZ51PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (40, N'PC HP Pavilion TP01-1112d 180S2AA(Intel Core i5-10400/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(740 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1112d 180S2AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (41, N'PC HP Pavilion TP01-1132d 22X44AA(Intel Core i5-10400/4GB/256GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(640 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1132d 22X44AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (42, N'PC HP ProDesk 400 G5 SFF 4TT18PA (i5-8500/4GB/1TB HDD/UHD 630/Free DOS)', N'- CPU: Intel Core i5-8500 ( 3.00 GHz up to 4.10 GHz / 9MB / 6 nhân, 6 luồng )
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(580 AS Numeric(18, 0)), N'PC HP ProDesk 400 G5 SFF 4TT18PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (43, N'PC HP Pavilion TP01-1116d 180S6AA(Intel Core i5-10400F/8GB/1TBHDD/GeForce GT 730/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400F (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: / GeForce GT 730 2GB
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(680 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1116d 180S6AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (44, N'PC HP Pavilion TP01-1113d 180S3AA(Intel Core i5-10400/8GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(530 AS Numeric(18, 0)), N'PC HP Pavilion TP01-1113d 180S3AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (45, N'PC HP 280 Pro G5 SFF 1C4W3PA(Intel Core i5-10400/4GB/256GBSSD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB/6 nhân, 12 luồng)
- RAM: 1 x 4GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 256GB M.2 NVMe SSD/', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(600 AS Numeric(18, 0)), N'PC HP 280 Pro G5 SFF 1C4W3PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (46, N'PC HP EliteDesk 800 G4 (4SA37PA) (Intel Core i3-8100 3.6 GHz/8GB RAM/1TB/Intel UHD Graphics 630/Free DOS)', N'- CPU: Intel Core i3-8100 (3.6 GHz/6MB/4 nhân, 4 luồng)
- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(650 AS Numeric(18, 0)), N'PC HP EliteDesk 800 G4 (4SA37PA).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (47, N'PC HP ProDesk 400 G5 SFF 4VQ87PA (i3-8100T/4GB/1TB HDD/UHD 630/Free DOS)', N'- CPU: Intel Core i3-8100 ( 3.60 GHz / 6MB / 4 nhân, 4 luồng )
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(420 AS Numeric(18, 0)), N'PC HP ProDesk 400 G5 SFF 4VQ87PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (48, N'PC HP Desktop Pro A G2 MT 7GR85PA (R3 PRO 2200G/4GB/1TB HDD/Radeon Vega 8/Free DOS)', N'- CPU: AMD Ryzen 3 2200G ( 3.5 GHz / 6MB / 4 nhân, 4 luồng )
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: AMD Vega 8 Graphics
- Lưu trữ: 1TB HDD 7200RPM
- Tặng kèm chuột; bàn phím', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(400 AS Numeric(18, 0)), N'PC HP Desktop Pro A G2 MT 7GR85PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (49, N'PC HP 280 Pro G5 SFF 1C2M0PA(Intel Core i3-10100/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB/4 nhân, 8 luồng)
- RAM: 1 x 4GB DDR4 3200MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(560 AS Numeric(18, 0)), N'PC HP 280 Pro G5 SFF 1C2M0PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (50, N'PC HP Pavilion 590-p0033d 4LY11AA (i3-8100/4GB/1TB HDD/UHD 630/Win10)', N'- CPU: Intel Core i3-8100 ( 3.6 GHz / 6MB / 4 nhân, 4 luồng )
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: Intel UHD Graphics 630
- Lưu trữ: 1TB HDD 7200RPM
- Tặng kèm chuột;bàn phím', CAST(N'2020-12-12T00:00:00' AS SmallDateTime), N'1', N'9', CAST(680 AS Numeric(18, 0)), N'PC HP Pavilion 590-p0033d 4LY11AA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (51, N'Laptop ASUS Vivobook A415EA- EB358T ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 8GB Onboard DDR4 3200MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 50 Wh <br>
- Weight: 1.4 kg <br>
                        
                        
                        
                        
                        
                        
                        
                        
                        ', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), N'2', N'4', CAST(299 AS Numeric(18, 0)), N'Laptop ASUS Vivobook S433EA- EB100T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (52, N'Laptop ASUS Vivobook A415EA- EB358T ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 1 x 4GB Onboard DDR4 3200MHz <br>
- VGA: Intel UHD Graphics <br>
- Storage: 256GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 42 Wh <br>
- Weight: 1.4 kg <br>
                        
                        ', CAST(N'2021-01-02T00:00:00' AS SmallDateTime), N'2', N'4', CAST(558 AS Numeric(18, 0)), N'Laptop ASUS Vivobook A415EA- EB358T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (53, N'Asus ZenBook UX371EA-HL701TS', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 13.3" OLED (3840 x 2160) <br>
- RAM: 16GB Onboard LPDDR4X 4266MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 1TB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 67 Wh <br>
- Weight: 1.2 kg <br>
                        
                        ', CAST(N'2021-01-03T00:00:00' AS SmallDateTime), N'2', N'4', CAST(1733 AS Numeric(18, 0)), N'Asus ZenBook UX371EA-HL701TS.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (54, N'Laptop ASUS TUF Gaming FX506LI HN096T ( 15.6" Full HD/Intel Core i7-10870H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Windows 10 Home 64-bit/2.3kg)', N'- CPU: Intel Core i7-10870H <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 2933MHz <br>
- VGA: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics 630 <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.3 kg <br>
                        
                        ', CAST(N'2021-01-04T00:00:00' AS SmallDateTime), N'2', N'4', CAST(1170 AS Numeric(18, 0)), N'Laptop ASUS TUF Gaming FX506LI HN096T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (55, N'Laptop ASUS ROG Strix G G531GT HN554T ( 15.6" Full HD/ 144Hz/Intel Core i7 9750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home SL 64-bit/2.3kg)', N'- CPU: Intel Core i7 9750H <br>
- Monitor: 15.6" IPS (1920 x 1080), 144Hz <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630 <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.3 kg <br>
                        
                        ', CAST(N'2021-01-05T00:00:00' AS SmallDateTime), N'2', N'4', CAST(1083 AS Numeric(18, 0)), N'Laptop ASUS ROG Strix G G531GT HN554T.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (56, N'Laptop HP ProBook 450 G8 2H0Y1PA ( 15.6" Full HD/Intel Core i7-1165G7/16GB/512GB SSD/NVIDIA GeForce MX450/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 16GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce MX450 2GB GDDR5 / Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 45 Wh <br>
- Cell: 1.7 kg <br>', CAST(N'2020-12-01T00:00:00' AS SmallDateTime), N'2', N'9', CAST(1300 AS Numeric(18, 0)), N'Laptop HP ProBook 450 G8 2H0Y1PA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (57, N'Laptop HP 15s-fq2029TU (2Q5Y7PA) ( 15.6" HD/Intel Core i7-1165G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 15.6" IPS (1366 x 768) <br>
- RAM: 2 x 4GB DDR4 2666MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 41 Wh <br>
- Weight: 1.7 kg <br>
                        
                        ', CAST(N'2020-12-02T00:00:00' AS SmallDateTime), N'2', N'9', CAST(800 AS Numeric(18, 0)), N'Laptop HP 15s-fq2029TU (2Q5Y7PA).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (58, N'Laptop ACER Aspire 3 A315-57G-524Z NX.HZRSV.009 ( 15.6" Full HD/Intel Core i5-1035G1/8GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home 64-bit/1.9kg)', N'- CPU: Intel Core i5-1035G1 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 8GB (4GB + 4GB Onboard) DDR4 2400MHz <br>
- VGA: NVIDIA GeForce MX330 2GB GDDR5 / Intel UHD Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 36 Wh <br>
- Weight: 1.9 kg <br>
                        
                        ', CAST(N'2020-12-04T00:00:00' AS SmallDateTime), N'2', N'3', CAST(650 AS Numeric(18, 0)), N'Laptop ACER Aspire 3 A315-57G.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (59, N'Laptop ACER Swift 3 SF314-510G-57MR NX.A10SV.004 ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 8GB Onboard LPDDR4X 2666MHz <br>
- VGA: Intel Iris Xe Max Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 4 cell 58 Wh <br>
- Weight: 1.4 kg <br>', CAST(N'2020-12-05T00:00:00' AS SmallDateTime), N'2', N'3', CAST(997 AS Numeric(18, 0)), N'Laptop ACER Swift 3 SF314-510G-57MR NX.A10SV.004.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (60, N'Laptop Dell Inspiron 15 5502 1XGR11 ( 15.6" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.6kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 53 Wh <br>
- Weight: 1.6 kg <br>', CAST(N'2020-12-06T00:00:00' AS SmallDateTime), N'2', N'2', CAST(900 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 5502 1XGR11.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (61, N'Laptop Dell Vostro 15 5502 NT0X01 ( 15.6" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home SL 64-bit/1.6kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce MX330 2GB GDDR5 / Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 40 Wh <br>
- Weight: 1.6 kg <br>
                        ', CAST(N'2020-12-07T00:00:00' AS SmallDateTime), N'2', N'2', CAST(930 AS Numeric(18, 0)), N'Laptop Dell Vostro 15 5502 NT0X01.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (62, N'Laptop Lenovo Yoga 520-14IKBR', N'- CPU: Intel Core i3-7020U (2.3 GHz / 3MB / 2 core, 4 threads) <br>
- Screen: 14 "(1920 x 1080), touch screen <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- Graphics: Intel HD Graphics 620 <br>
- Storage: 256GB SSD <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 2 cell 35 Wh Instant battery, weight: 1.7 kg <br>', CAST(N'2020-12-13T00:00:00' AS SmallDateTime), N'2', N'11', CAST(670 AS Numeric(18, 0)), N'Laptop Lenovo Yoga 520-14IKBR.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (63, N'Laptop Lenovo Ideapad 720s-13IKB', N'- CPU: Intel Core i5-8250U (1.6 GHz - 3.4 GHz / 6MB / 4 core, 8 threads) <br>
- Screen: 13.3 "IPS (1920 x 1080), non-touch <br>
- RAM: 1 x 8GB Onboard DDR4 2400MHz <br>
- Graphics: Intel UHD Graphics 620 <br>
- Storage: 256GB M.2 NVMe SSD <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 48 Wh Instant battery, weight: 1.1 kg <br>', CAST(N'2020-12-14T00:00:00' AS SmallDateTime), N'2', N'11', CAST(950 AS Numeric(18, 0)), N'Laptop Lenovo Ideapad 720s-13IKB.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (64, N'Laptop Lenovo ThinkPad E590', N'- CPU: Intel Core i5-8265U (1.6 GHz - 3.9 GHz / 6MB / 4 core, 8 threads) <br>
- Screen: 15.6 "IPS (1366 x 768), non-touch <br>
- RAM: 1 x 4GB DDR4 2400MHz <br>
- Graphics: Intel UHD Graphics 620 <br>
- Storage: 1TB HDD 5400RPM <br>
- Operating System: Free DOS <br>
- Battery: 3 cell 45 Wh Removable battery, weight: 2.1 kg <br>', CAST(N'2020-12-15T00:00:00' AS SmallDateTime), N'2', N'11', CAST(730 AS Numeric(18, 0)), N'Laptop Lenovo ThinkPad E590.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (65, N'Laptop Apple MacBook Pro 2018 13.3 MR9R2', N'- CPU: Core i5 (2.3 GHz) <br>
- Screen: 13.3 "(2560 x 1600) <br>
- RAM: 8GB LPDDR3 2133MHz <br>
- Graphics: Intel Iris Plus Graphics 650 <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Battery: Instant battery <br>', CAST(N'2020-12-16T00:00:00' AS SmallDateTime), N'2', N'10', CAST(2150 AS Numeric(18, 0)), N'Laptop Apple MacBook Pro 2018 13.3 MR9R2.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (66, N'Laptop APPLE MacBook Pro 2020MXK32SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600)  <br>
- RAM: 8GB Onboard LPDDR3 2133MHz  <br>
- Storage: 256GB SSD  <br>
- Operating System: macOS  <br>
- 58 Wh Battery  <br>
- Weight: 1.4 kg  <br>', CAST(N'2020-12-17T00:00:00' AS SmallDateTime), N'2', N'10', CAST(1520 AS Numeric(18, 0)), N'Laptop APPLE MacBook Pro 2020MXK32SA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (67, N'Laptop APPLE MacBook Air 2020 MVH52SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600) <br>
- RAM: 8GB Onboard LPDDR4 3733MHz <br>
- Graphics: Intel Iris Plus Graphics <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Weight: 1.3 kg <br>', CAST(N'2020-12-18T00:00:00' AS SmallDateTime), N'2', N'10', CAST(1550 AS Numeric(18, 0)), N'Laptop APPLE MacBook Air 2020 MVH52SA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (68, N'Laptop APPLE MacBook Air 2020 MVH22SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600) <br>
- RAM: 1 x 8GB Onboard LPDDR4 3733MHz <br>
- Graphics: Intel Iris Plus Graphics <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Weight: 1.3 kg <br>', CAST(N'2020-12-19T00:00:00' AS SmallDateTime), N'2', N'10', CAST(1550 AS Numeric(18, 0)), N'Laptop APPLE MacBook Air 2020 MVH22SA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (69, N'Laptop APPLE MacBook Air 2020 MVH42SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600)  <br>
- RAM: 8GB Onboard LPDDR4 3733MHz  <br>
- Graphics: Intel Iris Plus Graphics  <br>
- Storage: 512GB SSD  <br>
- Operating System: macOS  <br>
- Weight: 1.3 kg  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'10', CAST(1550 AS Numeric(18, 0)), N'Laptop APPLE MacBook Air 2020 MVH42SA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (70, N'Laptop Dell Inspiron 15 (N3501C-P90F002N3501C) ( 15.6" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home SL 64-bit/2kg)', N'- CPU: Intel Core i3-1115G4
- Màn hình: 15.6" WVA (1920 x 1080)
- RAM: 1 x 4GB DDR4 2666MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 42 Wh Pin liền
- Khối lượng: 2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(460 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 (N3501C-P90F002N3501C).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (71, N'Laptop Dell Gaming G7 15 7500 G7500B-P100F001 ( 15.6" Full HD/ 144Hz/Intel Core i7-10750H/8GB/512GB SSD/NVIDIA GeForce GTX 1660Ti/Win 10 Home SL)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" TN (1920 x 1080), 144Hz
- RAM: 2 x 4GB DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell Pin liền
- Khối lượng: 2.5 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1860 AS Numeric(18, 0)), N'Laptop Dell Gaming G7 15 7500 G7500B-P100F001.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (72, N'Laptop Dell Inspiron 15 7501 N5I5012W ( 15.6" Full HD/Intel Core i5-10300H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home SL 64-bit/1.9kg)', N'- CPU: Intel Core i5-10300H
- Màn hình: 15.6" WVA (1920 x 1080)
- RAM: 8GB Onboard DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 56 Wh Pin liền
- Khối lượng: 1.9 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1400 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 7501 N5I5012W.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (73, N'Laptop Dell Inspiron 14 5406 N4I5047W ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 14" WVA (1920 x 1080)
- RAM: 1 x 8GB DDR4 3200MHz
- Đồ họa: NVIDIA GeForce MX330 2GB GDDR5 / Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 40 Wh Pin liền
- Khối lượng: 1.7 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1230 AS Numeric(18, 0)), N'Laptop Dell Inspiron 14 5406 N4I5047W.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (74, N'Laptop Dell Vostro 13 5301 C4VV92 ( 13.3" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.12kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 13.3" (1920 x 1080)
- RAM: 8GB Onboard LPDDR4X 4266MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 40 Wh Pin liền
- Khối lượng: 1.12 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1020 AS Numeric(18, 0)), N'Laptop Dell Vostro 13 5301 C4VV92.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (75, N'Laptop Dell Gaming G7 15 7500 (G7500A-P100F001G7500A) ( 15.6" Full HD/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Win 10 Home SL)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" WVA (1920 x 1080)
- RAM: 2 x 8GB LPDDR4X 2933MHz
- Đồ họa: NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 6 cell 40 Wh Pin liền
- Khối lượng: 2.6 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1960 AS Numeric(18, 0)), N'Laptop Dell Gaming G7 15 7500.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (76, N'Laptop Dell Inspiron 7306 N3I5202W ( 13.3" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.4kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 13.3" WVA (1920 x 1080)
- RAM: 8GB Onboard LPDDR4X 4266MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 4 cell 60 Wh Pin liền
- Khối lượng: 1.4 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1100 AS Numeric(18, 0)), N'Laptop Dell Inspiron 7306 N3I5202W.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (77, N'Laptop Dell Inspiron 15 3505 Y1N1T1 ( 15.6" Full HD/AMD Ryzen 3 3250U/8GB/256GB SSD/Windows 10 Home SL 64-bit/1.8kg)', N'- CPU: AMD Ryzen 3 3250U
- Màn hình: 15.6" (1920 x 1080)
- RAM: 2 x 4GB DDR4 3200MHz
- Đồ họa: AMD Radeon Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 42 Wh Pin liền
- Khối lượng: 1.8 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(620 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 3505 Y1N1T1.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (78, N'Laptop Dell Inspiron 14 5490 FMKJV11 ( 14" Full HD/Intel Core i5-10210U/8GB/512GB SSD/NVIDIA GeForce MX230/Windows 10 Home SL 64-bit/1.5kg)', N'- CPU: Intel Core i5-10210U
- Màn hình: 14" WVA (1920 x 1080)
- RAM: 8GB (4GB + 4GB Onboard) DDR4 2666MHz
- Đồ họa: NVIDIA GeForce MX230 2GB GDDR5 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 51 Wh Pin liền
- Khối lượng: 1.5 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(950 AS Numeric(18, 0)), N'Laptop Dell Inspiron 14 5490 FMKJV11.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (79, N'Laptop Dell Vostro 14 3405 V4R33250U501W ( 14" HD/AMD Ryzen 3 3250U/4GB/1TB HDD/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: AMD Ryzen 3 3250U
- Màn hình: 14" TN (1366 x 768)
- RAM: 1 x 4GB DDR4 2400MHz
- Đồ họa: AMD Radeon Graphics
- Lưu trữ: 1TB HDD 5400RPM
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 42 Wh Pin liền
- Khối lượng: 1.7 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(470 AS Numeric(18, 0)), N'Laptop Dell Vostro 14 3405 V4R33250U501W.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (80, N'Laptop Dell Inspiron 15 7501 X3MRY1 ( 15.6" Full HD/Intel Core i7-10750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Windows 10 Home SL 64-bit/1.8kg)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" WVA (1920 x 1080)
- RAM: 8GB Onboard DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 56 Wh Pin liền
- Khối lượng: 1.8 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1640 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 7501 X3MRY1.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (81, N'Laptop Dell G3 15 3500 G3500B-P89F002G3500B ( 15.6" Full HD/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce GTX 1660Ti/Win 10 Home SL)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" TN (1920 x 1080)
- RAM: 2 x 8GB DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 51 Wh Pin liền
- Khối lượng: 2.6 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1530 AS Numeric(18, 0)), N'Laptop Dell G3 15 3500 G3500B-P89F002G3500B.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (82, N'Laptop Dell G3 15 3500 G3500A-P89F002G3500A ( 15.6" Full HD/Intel Core i7-10750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Win 10 Home SL)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" TN (1920 x 1080)
- RAM: 2 x 4GB DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 51 Wh Pin liền
- Khối lượng: 2.6 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1220 AS Numeric(18, 0)), N'Laptop Dell G3 15 3500 G3500A-P89F002G3500A.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (83, N'Laptop Dell G3 15 3500 70223130 ( 15.6" Full HD/Intel Core i5-10300H/8GB/256GB SSD/1TB HDD/NVIDIA GeForce GTX 1650/Windows 10 Home 64-bit/2.3kg)', N'- CPU: Intel Core i5-10300H
- Màn hình: 15.6" IPS (1920 x 1080)
- RAM: 2 x 4GB DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe / 1TB HDD 5400RPM
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 3 cell 51 Wh Pin liền
- Khối lượng: 2.3 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1100 AS Numeric(18, 0)), N'Laptop Dell G3 15 3500 70223130.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (84, N'Laptop Dell Vostro 15 3590 3590-GRMGK2 ( 15.6" Full HD/Intel Core i7-10510U/8GB/256GB SSD/AMD Radeon 610/Windows 10 Home SL 64-bit/2.1kg)', N'- CPU: Intel Core i7-10510U
- Màn hình: 15.6" TN (1920 x 1080)
- RAM: 1 x 8GB DDR4 2666MHz
- Đồ họa: AMD Radeon 610 2GB GDDR5 / Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home SL 64-bit
- Pin: 3 cell 42 Wh Pin liền
- Khối lượng: 2.1 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(1060 AS Numeric(18, 0)), N'Laptop Dell Vostro 15 3590 3590-GRMGK2.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (85, N'Laptop Dell Inspiron 15 5593-N5I5513W (15.6" FHD/i5-1035G1/8GB/256GB SSD/GeForce MX230/Win10/1.9kg)', N'- CPU: Intel Core i5-1035G1
- Màn hình: 15.6" (1920 x 1080)
- RAM: 1 x 8GB DDR4 2666MHz
- Đồ họa: NVIDIA GeForce MX230 2GB GDDR5 / Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 3 cell 42 Wh Pin liền
- Khối lượng: 1.9 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'2', CAST(860 AS Numeric(18, 0)), N'Laptop Dell Inspiron 15 5593-N5I5513W.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (86, N'Laptop ACER Aspire 3 A315-56-502X (NX.HS5SV.00F) ( 15.6" Full HD/Intel Core i5-1035G1/4GB/256GB SSD/Windows 10 Home 64-bit/1.7kg)', N'- CPU: Intel Core i5-1035G1
- Màn hình: 15.6" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2400MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 2 cell 37 Wh Pin liền
- Khối lượng: 1.7 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(620 AS Numeric(18, 0)), N'Laptop ACER Aspire 3 A315-56-502X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (87, N'Laptop ACER Nitro 5 AN515-56-51N4 (NH.QBZSV.002) ( 15.6" Full HD/ 144Hz/Intel Core i5-11300H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Win 10 Home)', N'- CPU: Intel Core i5-11300H
- Màn hình: 15.6" IPS (1920 x 1080), 144Hz
- RAM: 1 x 8GB DDR4 3200MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 57 Wh Pin liền
- Khối lượng: 2.2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(1070 AS Numeric(18, 0)), N'Laptop ACER Nitro 5 AN515-56-51N4.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (88, N'Laptop ACER Aspire 5 A514-54-38AC (NX.A29SV.001) ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2666MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.4 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(530 AS Numeric(18, 0)), N'Laptop ACER Aspire 5 A514-54-38AC (NX.A29SV.001).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (89, N'Laptop ACER Aspire 7 A715-42G-R4ST NH.QAYSV.004 ( 15.6" Full HD/AMD Ryzen 5 5500U/8GB/256GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home 64-bit/2.1kg)', N'- CPU: AMD Ryzen 5 5500U
- Màn hình: 15.6" IPS (1920 x 1080)
- RAM: 1 x 8GB DDR4 3200MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / AMD Radeon Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 2.1 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(980 AS Numeric(18, 0)), N'Laptop ACER Aspire 7 A715-42G-R4ST NH.QAYSV.004.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (90, N'Laptop ACER Aspire 5 A514-54-36YJ (NX.A28SV.003) ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2666MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.4 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(450 AS Numeric(18, 0)), N'Laptop ACER Aspire 5 A514-54-36YJ.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (91, N'Laptop ACER Swift 3 SF314-59-568P (NX.A0MSV.002) ( 14" Full HD/Intel Core i5-1135G7/8GB/1TB SSD/Windows 10 Home 64-bit/1.2kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 8GB Onboard LPDDR4X 2666MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 1TB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(1000 AS Numeric(18, 0)), N'Laptop ACER Swift 3 SF314-59-568P (NX.A0MSV.002).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (92, N'Laptop ACER Swift 3 SF314-59-599U NX.A0MSV.001 ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.2kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 1 x 8GB LPDDR4X 2666MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(990 AS Numeric(18, 0)), N'Laptop ACER Swift 3 SF314-59-599U NX.A0MSV.001.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (93, N'Laptop ACER Aspire 5 A514-54-32ZW (NX.A2ASV.001) ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2666MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.4 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(600 AS Numeric(18, 0)), N'Laptop ACER Aspire 5 A514-54-32ZW (NX.A2ASV.001).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (94, N'Laptop ACER Aspire 5 A514-54-38TM (NX.A2BSV.001) ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2666MHz
- Đồ họa: Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.4 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(700 AS Numeric(18, 0)), N'Laptop ACER Aspire 5 A514-54-38TM (NX.A2BSV.001).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (95, N'Laptop ACER Nitro 5 AN515-55-72P6 (NH.QBNSV.004) ( 15.6" Full HD/ 144Hz/Intel Core i7-10750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Win 10 Home)', N'- CPU: Intel Core i7-10750H
- Màn hình: 15.6" IPS (1920 x 1080), 144Hz
- RAM: 1 x 8GB DDR4 2933MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 57 Wh Pin liền
- Khối lượng: 2.3 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(1200 AS Numeric(18, 0)), N'Laptop ACER Nitro 5 AN515-55-72P6 (NH.QBNSV.004).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (96, N'Laptop ACER Nitro 5 AN515-44-R9JM (NH.Q9MSV.003) ( 15.6" Full HD/ 144Hz/AMD Ryzen 5 4600H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Win 10 Home)', N'- CPU: AMD Ryzen 5 4600H
- Màn hình: 15.6" IPS (1920 x 1080), 144Hz
- RAM: 1 x 8GB DDR4 3200MHz
- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR6 / AMD Radeon Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 4 cell 57 Wh Pin liền
- Khối lượng: 2.2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(1100 AS Numeric(18, 0)), N'Laptop ACER Nitro 5 AN515-44-R9JM (NH.Q9MSV.003).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (97, N'Laptop ACER Aspire 3 A315-23-R1XZ (NX.HVUSV.005) ( 15.6" Full HD/AMD Ryzen 3 3250U/4GB/256GB SSD/Windows 10 Home 64-bit/1.7kg)', N'- CPU: AMD Ryzen 3 3250U
- Màn hình: 15.6" IPS (1920 x 1080)
- RAM: 1 x 4GB Onboard DDR4 2400MHz
- Đồ họa: AMD Radeon Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 2 cell 36 Wh Pin liền
- Khối lượng: 1.7 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(580 AS Numeric(18, 0)), N'Laptop ACER Aspire 3 A315-23-R1XZ (NX.HVUSV.005).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (98, N'Laptop ACER Swift 3 SF314-59-5178 (NX.A0RSV.001) ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.2kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 14" (1920 x 1080)
- RAM: 8GB Onboard LPDDR4X 2666MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.2 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(880 AS Numeric(18, 0)), N'Laptop ACER Swift 3 SF314-59-5178 (NX.A0RSV.001).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (99, N'Laptop ACER Aspire 5 A514-54-540F NX.A28SV.005 ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.5kg)', N'- CPU: Intel Core i5-1135G7
- Màn hình: 14" IPS (1920 x 1080)
- RAM: 8GB (4GB + 4GB Onboard) DDR4 2666MHz
- Đồ họa: Intel Iris Xe Graphics
- Lưu trữ: 512GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- 48 Wh Pin liền
- Khối lượng: 1.5 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(770 AS Numeric(18, 0)), N'Laptop ACER Aspire 5 A514-54-540F NX.A28SV.005.png')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (100, N'Laptop Acer Aspire 3 A315-57G-31YD NX.HZRSV.008 ( 15.6" Full HD/Intel Core i3-1005G1/4GB/256GB SSD/NVIDIA GeForce MX330/Win 10 Home)', N'- CPU: Intel Core i3-1005G1
- Màn hình: 15.6" (1920 x 1080)
- RAM: 1 x 4GB Onboard 2400MHz
- Đồ họa: NVIDIA GeForce MX330 2GB GDDR5 / Intel UHD Graphics
- Lưu trữ: 256GB SSD M.2 NVMe /
- Hệ điều hành: Windows 10 Home 64-bit
- Pin: 3 cell 36 Wh Pin liền
- Khối lượng: 1.9 kg', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'2', N'3', CAST(720 AS Numeric(18, 0)), N'Laptop Acer Aspire 3 A315-57G-31YD NX.HZRSV.008.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (101, N'Smart Tivi LG 4K 43 inch 43UN7190PTA', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(435 AS Numeric(18, 0)), N'Smart Tivi LG 4K 43 inch 43UN7190PTA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (102, N'Smart Tivi LG 4K 55 inch 55UN7190PTA', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(605 AS Numeric(18, 0)), N'Smart Tivi LG 4K 55 inch 55UN7190PTA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (103, N'Smart Tivi LG 4K 43 inch 43UN7400PTA', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(600 AS Numeric(18, 0)), N'Smart Tivi LG 4K 43 inch 43UN7400PTA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (104, N'Smart Tivi LG 4K 55 inch 55UN7400PTA
', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(865 AS Numeric(18, 0)), N'Smart Tivi LG 4K 55 inch 55UN7400PTA
.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (105, N'Smart Tivi LG 4K 55 inch 55UM7300PTA', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(520 AS Numeric(18, 0)), N'Smart Tivi LG 4K 55 inch 55UM7300PTA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (106, N'Smart Tivi LG HD 32 inch 32LK540BPTA
', N'- Kích thước: 32" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(260 AS Numeric(18, 0)), N'Smart Tivi LG HD 32 inch 32LK540BPTA
.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (107, N'Smart Tivi LG 32 inch 32LM570BPTC', N'- Kích thước: 32" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(260 AS Numeric(18, 0)), N'Smart Tivi LG 32 inch 32LM570BPTC.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (108, N'Smart Tivi LG Full HD 43 inch 43LK5400PTA', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(370 AS Numeric(18, 0)), N'Smart Tivi LG Full HD 43 inch 43LK5400PTA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (109, N'Smart Tivi NanoCell LG 4K 55 inch 55NANO81TNA', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(1081 AS Numeric(18, 0)), N'Smart Tivi NanoCell LG 4K 55 inch 55NANO81TNA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (110, N'Smart Tivi NanoCell LG 4K 49 inch 49NANO86TNA', N'- Kích thước: 49" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'1', CAST(995 AS Numeric(18, 0)), N'Smart Tivi NanoCell LG 4K 49 inch 49NANO86TNA.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (111, N'Android Tivi TCL 55 inch 55P715', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Android 9.0 <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'12', CAST(650 AS Numeric(18, 0)), N'Android Tivi TCL 55 inch 55P715.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (112, N'Android Tivi HD TCL 32 inch 32S6500', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'12', CAST(260 AS Numeric(18, 0)), N'Android Tivi HD TCL 32 inch 32S6500.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (113, N'Android Tivi TCL 32 inch 32S66A', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'12', CAST(260 AS Numeric(18, 0)), N'Android Tivi TCL 32 inch 32S66A.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (114, N'Tivi TCL 32 inch L32D3000', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'12', CAST(175 AS Numeric(18, 0)), N'Tivi TCL 32 inch L32D3000.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (115, N'Android Tivi TCL Full HD 49 inch 49S6500', N'- Kích thước: 49" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'12', CAST(302 AS Numeric(18, 0)), N'Android Tivi TCL Full HD 49 inch 49S6500.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (116, N'Smart Tivi SHARP Full HD 50 inch 50SA5500X', N'- Kích thước: 50" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(470 AS Numeric(18, 0)), N'Smart Tivi SHARP Full HD 50 inch 50SA5500X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (117, N'Android Tivi Sharp 32 inch 2T-C32BG1X', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(170 AS Numeric(18, 0)), N'Android Tivi Sharp 32 inch 2T-C32BG1X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (118, N'Smart Tivi SHARP 4K 50 inch LC-50UA6500X', N'- Kích thước: 50" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(610 AS Numeric(18, 0)), N'Smart Tivi SHARP 4K 50 inch LC-50UA6500X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (119, N'Smart Tivi Sharp 60 inch 4T-C60AL1X', N'- Kích thước: 60" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(675 AS Numeric(18, 0)), N'Smart Tivi Sharp 60 inch 4T-C60AL1X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (120, N'Android Tivi Sharp 4K 70 inch 4T-C70BK1X', N'- Kích thước: 70" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(1170 AS Numeric(18, 0)), N'Android Tivi Sharp 4K 70 inch 4T-C70BK1X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (121, N'Android Tivi Sharp 4K 50 inch 4T-C50BK1X', N'- Kích thước: 50" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'13', CAST(415 AS Numeric(18, 0)), N'Android Tivi Sharp 4K 50 inch 4T-C50BK1X.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (122, N'Android Tivi Panasonic 4K 55 inch TH-55FX650V', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'14', CAST(675 AS Numeric(18, 0)), N'Android Tivi Panasonic 4K 55 inch TH-55FX650V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (123, N'Smart Tivi 4K Panasonic 43 Inch TH-43GX650V', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'14', CAST(460 AS Numeric(18, 0)), N'Smart Tivi 4K Panasonic 43 Inch TH-43GX650V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (124, N'Smart Tivi Panasonic 4K 49 inch 49FX500V', N'- Kích thước: 49" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'14', CAST(675 AS Numeric(18, 0)), N'Smart Tivi Panasonic 4K 49 inch 49FX500V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (125, N'Smart Tivi Panasonic 4K 49 inch 49EX600V', N'- Kích thước: 49" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'14', CAST(650 AS Numeric(18, 0)), N'Smart Tivi Panasonic 4K 49 inch 49EX600V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (126, N'Smart Tivi Samsung 4K 43 inch 43TU7000', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(475 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 43 inch 43TU7000.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (127, N'Smart Tivi Samsung 4K 55 inch UA55TU7000KXXV', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(670 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 55 inch UA55TU7000KXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (128, N'Smart Tivi Samsung 4K 50 inch UA50TU7000KXXV', N'- Kích thước: 50" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(590 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 50 inch UA50TU7000KXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (129, N'Smart Tivi Samsung 4K 43 inch UA43TU8100KXXV', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(520 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 43 inch UA43TU8100KXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (130, N'Smart Tivi Samsung 4K 55 inch UA55TU8100KXXV', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(775 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 55 inch UA55TU8100KXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (131, N'Smart Tivi QLED Samsung 8K 65 inch QA65Q950TSKXXV', N'- Kích thước: 65" <br>
- Độ phân giải: 7680 x 4320 / Full Ultra HD (8K) <br>
- Hệ điều hành: Tizen <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(5200 AS Numeric(18, 0)), N'Smart Tivi QLED Samsung 8K 65 inch QA65Q950TSKXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (132, N'Smart Tivi QLED Samsung 8K 75 inch QA75Q950TSKXXV', N'- Kích thước: 75" <br>
- Độ phân giải: 7680 x 4320 / Full Ultra HD (8K) <br>
- Hệ điều hành: Tizen <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(8250 AS Numeric(18, 0)), N'Smart Tivi QLED Samsung 8K 75 inch QA75Q950TSKXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (133, N'Smart Tivi QLED Samsung 4K 65 inch QA65Q80TAKXXV', N'- Kích thước: 65" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 4 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(2250 AS Numeric(18, 0)), N'Smart Tivi QLED Samsung 4K 65 inch QA65Q80TAKXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (134, N'Smart Tivi Samsung 4K 65 inch UA65RU7400KXXV', N'- Kích thước: 65" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(1500 AS Numeric(18, 0)), N'Smart Tivi Samsung 4K 65 inch UA65RU7400KXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (135, N'Smart Tivi QLED Samsung 4K 65 inch QA65Q65TAKXXV', N'- Kích thước: 65" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'15', CAST(1470 AS Numeric(18, 0)), N'Smart Tivi QLED Samsung 4K 65 inch QA65Q65TAKXXV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (136, N'TIVI SMART ISLIM VOICE SEARCH ASANZO 43 Inch 43S51', N'- Kích thước: 43" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Android 9.0 <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(290 AS Numeric(18, 0)), N'TIVI SMART ISLIM VOICE SEARCH ASANZO 43 Inch 43S51.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (137, N'TIVI SMART ISLIM ASANZO 55 Inch 55SL800', N'- Kích thước: 55" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: WebOS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(450 AS Numeric(18, 0)), N'TIVI SMART ISLIM ASANZO 55 Inch 55SL800.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (138, N'TIVI SMART ISLIM VOICE SEARCH ASANZO 32 Inch 32S51', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Android 9.0 <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(210 AS Numeric(18, 0)), N'TIVI SMART ISLIM VOICE SEARCH ASANZO 32 Inch 32S51.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (139, N'TIVI ELED SMART ASANZO 50 Inch 50AG600', N'- Kích thước: 50" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(380 AS Numeric(18, 0)), N'TIVI ELED SMART ASANZO 50 Inch 50AG600.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (140, N'TIVI SMART ISLIM ASANZO 50 Inch 50SL700', N'- Kích thước: 50" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Android 9.0 <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(350 AS Numeric(18, 0)), N'TIVI SMART ISLIM ASANZO 50 Inch 50SL700.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (141, N'TIVI LED ASANZO 32 Inch 32T31
', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(150 AS Numeric(18, 0)), N'TIVI LED ASANZO 32 Inch 32T31
.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (142, N'TIVI SMART ISLIM ASANZO 32 Inch 32SL500', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>
- Hệ điều hành: Android 9.0 <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(250 AS Numeric(18, 0)), N'TIVI SMART ISLIM ASANZO 32 Inch 32SL500.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (143, N'TIVI SMART ISLIM ASANZO 43 Inch 43SL600', N'- Kích thước: 43" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(375 AS Numeric(18, 0)), N'TIVI SMART ISLIM ASANZO 43 Inch 43SL600.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (144, N'TIVI ELED SMART ASANZO 55 Inch 55AG800', N'- Kích thước: 50" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(450 AS Numeric(18, 0)), N'TIVI ELED SMART ASANZO 55 Inch 55AG800.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (145, N'TIVI SMART 4K VOICE SEARCH ASANZO 65 Inch 65UV10', N'- Kích thước: 65" <br>
- Độ phân giải: 3840 x 2160 / Ultra HD (4K) <br>
- Hệ điều hành: Tizen OS <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(680 AS Numeric(18, 0)), N'TIVI SMART 4K VOICE SEARCH ASANZO 65 Inch 65UV10.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (146, N'TIVI ELED SMART ASANZO 65 Inch AS65SK900', N'- Kích thước: 65" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Easy Smart <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(870 AS Numeric(18, 0)), N'TIVI ELED SMART ASANZO 65 Inch AS65SK900.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (147, N'TIVI SMART 4K VOICE SEARCH ASANZO 75 Inch 75UV10', N'- Kích thước: 75" <br>
- Độ phân giải: 7680 x 4320 / Full Ultra HD (8K) <br>
- Hệ điều hành: Tizen <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(1300 AS Numeric(18, 0)), N'TIVI SMART 4K VOICE SEARCH ASANZO 75 Inch 75UV10.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (148, N'TIVI LED ASANZO 25 Inch 25S200T2', N'- Kích thước: 25" <br>
- Độ phân giải: 1366 x 768 / HD <br>- Cổng xuất hình: 1 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'16', CAST(120 AS Numeric(18, 0)), N'TIVI LED ASANZO 25 Inch 25S200T2.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (149, N'Smart Tivi Sanco 43 inch H43S200', N'- Kích thước: 43" <br>
- Độ phân giải: 1920 x 1080 / Full HD <br>
- Hệ điều hành: Android <br>
- Kết nối mạng: LAN, WiFi <br>
- Cổng xuất hình: 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'17', CAST(290 AS Numeric(18, 0)), N'Smart Tivi Sanco 43 inch H43S200.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (150, N'Tivi Led Sanco 32 inch H32T200', N'- Kích thước: 32" <br>
- Độ phân giải: 1366 x 768 / HD <br>- Cổng xuất hình: 3 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'3', N'17', CAST(130 AS Numeric(18, 0)), N'Tivi Led Sanco 32 inch H32T200.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (151, N'Máy lạnh Panasonic CU/CS-XPU9WKH-8 Inverter 1 HP (9.040 BTU)', N'- Công suất lạnh : 1 HP 9.040 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Có <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(500 AS Numeric(18, 0)), N'Panasonic CUCS-XPU9WKH-8 Inverter 1 HP (9.040 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (152, N'Máy lạnh Panasonic CU/CS-XPU9XKH-8 Inverter 1 HP (9000 BTU)', N'- Công suất lạnh : 1 HP 9000 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br> 
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: iAuto-X <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(440 AS Numeric(18, 0)), N'Panasonic CUCS-XPU9XKH-8 Inverter 1 HP (9000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (153, N'Máy lạnh Panasonic CU/CS-XPU12XKH-8 Inverter 1.5 HP (12000Btu)', N'- Công suất lạnh : 1.5 HP 12000Btu <br>
- Phạm vi hiệu quả: 15-20 m2 (40-60 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: iAuto-X <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(550 AS Numeric(18, 0)), N'Panasonic CUCS-XPU12XKH-8 Inverter 1.5 HP (12000Btu).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (154, N'Điều hòa Panasonic Z9VKH Inverter 1 HP (9.000BTU)', N'- Công suất lạnh : 1 HP 9.000BTU <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Fast Cool <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(720 AS Numeric(18, 0)), N'Panasonic Z9VKH Inverter 1 HP (9.000BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (155, N'Điều hòa Panasonic Z12VKH Inverter 1.5 HP (12.000 BTU)', N'- Công suất lạnh : 1.5 HP 12.000 BTU <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Fast Cool <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(850 AS Numeric(18, 0)), N'Panasonic Z12VKH Inverter 1.5 HP (12.000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (156, N'Điều hòa Panasonic Inverter YZ9UKH-8 1HP (9.000 BTU)', N'- Công suất lạnh : 1 HP 9.000 BTU / Phạm vi: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER / Công suất TB: 0.8 kW/h <br>
- Làm lạnh nhanh: Có / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(620 AS Numeric(18, 0)), N'Panasonic Inverter YZ9UKH-8 1HP (9.000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (157, N'Điều hòa Panasonic CU/CS-E28NFQ Inverter 3 HP (25.000BTU)', N'- Công suất lạnh : 3 HP 25.000BTU <br>
- Phạm vi hiệu quả: >40 m2 (>120 m3) <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Có <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(1830 AS Numeric(18, 0)), N'Panasonic CUCS-E28NFQ Inverter 3 HP (25.000BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (158, N'Máy lạnh Panasonic CU/CS-XPU24WKH-8 Inverter 2.5 HP (24.000BTU)', N'- Công suất lạnh : 2.5 HP 24.000BTU <br>
- Phạm vi hiệu quả: 30-40 m2 (80-120 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: iAuto-X <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(1250 AS Numeric(18, 0)), N'Panasonic CUCS-XPU24WKH-8 Inverter 2.5 HP (24.000BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (159, N'Điều hòa Panasonic Z24VKH Inverter 2.5 HP (24.000BTU)', N'- Công suất lạnh : 2.5 HP 24.000BTU <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Fast Cool <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(1680 AS Numeric(18, 0)), N'Panasonic Z24VKH Inverter 2.5 HP (24.000BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (160, N'Máy lạnh PANASONIC CU/CS-PU18WKH-8M Inverter 2 HP (17.100 BTU)', N'- Công suất lạnh : 2 HP 17.100 BTU <br>
- Phạm vi hiệu quả: 20-30 m2 (60-80 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'14', CAST(950 AS Numeric(18, 0)), N'PANASONIC CUCS-PU18WKH-8M Inverter 2 HP (17.100 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (161, N'Máy lạnh LG V13ENS1 Inverter 1.5 HP (12000 BTU)', N'- Công suất lạnh : 1.5 HP 12000Btu <br>
- Phạm vi hiệu quả: 15-20 m2 (40-60 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: iAuto-X <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(470 AS Numeric(18, 0)), N'LG V13ENS1 Inverter 1.5 HP (12000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (162, N'Máy lạnh LG Inverter V18ENF 2HP (18.000 BTU)', N'- Công suất lạnh : 2 HP 18.000 BTU / Phạm vi: 20-30 m2 (60-80 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 1.54 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(780 AS Numeric(18, 0)), N'LG Inverter V18ENF 2HP (18.000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (163, N'Máy lạnh LG Inverter V10API 1HP (9.200 BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU / Phạm vi: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 0.77 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(480 AS Numeric(18, 0)), N'LG Inverter V10API 1HP (9.200 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (164, N'Máy lạnh LG Inverter V13API 1.5HP (12.000 BTU)', N'- Công suất lạnh : 2 HP 12.000 BTU / Phạm vi: 20-30 m2 (60-80 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 1.54 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(550 AS Numeric(18, 0)), N'LG Inverter V13API 1.5HP (12.000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (165, N'Điều hòa LG Inverter B10END 1HP (9.200 BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU / Phạm vi: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER / Công suất TB: 0.8 kW/h <br>
- Làm lạnh nhanh: Có / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(520 AS Numeric(18, 0)), N'LG Inverter B10END 1HP (9.200 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (166, N'Điều hòa LG Inverter B13END 1.5HP (12.000 BTU)', N'- Công suất lạnh : 1.5 HP 12.000 BTU / Phạm vi: 15-20 m2 (40-60 m3) <br>
- Máy lạnh: Hai chiều (có sưởi ấm) <br>
- INVERTER: Có INVERTER / Công suất TB: 1.22 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(580 AS Numeric(18, 0)), N'LG Inverter B13END 1.5HP (12.000 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (167, N'Máy lạnh LG Inverter V24ENF 2.5HP (21.500 BTU)', N'- Công suất lạnh : 2.5 HP 21.500 BTU / Phạm vi: 30-40 m2 (80-120 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 1.85 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(950 AS Numeric(18, 0)), N'LG Inverter V24ENF 2.5HP (21.500 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (168, N'Máy lạnh LG V18ENF1 Inverter 2 HP (20500 Btu/h)', N'- Công suất lạnh : 2 HP 20.500 BTU / Phạm vi: 20-30 m2 (60-80 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 1.54 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(770 AS Numeric(18, 0)), N'LG V18ENF1 Inverter 2 HP (20500 Btu).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (169, N'Máy lạnh LG Inverter V10ENF 1HP (9.200 BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU / Phạm vi: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 0.77 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(375 AS Numeric(18, 0)), N'LG Inverter V10ENF 1HP (9.200 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (170, N'Máy lạnh LG Inverter V10ENW 1HP (9.200 BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU / Phạm vi: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER / Công suất TB: 0.77 kW/h <br>
- Làm lạnh nhanh: Jet Cool / Tiết kiệm điện: 5 sao <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'1', CAST(400 AS Numeric(18, 0)), N'LG Inverter V10ENW 1HP (9.200 BTU).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (171, N'Màn Hình ASUS 21.5" VZ229HE (FullHD/5ms)', N'- Kích thước: 21.5" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br> 
- Góc nhìn: 178 (H) / 178 (V) <br>
- Thời gian phản hồi: 5 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(150 AS Numeric(18, 0)), N'ASUS 21.5 VZ229HE.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (172, N'Màn Hình ASUS 27" VZ279HE (FullHD/5ms)', N'- Kích thước: 27" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br> 
- Góc nhìn: 178 (H) / 178 (V) <br>
- Thời gian phản hồi: 5 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(250 AS Numeric(18, 0)), N'ASUS 27 VZ279HE.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (173, N'Màn Hình ASUS 21.5" VZ229H (FullHD/IPS/5ms)', N'- Kích thước: 21.5" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br> 
- Công nghệ tấm nền: IPS <br>
- Góc nhìn: 178 (H) / 178 (V) <br>
- Thời gian phản hồi: 5 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(170 AS Numeric(18, 0)), N'ASUS 21.5 VZ229H.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (174, N'Màn Hình ASUS 23.8" VA249HE (FullHD/VA/5ms)', N'- Kích thước: 23.8" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br> 
- Góc nhìn: 178 (H) / 178 (V) <br>
- Thời gian phản hồi: 5 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(130 AS Numeric(18, 0)), N'ASUS 23.8 VA249HE.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (175, N'Màn Hình ASUS 24" VG248QE (FullHD/TN/144Hz/1ms)', N'- Kích thước: 24" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br>
- Công nghệ tấm nền: TN <br>
- Góc nhìn: 170 (H) / 160 (V) <br>
- Tần số quét: 144Hz <br>
- Thời gian phản hồi: 1 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(290 AS Numeric(18, 0)), N'ASUS 24 VG248QE.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (176, N'Màn hình ASUS 31.5" VA326H (FullHD/VA/144Hz/4ms)', N'- Kích thước: 31.5" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br>
- Công nghệ tấm nền: VA <br>
- Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 144Hz <br>
- Thời gian phản hồi: 4 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(400 AS Numeric(18, 0)), N'ASUS 31.5 VA326H.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (177, N'Màn hình LCD ASUS MB16AHP (1920 x 1080/IPS)', N'- Kích thước: 15.6" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS <br>
- Cổng hình ảnh: , 1 x Micro HDMI, 1 x USB Type-C <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(390 AS Numeric(18, 0)), N'LCD ASUS MB16AHP.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (178, N'Màn hình LCD Asus 27 inch VX278H (FullHD/TN/1ms)', N'- Kích thước: 27" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br>
- Công nghệ tấm nền: TN <br>
- Góc nhìn: 170 (H) / 160 (V) <br>
- Thời gian phản hồi: 1 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(220 AS Numeric(18, 0)), N'LCD Asus 27 inch VX278H.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (179, N'Màn hình LCD Asus 24.5 inch VG258QR (FullHD/TN/165Hz/0,5ms/G-SyncCompatible)', N'- Kích thước: 24.5" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br>
- Công nghệ tấm nền: TN <br>
- Góc nhìn: 170 (H) / 160 (V) <br>
- Thời gian phản hồi: 1 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(300 AS Numeric(18, 0)), N'LCD Asus 24.5 inch VG258QR.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (180, N'Màn Hình ASUS 27" VG278Q (FullHD/TN/144Hz/1ms/G-SyncCompatible/FreeSync)', N'- Kích thước: 27" <br>
- Độ phân giải: 1920 x 1080 ( 16:9 ) <br>
- Công nghệ tấm nền: TN <br>
- Góc nhìn: 170 (H) / 160 (V) <br>
- Thời gian phản hồi: 1 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'4', CAST(350 AS Numeric(18, 0)), N'ASUS 27 VG278Q.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (181, N'Chuột gaming Logitech G402 (Đen)', N'- Cảm biến quang AM10 mạnh mẽ nhận diện tốt trên mọi bề mặt <br>- 8 nút tuỳ chỉnh với phần mềm Logitech Gaming Software <br>- Chip xử lý ARM 32-bit cao cấp <br>- Cấu trúc nút bấm cao cấp hỗ trợ click chuột ở cường độ cao <br>- Tần số quét/ tốc độ phản hồi : 1000hz/1ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(35 AS Numeric(18, 0)), N'Logitech G402.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (182, N'Chuột chơi game Logitech G304 Wireless (Đen)', N'- Kiểu kết nối: Không dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 12000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(35 AS Numeric(18, 0)), N'Logitech G304 Wireless.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (183, N'Chuột gaming Logitech G502 HERO (Đen)', N'- Kiểu kết nối: Có dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 16000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(80 AS Numeric(18, 0)), N'Logitech G502 HERO.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (184, N'Chuột gaming Logitech G403 Hero', N'- Kiểu kết nối: Có dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 16000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(80 AS Numeric(18, 0)), N'Logitech G403 Hero.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (185, N'Chuột gaming không dây Logitech G703 Hero', N'- Chuột gaming Logitech G703 <br>
- Cảm biến HERO cho DPI lên đến 16.000 <br>
- Kết nối Lightspeed không dây <br>
- Thời lượng pin ấn tượng lên đến 35 giờ và 60 giờ khi không chiếu sáng <br>
- 6 nút bấm có thể lập trình và led RGB tùy chỉnh tất cả đều chỉ bằng phần mềm HUB G <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(100 AS Numeric(18, 0)), N'Logitech G703 Hero.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (186, N'Chuột gaming không dây Logitech G603 (Đen)
', N'- Kiểu kết nối: Không dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 12000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(70 AS Numeric(18, 0)), N'Logitech G603.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (187, N'Chuột gaming Logitech G302 (Đen)', N'- Cảm biến quang học công nghệ Logitech Delta Zero <br>
- 6 nút bấm tích hợp tuỳ chỉnh chức năng bằng Logitech Gaming Software <br>
- DPI tuỳ chỉnh nhanh từ 240-4000 <br>
- Thiết kế đối xứng phục vụ cầm tay trái hoặc tay phải. <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(40 AS Numeric(18, 0)), N'Logitech G302.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (188, N'Chuột gaming không dây Logitech G903 (Đen)', N'- Kết nối 2 chế độ không dây và có dây. <br>
- Sử dụng Cảm biến quang học cao cấp Pixart PMW3366.-DPI tuỳ chỉnh từ 200 - 12,000 DPI. <br>
- 11 nút bấm tuỳ chỉnh bằng phần mềm Logitech Gaming Software. <br>
- Led RGB tuỳ chỉnh 16,8 triệu màu.-Thiết kế đối xứng, có phụ kiện thay đổi phím chức năng 2 bên. <br>
- Kết hợp sạc trực tiếp khi di trên bề mặt bàn di chuột Logitech PowerPlay.-Bổ sung tạ đi kèm điều chỉnh khối lượng. <br>
- Bộ nhớ trong tích hợp, lưu giữ mọi thiết lập trên chuột. <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(170 AS Numeric(18, 0)), N'Logitech G903.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (189, N'Chuột gaming Logitech G102 (Đen)', N'- Kiểu kết nối: Có dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 8000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(30 AS Numeric(18, 0)), N'Logitech G102.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (190, N'Chuột gaming không dây Logitech G703 (Đen)', N'- Thiết kế đẹp mắt <br>
- Chất liệu gia công cao cấp <br>
- Tích hợp nhiều tính năng vượt trội <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(130 AS Numeric(18, 0)), N'Logitech G703.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (191, N'Bà̀n phím giả cơ Logitech Gaming G213 (Đen)', N'- Bà̀n phím giả cơ <br>
- Kết nối USB 2.0 <br>
- Kiểu switch Rubber Dome <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(50 AS Numeric(18, 0)), N'Logitech Gaming G213.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (192, N'Bàn phím cơ Logitech G610', N'- Bà̀n phím giả cơ <br>
- Kết nối USB 2.0 <br>
- Kiểu switch Cherry MX Blue <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(80 AS Numeric(18, 0)), N'Logitech G610.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (193, N'Bàn phím cơ Logitech G613 không dây (Full size/Romer-G)', N'- Kiểu: Bàn phím cơ <br>
- Kiểu kết nối: Không dây <br>
- Switch: Romer-G <br> 
- Kích thước: Full size <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(90 AS Numeric(18, 0)), N'Logitech G613.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (194, N'Bàn phím cơ Logitech Gaming G810', N'- Bàn phím cơ <br>
- Kết nối USB 2.0 <br>
- Kiểu switch Romer-G <br>
- Phím chức năng Có <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(110 AS Numeric(18, 0)), N'Logitech Gaming G810.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (195, N'Bàn phím cơ Logitech Gaming G413', N'- Bàn phím cơ <br>
- Kết nối USB 2.0 <br>
- Kiểu switch Romer-G Tactile <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(90 AS Numeric(18, 0)), N'Logitech Gaming G413.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (196, N'Bàn phím cơ Logitech Gaming G512 (Full size /Romer-G Tactile)', N'- Bàn phím cơ <br>
- Kết nối USB 2.0 <br>
- Kiểu switch Romer-G Tactile <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'18', CAST(130 AS Numeric(18, 0)), N'Logitech Gaming G512.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (197, N'Bàn phím cơ AKKO 3087 v2 World Tour Tokyo (Akko switch v2)', N'- Model: 3087 (Tenkeyless, 87 keys) <br>
- Kết nối: USB Type C, có thể tháo rời <br>
- Kích thước: 360 x 140 x 40mm <br>
- Hỗ trợ: NKRO / Multimedia / Macro / Khóa phím windows <br>- Keycap: PBT Dye-Subbed – OEM Profile <br>
- Loại switch: Akko switch (Blue/Orange/Pink) v2 <br>
- Phụ kiện: 1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB + 11 keycap tặng kèm <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'19', CAST(50 AS Numeric(18, 0)), N'AKKO 3087 v2 World Tour Tokyo.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (198, N'Bàn phím cơ AKKO 3108 v2 World Tour Tokyo (Akko switch v2)', N'- Model: 3087 (Tenkeyless, 87 keys) <br>
- Kết nối: USB Type C, có thể tháo rời <br>
- Kích thước: 440 x 140 x 40mm | Trọng lượng: 1.2 kg <br>
- Hỗ trợ: NKRO / Multimedia / Macro / Khóa phím windows <br>
- Keycap: PBT Dye-Subbed – OEM Profile <br>
- Loại switch: Akko switch (Blue/Orange/Pink) v2 <br>
- Phụ kiện: 1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB + 11 keycap tặng kèm <br>
- Tương thích: Windows / MacOS / Linux <br>
- Bàn phím AKKO khi kết nối với MacOS: (Ctrl -> Control | Windows -> Command | Alt -> Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này) <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'19', CAST(70 AS Numeric(18, 0)), N'AKKO 3108 v2 World Tour Tokyo.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (199, N'Bàn phím cơ AKKO 3098 DS Matcha Red Bean (Gateron Cap Yellow)', N'- Thương hiệu: Akko <br>
- Bảo hành: 12 Tháng <br>
- Model: 3098 DS Matcha Red Bean <br>
- Màu sắc: Green + White <br>
- Kết nối: Có dây <br>
- Giao tiếp: USB Type C có thể tháo rời <br>
- Kiểu dáng: Fullsize (98 phím) <br>
- Loại bàn phím: Bàn phím cơ <br>
- Switch: Gateron Cap Yellow <br>
- Keycap: PBT Doubleshot <br>
- Kích thước (WxDxH): 382 x 134 x 40 (mm) <br>
- Phụ kiện: 1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 20 keycap tặng kèm + 1 dây cáp USB <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'19', CAST(90 AS Numeric(18, 0)), N'AKKO 3098 DS Matcha Red Bean.png')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (200, N'Bàn phím cơ Akko 3084 Silent Bluetooth (Akko switch v2)', N'- Thương hiệu: Akko <br>
- Bảo hành: 12 Tháng <br>
- Model: 3084 <br>
- Màu sắc: Xám trắng xanh <br>
- Kết nối: Bluetooth 5.0 / USB Type C, có thể tháo rời / Kết nối 4 thiết bị (4 profiles) <br>
- Tương thích:	Windows / MacOS / Linux / IOS / ANDROID <br>
- Dung lượng pin: 1800 mah <br>
- Thời gian sử dụng: ~ 200 giờ hoạt động <br>
- Keycap: PBT Dye-Subbed – OEM Profile <br>
- Loại switch: Akko switch (Blue/Pink/Orange) <br>
- Kích thước: 315 x 127 x 40mm <br>
- Hỗ trợ: NKRO/Multimedia/Macro/Khóa phím Windows <br>
- Phụ kiện: 1 x sách hướng dẫn sử dụng / 1 x keypuller / 1 x cover che bụi / 1 x dây cáp USB / Bộ keycap tặng kèm <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'19', CAST(70 AS Numeric(18, 0)), N'Akko 3084 Silent Bluetooth.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (201, N'Máy lạnh Daikin FTF25UV1V/RF25UV1V 1 HP (9000BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(400 AS Numeric(18, 0)), N'Daikin FTF25UV1V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (202, N'Máy lạnh Daikin FTKA25UAVMV Inverter 1 HP (9.000 BTU)', N'- Công suất lạnh : 1 HP 9.200 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(450 AS Numeric(18, 0)), N'Daikin FTKA25UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (203, N'Máy lạnh Daikin ATKA25UAVMV Inverter 1 HP (8.500 BTU)', N'- Công suất lạnh : 1 HP 8.500 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(450 AS Numeric(18, 0)), N'Daikin ATKA25UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (204, N'Máy lạnh Daikin ATF25UV1V 1 HP (9300 BTU)', N'- Công suất lạnh : 1 HP 9.300 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(400 AS Numeric(18, 0)), N'Daikin ATF25UV1V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (205, N'Máy lạnh Daikin ATF35UV1V 1.5 HP (11.100 BTU)', N'- Công suất lạnh : 1 HP 11.100 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(470 AS Numeric(18, 0)), N'Daikin ATF35UV1V.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (206, N'Máy lạnh Daikin FTKA35UAVMV Inverter 1.5 HP (12.000 BTU)', N'- Công suất lạnh : 1.5 HP 12.000 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(500 AS Numeric(18, 0)), N'Daikin FTKA35UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (207, N'Máy lạnh Daikin FTKA50UAVMV Inverter 2 HP (17.100 BTU)', N'- Công suất lạnh : 2 HP 17.100 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(920 AS Numeric(18, 0)), N'Daikin FTKA50UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (208, N'Máy lạnh Daikin FTKC25UAVMV Inverter 1 HP (9.000 BTU)', N'- Công suất lạnh : 1 HP 9.000 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(470 AS Numeric(18, 0)), N'Daikin FTKC25UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (209, N'Máy lạnh Daikin ATKC35UAVMV Inverter 1.5 HP (11.900 BTU)', N'- Công suất lạnh : 1.5 HP 11.900 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(600 AS Numeric(18, 0)), N'Daikin ATKC35UAVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (210, N'Dàn nóng điều hòa multi Daikin 2.5 HP MKC70SVMV', N'- Công suất lạnh : 2.5 HP 24.000 BTU <br>
- Phạm vi hiệu quả: < 15 m2 (30-45 m3) <br>
- Máy lạnh: Một chiều (chỉ làm lạnh) <br>
- INVERTER: Có INVERTER <br>
- Làm lạnh nhanh: Powerful <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'4', N'20', CAST(1100 AS Numeric(18, 0)), N'Daikin MKC70SVMV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (211, N'Màn Hình LG 19.5" 20MK400H-B.ATV (1366x768/5ms)', N'- Kích thước: 19.5" <br>
- Độ phân giải: 1366 x 768 ( 16:9 ) <br>
- Góc nhìn: 90 (H) / 65 (V) <br>
- Thời gian phản hồi: 5 ms <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(100 AS Numeric(18, 0)), N'20MK400H.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (212, N'Màn hình LCD LG 29WN600-W.ATV (2560 x 1080/IPS/75Hz/5 ms/FreeSync)', N'- Kích thước: 29" (2560 x 1080), Tỷ lệ 21:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 2 x HDMI <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(300 AS Numeric(18, 0)), N'29WN600.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (213, N'Màn Hình LG 27" 27MP59G-P (1920x1080/IPS/75Hz/5ms/FreeSync)', N'- Kích thước: 27" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(220 AS Numeric(18, 0)), N'27MP59G.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (214, N'Màn hình LCD LG 22MN430M-B.ATV (1920 x 1080/IPS/75Hz/5 ms/FreeSync)', N'- Kích thước: 21.5" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(140 AS Numeric(18, 0)), N'22MN430M.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (215, N'Màn hình LCD LG 27'''' 27MK600M-B(1920 x 1080/IPS/5ms)', N'- Kích thước: 27" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(220 AS Numeric(18, 0)), N'27MK600M.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (216, N'Màn Hình LG 24" 24MK600 (1920x1080/IPS/5ms/FreeSync)', N'- Kích thước: 24" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(190 AS Numeric(18, 0)), N'24MK600.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (217, N'Màn Hình LG 23.8" 24MP88HV-S (1920x1080/IPS/60Hz/5ms)', N'- Kích thước: 23.8" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(220 AS Numeric(18, 0)), N'24MP88HV.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (218, N'Màn Hình LG 24" 24MP59G-P (1920x1080/IPS/75Hz/5ms/FreeSync)', N'- Kích thước: 24" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(160 AS Numeric(18, 0)), N'24MP59G.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (219, N'Màn hình LCD LG 27GL850-B.ATV (2560 x 1440/IPS/144Hz/1 ms/FreeSync)', N'- Kích thước: 27" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(530 AS Numeric(18, 0)), N'27GL850.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (220, N'Màn hình LCD LG 27MP500 (1920 x 1080/IPS/75Hz/5 ms/FreeSync)', N'- Kích thước: 27" (1920 x 1080), Tỷ lệ 16:9 <br>
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V) <br>
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms <br>
- HIển thị màu sắc: 16.7 triệu màu <br>
- Công nghệ đồng bộ: FreeSync <br>
- Cổng hình ảnh: 1 x DisplayPort 1.2, 1 x HDMI 1.4, 1 x VGA/D-sub  <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'5', N'1', CAST(210 AS Numeric(18, 0)), N'27MP500.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (221, N'Chuột máy tính Akko LW325 (Xanh)', N'- Chuột máy tính Akko LW325 được thiết kế nhỏ gọn trong lòng bàn tay trọng lượng vừa đủ bằng chất liệu nhựa. <br>
- Được thiết kế với công nghệ Omron siêu bền giúp cho chuột có tuổi thọ lên đến 50 triệu lần bấm. <br>
- Được trang bị cảm biến quang học với tối đa 5.000 DPI. <br> 
- Hỗ trợ macro, tùy chỉnh được thông qua phần mềm driver riêng. <br>
- Đèn LED RGB có thể điều chỉnh được thông qua phần mềm DRIVER. <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'19', CAST(30 AS Numeric(18, 0)), N'Akko LW325 Blue.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (222, N'Chuột máy tính Akko LW325 (Đen)', N'- Chuột máy tính Akko LW325 được thiết kế nhỏ gọn trong lòng bàn tay trọng lượng vừa đủ bằng chất liệu nhựa. <br>
- Được thiết kế với công nghệ Omron siêu bền giúp cho chuột có tuổi thọ lên đến 50 triệu lần bấm. <br>
- Được trang bị cảm biến quang học với tối đa 5.000 DPI. <br> 
- Hỗ trợ macro, tùy chỉnh được thông qua phần mềm driver riêng. <br>
- Đèn LED RGB có thể điều chỉnh được thông qua phần mềm DRIVER. <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'19', CAST(30 AS Numeric(18, 0)), N'Akko LW325 Black.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (223, N'Chuột gaming Akko AG325 Dragon Ball Super - Goku SSG', N'- Giao tiếp USB, dây cáp dài 1,8m <br>
- Vỏ nhựa ABS, Con lăn kim loại CNC <br>
- Hỗ trợ macro, tùy chỉnh được thông qua phần mềm driver riêng <br>
- DPI: 200/800/1000/1500 (mặc định)/2000/2500 <br>
- Polling Rate: 125/250/500/1000 Hz <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'19', CAST(35 AS Numeric(18, 0)), N'Akko AG325.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (224, N'Chuột máy tính Akko LW325 (Hồng)', N'- Chuột máy tính Akko LW325 được thiết kế nhỏ gọn trong lòng bàn tay trọng lượng vừa đủ bằng chất liệu nhựa. <br>
- Được thiết kế với công nghệ Omron siêu bền giúp cho chuột có tuổi thọ lên đến 50 triệu lần bấm. <br>
- Được trang bị cảm biến quang học với tối đa 5.000 DPI. <br> 
- Hỗ trợ macro, tùy chỉnh được thông qua phần mềm driver riêng. <br>
- Đèn LED RGB có thể điều chỉnh được thông qua phần mềm DRIVER. <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'19', CAST(30 AS Numeric(18, 0)), N'Akko LW325 Pink.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (225, N'Chuột gaming không dây Logitech G304 (Trắng)', N'- Kiểu kết nối: Không dây <br>
- Dạng cảm biến: HERO <br>
- Độ phân giải: 12000 DPI <br>
- Tốc độ phản hồi: 1000 Hz (1 ms) <br>
- Màu sắc: Đen <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(40 AS Numeric(18, 0)), N'Logitech G304 white.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (226, N'Chuột gaming Logitech G102 Gen2 Lightsync (Trắng)', N'- DPI tối đa 8000 <br>
- Lightsync RGB chiếu sáng <br>
- Thiết kế cổ điển <br>
- Kết nối USB <br>
- Tùy chỉnh bằng Logitech G HUB <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'18', CAST(35 AS Numeric(18, 0)), N'Logitech G102 Gen2.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (227, N'Chuột gaming ASUS CERBERUS (Đen)', N'- Điều khiển DPI linh hoạt <br>
- Bốn nấc DPI tùy chỉnh và được báo bằng đèn led. (500/1000/1500/2500 DPI) <br>
- Thiết kế cân đối, tạo khuôn ôm ngón tay cái và áp út, tạo cảm giác cầm dễ dàng và quen thuộc. <br>
- Hai lớp cao su được gắn bên hông tạo cảm giác cầm mềm và chống trượt tối ưu. <br>
- Kích thước : 124.86 (L) x 68.72(W) x 40.11(H) mm <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'4', CAST(25 AS Numeric(18, 0)), N'ASUS CERBERUS.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (228, N'Chuột máy tính Asus TUF Gaming M3', N'- Thiết kế cân xứng Ergonomic cho cảm giác cầm nắm thoải mái <br>
- Tốc độ chuột lên đến 7000 DPI kèm theo 2 nút DPI tinh chỉnh dễ dàng khi đang sử dụng <br>
- LED RGB tích hợp có thể điều chỉnh cùng với các tính năng qua phần mềm AMOURY II <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'4', CAST(35 AS Numeric(18, 0)), N'Asus TUF Gaming M3.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (229, N'Chuột gaming Asus ROG Gladius II Core (Đen)', N'- Thiết kế truyền thống, gọn nhẹ, tiện dụng <br>
- Cảm biến quang PAW3327 chuyên game <br>
- Độ phân giải lên đến 6200DPI <br>
- Thiết kế ổ cắm nút kiểu đẩy và lắp độc quyền theo phong cách ROG <br>
- ROG Amoury II giúp dễ dàng tùy chỉnh cài đặt và đèn <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'4', CAST(45 AS Numeric(18, 0)), N'Asus ROG Gladius II Core.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (230, N'Chuột chơi game ASUS ROG Pugio (Đen)', N'- Fit chuyển đổi thiết kế ổ cắm để dễ dàng thay đổi kích cỡ và kéo dài tuổi thọ của con chuột <br>
- Bộ cảm biến quang học cấp độ chơi game với 7200 DPI, 150 IPS và tăng tốc 30g để theo dõi nhanh và chính xác <br> 
- Thiết kế nút riêng biệt với lực khởi động thấp hơn và đáp ứng nhanh hơn <br> 
- Giao diện trực quan ROG Armory để dễ dàng tùy chỉnh các nút, hiệu chuẩn bề mặt, hiệu suất, cài đặt độ sáng Aura RGB và hơn thế nữa <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'6', N'4', CAST(65 AS Numeric(18, 0)), N'ASUS ROG Pugio.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (231, N'Bàn phím cơ Asus Rog Strix Scope TKL Red Switch', N'- Kết cấu bền: Tấm trên cùng bằng nhôm <br>
- Switch Cherry MX: truyền động chuyển mạch vi mô do Đức sản xuất <br>
- Nhấn để ẩn tất cả các ứng dụng và tắt âm thanh để bảo mật tức thì <br>
- Chuyển ngay lập tức giữa các đầu vào phím chức năng và phương tiện <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(150 AS Numeric(18, 0)), N'Asus Rog Strix Scope TKL Red Switch.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (232, N'Bàn phím cơ không dây Asus Rog Falchion Red Switch', N'- Bàn phím cơ <br>
- Kết nối: 2.4 GHz Wireless <br>
- Switch: Cherry MX Red <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(160 AS Numeric(18, 0)), N'Asus Rog Falchion Red Switch.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (233, N'Bàn phím cơ ASUS Strix Flare (Fullsize/Cherry MX Red)', N'- Bàn phím cơ <br>
- Kết nối: USB 2.0 <br>
- Switch: Cherry MX Red <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(180 AS Numeric(18, 0)), N'ASUS Strix Flare Red.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (234, N'Bàn phím giả cơ ASUS TUF K5 (Fullsize/RGB Aura Sync)', N'- Bàn phím giả cơ <br>
- Kết nối: 2.4 GHz Wireless <br>
- Switch: Cherry MX Red <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(65 AS Numeric(18, 0)), N'ASUS TUF K5.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (235, N'Bàn phím gaming Asus TUF K1 (Đen)', N'- Bàn phím giả cơ <br>
- Kết nối: USB<br>
- Switch: Membrane <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(60 AS Numeric(18, 0)), N'Asus TUF K1.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (236, N'Bàn phím cơ ASUS ROG Claymore (Cherry MX Blue/RGB)', N'- Bàn phím cơ <br>
- Kết nối: USB 2.0 <br>
- Switch: Cherry MX Blue <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(190 AS Numeric(18, 0)), N'ASUS ROG Claymore.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (237, N'Bàn phím cơ ASUS Strix Flare PNK Ltd (Fullsize/Cherry MX Blue) (Xám, Hồng)', N'- Bàn phím cơ <br>
- Kết nối: USB 2.0 <br>
- Switch: Cherry MX <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(200 AS Numeric(18, 0)), N'ASUS Strix Flare PNK.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (238, N'Bàn phím cơ Asus ROG Strix Scope (Blue switch)', N'- Kết cấu bền: Tấm trên cùng bằng nhôm <br>
- Switch Cherry MX: truyền động chuyển mạch vi mô do Đức sản xuất <br>
- Nhấn để ẩn tất cả các ứng dụng và tắt âm thanh để bảo mật tức thì <br>
- Chuyển ngay lập tức giữa các đầu vào phím chức năng và phương tiện <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(160 AS Numeric(18, 0)), N'Asus Rog Strix Scope TKL Blue Switch.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (239, N'Bàn phím cơ ASUS ROG Strix Flare (Fullsize/Cherry MX Blue)', N'- Bàn phím cơ <br>
- Kết nối: USB 2.0 <br>
- Switch: Cherry MX Blue <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(180 AS Numeric(18, 0)), N'ASUS Strix Flare Blue.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (240, N'Bàn phím cơ Asus ROG Strix Scope (Red switch)', N'- Bàn phím cơ <br>
- Kết nối: USB 2.0 <br>
- Switch: Cherry MX <br>', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), N'7', N'4', CAST(150 AS Numeric(18, 0)), N'Asus ROG Strix Scope (Red switch).png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (247, N'Máy lạnh Samsung Wind-Free Inverter 1 HP AR10TYGCDWKNSV', N'<p><h3 style=" margin: 0px 0px 15px; font: bold 20px / 28px Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none"><a href="https://www.dienmayxanh.com/kinh-nghiem-hay/ly-do-chon-mua-may-lanh-samsung-wind-free-hoan-hao-1157372#hmenuid1" title="Xem thêm công nghệ Wind-Free" style=" text-decoration: none; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font: bold 20px / 18px Arial, Helvetica, sans-serif; outline: none">C</a><a href="https://www.dienmayxanh.com/kinh-nghiem-hay/wind-free-cong-nghe-lam-lanh-cua-tuong-lai-1068729" target="_blank" title="xem thêm Wind-Free" type="xem thêm Wind-Free" style=" text-decoration: none; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font: bold 20px / 18px Arial, Helvetica, sans-serif; outline: none">ông nghệ Wind-Free</a><a href="https://www.dienmayxanh.com/kinh-nghiem-hay/12-ly-do-chon-mua-may-lanh-samsung-wind-free-hoan-1157372#hmenuid1" target="_blank" title="Xem thêm công nghệ Wind-Free 2020" style=" text-decoration: none; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font: bold 20px / 18px Arial, Helvetica, sans-serif; outline: none">&nbsp;</a>với 23.000 lỗ siêu nhỏ giúp lan tỏa khí lạnh nhanh chóng mà không lo gió buốt</h3><p style=" margin: 0px 0px 10px; text-rendering: geometricprecision; font-size: 16px; line-height: 20px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif">Hơn hẳn máy lạnh thông thường, ngoài hiệu quả mát lạnh tức thì,<span>&nbsp;</span><a href="https://www.dienmayxanh.com/may-lanh/samsung-ar10tygcdwknsv" title="Xem thêm máy lạnh Samsung Wind-Free Inverter 1 HP AR10TYGCDWKNSV " style=" text-decoration: none; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-size: 16px !important">máy lạnh Samsung Wind-Free Inverter 1 HP AR10TYGCDWKNSV</a>&nbsp;còn có thêm lựa chọn&nbsp;<strong>chế độ làm lạnh WindFree</strong>&nbsp;không gió buốt thổi trực tiếp.</p><p style=" margin: 0px 0px 10px; text-rendering: geometricprecision; font-size: 16px; line-height: 20px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif">Chỉ với 1 thao tác trên remote đơn giản, phòng sẽ nhanh chóng được làm lạnh lý tưởng với những luồng khí mát dịu từ&nbsp;<strong>23000 lỗ nhỏ</strong>&nbsp;ở mặt trước máy lạnh, hạn chế gió thổi buốt thổi trực tiếp mà vẫn duy trì nhiệt độ mong muốn của người dùng.</p><p style=" margin: 0px 0px 10px; text-rendering: geometricprecision; font-size: 16px; line-height: 20px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif"><a class="preventdefault" href="https://www.thegioididong.com/images/2002/217447/Slider/vi-vn-windfree.jpg" style=" text-decoration: none; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-size: 16px !important"><img alt="Wind-Free mới" class=" ls-is-cached lazyloaded" data-src="https://cdn.tgdd.vn/Products/Images/2002/217447/Slider/vi-vn-windfree.jpg" src="https://cdn.tgdd.vn/Products/Images/2002/217447/Slider/vi-vn-windfree.jpg" style=" height: auto !important; width: 660px; max-width: 100%" /></a></p><br /></p>', CAST(N'2021-05-13T00:00:00' AS SmallDateTime), N'4', N'16', CAST(1111 AS Numeric(18, 0)), N'vi-vn-windfree.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (1, N'Nguyễn Nhật Tiến', N'1234456789', N'0335167610', N'Gò Vấp', N'nnt2107@gmail.com', N'admin', N'7363a0d0604902af7b70b271a0b96480', N'Screenshot_2021-05-20-21-07-40-20.png')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'1', N'PC', N'pc.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'2', N'Laptop', N'laptop.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'3', N'TV', N'tv.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'4', N'Air Conditioner', N'ml.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'5', N'Monitor', N'monitor.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'6', N'Mouse', N'mouse.png')
INSERT [dbo].[TypeProduct] ([typeID], [typeName], [images]) VALUES (N'7', N'Keyboard', N'keyboard.png')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customer]    Script Date: 07/06/2021 10:45:46 AM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [IX_Customer] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customer_1]    Script Date: 07/06/2021 10:45:46 AM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [IX_Customer_1] UNIQUE NONCLUSTERED 
(
	[TaxCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_Nation] FOREIGN KEY([nationID])
REFERENCES [dbo].[Nation] ([nationID])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_Nation]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([manufacturerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeProduct] ([typeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
