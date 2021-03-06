
USE [TPBakery]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[NGAYNHAP] [datetime] NULL,
	[XOA] [bit] NULL,
	[MALOAISP] [int] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (1, CAST(0x0000A76800000000 AS DateTime), 0, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (2, CAST(0x0000A76900000000 AS DateTime), 0, 5)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (3, CAST(0x0000A77E00000000 AS DateTime), 0, 16)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (4, CAST(0x0000A77E00000000 AS DateTime), 0, 15)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (5, CAST(0x0000A77800000000 AS DateTime), 0, 1)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (6, CAST(0x0000A78300000000 AS DateTime), 0, 9)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (7, CAST(0x0000A77900000000 AS DateTime), 0, 12)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (8, CAST(0x0000A78600000000 AS DateTime), 0, 4)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (9, CAST(0x0000A78E00000000 AS DateTime), 0, 2)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (10, CAST(0x0000A78E00000000 AS DateTime), 0, 8)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
/****** Object:  Table [dbo].[LOAISP]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAISP] ON
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (1, N'Cupcake')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (2, N'Cookies')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (3, N'Tiramisu')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (4, N'Pudding')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (5, N'Gato')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (6, N'Donut')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (7, N'Macaron')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (8, N'Other')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (10, N'Pie')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (11, N'Cheese cakes')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (12, N'Mochi')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (13, N'Pancake')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (14, N'Muffin')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (15, N'Tart')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (16, N'Dorayaki')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (17, N'Crepe')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[SDT] [nvarchar](11) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (1, N'Đại Sở', N'332 đường Cách Mạng Tháng Tám, Q.Tân Bình Tp HCM', N'nguyenso9696@gmail.com', N'0933612255')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (2, N'Lý Cẩm Gấu', N'516 đường Phạm Thế Hiển Q8, TpHCM', N'ly.camnhi96@gmail.com', N'0933322219')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (3, N'Lê Ngọc Trum', N'29 đường Hồ Thị Kỷ Q5 QpHCM', N'trumdontcare@gmail.com', N'0122311889')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (4, N'Nguyễn Tuấn Tú Mèo', N'92 đường Tân Kỳ Quận Tân Phú TpHCM', N'connhanguoita@gmail.com', N'0188322568')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (5, N'Ngọc Hậu', N'177 đường Nguyễn Thị Minh Khai Q1 TpHCM', N'ngochau@gmail.com', N'0189625858')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (6, N'Tôn Nữ Trà My', N'652 đường Hậu Giang Q6 TpHCM', N'tramytonnu@gmail.com', N'0933366511')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (7, N'Tôn Thất Hủ Thanh', N'1003 đường Phạm Thế Hiển Q8 TpHCM', N'tonthatthanh@gmail.com', N'0937782286')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (8, N'Châu Văn Liêm', N'13 đường Lê Lai Quận 1 TpHCM', N'chauvliem@gmail.com', N'0123659958')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (9, N'Mộc Bảo', N'89 đường Nguyễn Hữu Thọ Q2 TpHCM', N'mocbao@gmail.com', N'0186828878')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [EMAIL], [SDT]) VALUES (10, N'Trần Sáng', N'223 đường Lê Hồng Phong Q10 TpHCM', N'transangchoi@gmail.com', N'0939970979')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[IDUSER] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [nvarchar](50) NULL,
	[PASSWORD] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAIKHOAN_1] PRIMARY KEY CLUSTERED 
(
	[IDUSER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (1, N'admin', N'123456')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (2, N'user', N'123456')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (4, N'Yorn', N'025874963')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (5, N'kingsl96', N'1687794093')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (7, N'satthuvuonmia', N'7946316497')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (8, N'lycamnhi', N'0933399517')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (16, N'tudiep', N'ngontinh')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (17, N'mandown', N'ruletheworld')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (20, N'sangchoi', N'19961997')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (23, N'anonymus', N'xxxaptx')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (25, N'khunglongxanh', N'hoinguqua')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (27, N'conmeokhung', N'gethigh')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (30, N'prime2017', N'lycamnhi')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](50) NOT NULL,
	[DONGIA] [float] NULL,
	[MOTA] [nvarchar](100) NULL,
	[LUOTXEM] [int] NULL,
	[MALOAI] [int] NULL,
	[HINHANH] [nvarchar](50) NULL,
	[HINHANH1] [nvarchar](50) NULL,
	[HINHANH2] [nvarchar](50) NULL,
	[XOA] [bit] NULL,
	[SOLUONGTON] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (1, N'Happy birthday mum cake', 30, N'Happy BirthDay Cake for Children', 5, 8, N'happy-cake.jpg', N'happy-cake-1.jpg', N'happy-cake-2.jpg', 0, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (2, N'Present cake', 30, N'Happy BirthDay Cake for Children', 6, 8, N'pres-cake.jpg', N'pres-cake-1.jpg', N'pres-cake-2.jpg', 0, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (4, N'Soft iced happy birthday cake', 35, N'Happy BirthDay Cake for Children', 10, 8, N'iced-cake.jpg', N'iced-cake.jpg', N'iced-cake.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (5, N'Happy birthday chocolate cake', 30, N'Happy BirthDay Cake for Children', 14, 8, N'choco-cake.jpg', N'choco-cake-1.jpg', N'choco-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (6, N'Floral lacework cake', 40, N'Happy BirthDay Cake for Children', 56, 8, N'flo-cake.jpg', N'flo-cake-1.jpg', N'flo-cake-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (7, N'Scroll cascade cake', 45, N'Delicious cake for everyone', 6, 8, N'scr-cake.jpg', N'scr-cake-1.jpg', N'scr-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (8, N'Sweet pea cascade', 38, N'Delicious cake for everyone', 4, 8, N'sw-cake.jpg', N'sw-cake-1.jpg', N'sw-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (9, N'White chocolate wuffle cake', 12, N'Delicious cake for everyone', 4, 8, N'white-cake.jpg', N'white-cake-1.jpg', N'white-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (10, N'Macaron orange', 5, N'Sweet and sour', 2, 7, N'Macaron-orange.jpg', N'Macaron-orange-1.jpg', N'Macaron-orange-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (11, N'Macaron Matcha', 7, N'Helthy and delicious', 11, 7, N'Macaron-matcha.jpg', N'Macaron-matcha-1.jpg', N'Macaron-matcha-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (13, N'Macaron Chocolate', 7, N'Delicious cake for everyone', 8, 7, N'Macaron-socola.jpg', N'Macaron-socola-1.jpg', N'Macaron-socola-2.jpg', 0, 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (14, N'Macaron Cute', 9, N'Cute and delicious', 7, 7, N'Macaron-cute.jpg', N'Macaron-cute-1.jpg', N'Macaron-cute-2.jpg', 0, 3)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (15, N'Macaron Full Color', 7, N'Cheesy and Sour', 5, 7, N'Macaron-full.jpg', N'Macaron-full-1.jpg', N'Macaron-full-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (16, N'Macaron Strawberry', 5, N'Sweet and sour', 2, 7, N'Macaron-berry.jpg', N'Macaron-berry-1.jpg', N'Macaron-berry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (17, N'Cupcake Anime', 9, N'Cute and delicious', 3, 1, N'Cupcake-anime.jpg', N'Cupcake-anime-1.jpg', N'Cupcake-Anime-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (18, N'Cupcake White', 8, N'Cheesy and Sweet', 2, 1, N'Cupcake-white.jpg', N'Cupcake-white-1.jpg', N'Cupcake-white-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (19, N'Cupcake Oreo', 10, N'Cheesy and Bitter', 5, 1, N'Cupcake-oreo.jpg', N'Cupcake-oreo-1.jpg', N'Cupcake-oreo-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (20, N'Cupcake Banana', 8, N'Sweet and cheesy', 1, 1, N'Cupcake-banana.jpg', N'Cupcake-banana-1.jpg', N'Cupcake-banana-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (21, N'Cupcake Blue', 8, N'Cute and sweet', 2, 1, N'Cupcake-blue.jpg', N'Cupcake-blue-1.jpg', N'Cupcake-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (22, N'Cupcake Chocolate', 10, N'Cheesy and Bitter', 1, 1, N'Cupcake-choco.jpg', N'Cupcake-choco-1.jpg', N'Cupcake-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (23, N'Cookies Japan', 10, N'Cute and sour', 4, 2, N'Cookies-japan.jpg', N'Cookies-japan-1.jpg', N'Cookies-japan-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (24, N'Cookies Original', 9, N'Delicious cake for everyone', 2, 2, N'Cookies-original.jpg', N'Cookies-original-1.jpg', N'Cookies-original-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (25, N'Cookies Cute', 10, N'Bitter and sweet', 1, 2, N'Cookies-cute.jpg', N'Cookies-cute-1.jpg', N'Cookies-cute-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (27, N'Tart Egg', 10, N'Cheesy and Sweet', 5, 15, N'Tart-egg.jpg', N'Tart-egg-1.jpg', N'Tart-egg-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (28, N'Tart Cheese', 7, N'Cheesy and Sweet', 2, 15, N'Tart-cheese.jpg', N'Tart-cheese-1.jpg', N'Tart-cheese-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (29, N'Tart Flower', 7, N'Delicious cake for everyone', 1, 15, N'Tart-flower.jpg', N'Tart-flower-1.jpg', N'Tart-flower-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (30, N'Tart Fruit', 8, N'Sweet and sour', 5, 15, N'Tart-fruit.jpg', N'Tart-fruit-1.jpg', N'Tart-fruit-2.jpg', 0, 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (31, N'Tiramisu Original', 10, N'Bitter and sweet', 3, 3, N'Tiramisu-ori.jpg', N'Tiramisu-ori-1.jpg', N'Tiramisu-ori-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (32, N'Tiramisu Cup', 11, N'Bitter and sweet', 4, 3, N'Tiramisu-cup.jpg', N'Tiramisu-cup-1.jpg', N'Tiramisu-cup-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (33, N'Tiramisu Blueberry', 10, N'Sweet and sour', 6, 3, N'Tiramisu-berry.jpg', N'Tiramisu-berry-1.jpg', N'Tiramisu-berry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (34, N'Tiramisu Matcha', 13, N'Bitter and sweet', 1, 3, N'Tiramisu-matcha.jpg', N'Tiramisu-matcha-1.jpg', N'Tiramisu-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (35, N'Tiramisu Rasberry', 10, N'Delicious cake for everyone', 5, 3, N'Tiramisu-ras.jpg', N'Tiramisu-ras-1.jpg', N'Tiramisu-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (36, N'Pudding Rasberry', 15, N'Sweet and sour', 3, 4, N'Pudding-ras.jpg', N'Pudding-ras-1.jpg', N'Pudding-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (37, N'Pudding Matcha', 16, N'Bitter and sweet', 1, 4, N'Pudding-matcha.jpg', N'Pudding-matcha-1.jpg', N'Pudding-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (38, N'Pudding Mango', 15, N'Sour and sweet', 1, 4, N'Pudding-mango.jpg', N'Pudding-mango-1.jpg', N'Pudding-mango-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (39, N'Gato Chocolate', 25, N'Delicious cake for everyone', 1, 5, N'Gato-choco.jpg', N'Gato-choco-1.jpg', N'Gato-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (40, N'Gato Fruit', 24, N'Sour and Chessy', 1, 5, N'Gato-fruit.jpg', N'Gato-fruit-1.jpg', N'Gato-fruit-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (41, N'Donut Green', 8, N'Natural ', 1, 6, N'Donut-green.jpg', N'Donut-green-1.jpg', N'Donut-green-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (42, N'Donut Minion', 11, N'Cute and delicious', 1, 6, N'Donut-minion.jpg', N'Donut-minion-1.jpg', N'Donut-minion-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (43, N'Donut Chocolate', 9, N'Cheesy and Bitter', 1, 6, N'Donut-choco.jpg', N'Donut-choco-1.jpg', N'Donut-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (44, N'Donut Blue', 8, N'Nice cake for the party', 1, 6, N'Donut-blue.jpg', N'Donut-blue-1.jpg', N'Donut-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (45, N'Donut Cute', 11, N'Delicious cake for everyone', 1, 6, N'Donut-Cute.jpg', N'Donut-Cute-1.jpg', N'Donut-Cute-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (46, N'Donut White', 8, N'Cheesy and Bitter', 1, 6, N'Donut-white.jpg', N'Donut-white-1.jpg', N'Donut-white-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (47, N'Blueberry Pie', 10, N'Sweet and sour', 1, 10, N'Pie-blue.jpg', N'Pie-blue-1.jpg', N'Pie-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (48, N'Rasberry Pie', 10, N'Sweet and sour', 1, 10, N'Pie-ras.jpg', N'Pie-ras-1.jpg', N'Pie-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (49, N'Mochi Ice Cream', 5, N'Cold for the summer', 1, 12, N'Mochi-ice-cream.jpg', N'Mochi-ice-cream-1.jpg', N'Mochi-ice-cream-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (50, N'Water Mochi', 4, N'Soft, healthy, sweety', 1, 12, N'Mochi-water.jpg', N'Mochi-water-1.jpg', N'Mochi-water-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (54, N'Dorayaki Macha', 3, N'Cute, healthy and delicious ', 1, 16, N'Dorayaki-macha.jpg', N'Dorayaki-macha-1.jpg', N'Dorayaki-macha-2.jpg', 0, 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (55, N'Dorayaki Choco', 3, N'Yummy Dorayaki', 1, 16, N'Dorayaki-macha.jpg', N'Dorayaki-choco-1.jpg', N'Dorayaki-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (59, N'Passion Cheese Cake', 18, NULL, 1, 11, N'Cheese-cake.jpg', N'Cheese-cake-1.jpg', N'Cheese-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (61, N'Matcha Cheese Cake', 21, NULL, 1, 11, N'Chse-matcha.jpg', N'Chse-matcha-1.jpg', N'Chse-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (62, N'Oreo Cheese Cake', 22, NULL, 1, 11, N'Cheese-Oreo.jpg', N'Cheese-Oreo-1.jpg', N'Cheese-Oreo-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (63, N'Crepe Banana', 13, NULL, 1, 17, N'Crepe-banana.jpg', N'Crepe-banana-1.jpg', N'Crepe-banana-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (64, N'Crepe Ice Cream', 13, NULL, 1, 17, N'Crepe-ice-cream.jpg', N'Crepe-ice-cream-1.jpg', N'Crepe-ice-cream-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (65, N'Crepe Strawberry', 11, NULL, 1, 17, N'Crepe-strawberry.jpg', N'Crepe-strawberry-1.jpg', N'Crepe-strawberry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (66, N'Crepe Vegetable', 10, NULL, 1, 17, N'Crepe-vegetable.jpg', N'Crepe-vegetable-1.jpg', N'Crepe-vegetable-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (67, N'Muffin Apple', 6, NULL, 1, 14, N'Muffin-apple.jpg', N'Muffin-apple-1.jpg', N'Muffin-apple-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (68, N'Muffin Banana', 6, NULL, 1, 14, N'Muffin-banana.jpg', N'Muffin-banana-1.jpg', N'Muffin-banana-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (69, N'Muffin Chocolate', 7, NULL, 1, 14, N'Muffin-chocolate.jpg', N'Muffin-chocolate-1.jpg', N'Muffin-chocolate-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (70, N'Muffin Matcha', 7, NULL, 1, 14, N'Muffin-matcha.jpg', N'Muffin-matcha-1.jpg', N'Muffin-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (71, N'Muffin Vani', 7, NULL, 1, 14, N'Muffin-vani.jpg', N'Muffin-vani-1.jpg', N'Muffin-vani-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (72, N'Pancake Apple', 19, NULL, 1, 13, N'Pancake-apple.jpg', N'Pancake-apple-1.jpg', N'Pancake-apple-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (73, N'Pancake Banana', 19, NULL, 1, 13, N'Pancake-banana.jpg', N'Pancake-banana-1.jpg', N'Pancake-banana-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (74, N'Pancake Chocolate', 20, NULL, 1, 13, N'Pancake-chocolate.jpg', N'Pancake-chocolate-1.jpg', N'Pancake-chocolate-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (75, N'Pancake Strawberry', 19, NULL, 1, 13, N'Pancake-strawberry.jpg', N'Pancake-strawberry-1.jpg', N'Pancake-strawberry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (80, N'TLCake', 50000, N'nnnn', 1, 1, N'images/Cheese-oreo-1.jpg', N'images/Cheese-oreo.jpg', N'images/Cheese-oreo-2.jpg', 0, 100)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (81, N'TLCake', 50000, N'delicious', 1, 1, N'images/Cheese-cake-1.jpg', N'images/Cheese-cake-2.jpg', N'images/Cheese-cake.jpg', 0, 100)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MADONDH] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[MASP] [int] NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[HUY] [bit] NULL,
	[XOA] [bit] NULL,
	[GIAOHANG] [bit] NULL,
	[THANHTOAN] [bit] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MADONDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (5, 9, 27, CAST(0x0000A61A00000000 AS DateTime), CAST(0x0000A61900000000 AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (6, 3, 11, CAST(0x0000A65D00000000 AS DateTime), CAST(0x0000A65E00000000 AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (7, 10, 6, CAST(0x0000A78F00000000 AS DateTime), CAST(0x0000A65E00000000 AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (8, 2, 32, CAST(0x0000A78F00000000 AS DateTime), CAST(0x0000A79300000000 AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (9, 4, 61, CAST(0x0000A78F00000000 AS DateTime), CAST(0x0000A79600000000 AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (10, 8, 9, CAST(0x0000A78E00000000 AS DateTime), CAST(0x0000A78E00000000 AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (11, 1, 28, CAST(0x0000A74A00000000 AS DateTime), CAST(0x0000A74C00000000 AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (12, 6, 6, CAST(0x0000A71500000000 AS DateTime), CAST(0x0000A71600000000 AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (13, 5, 48, CAST(0x0000A6F500000000 AS DateTime), CAST(0x0000A6FA00000000 AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (14, 7, 50, CAST(0x0000A72500000000 AS DateTime), CAST(0x0000A72600000000 AS DateTime), 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
/****** Object:  Table [dbo].[CTPN]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[MACTPN] [int] IDENTITY(1,1) NOT NULL,
	[MAPN] [int] NULL,
	[DONGIANHAP] [float] NULL,
	[SOLUONGNHAP] [int] NULL,
	[MASP] [int] NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MACTPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CTPN] ON
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (2, 1, 3, 20, 11)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (3, 2, 2, 20, 24)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (4, 3, 1, 20, 54)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (5, 4, 2, 20, 30)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (6, 5, 3, 20, 17)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (7, 6, 10, 20, 4)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (8, 7, 1, 20, 49)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (9, 8, 4, 20, 38)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (10, 9, 2, 20, 25)
INSERT [dbo].[CTPN] ([MACTPN], [MAPN], [DONGIANHAP], [SOLUONGNHAP], [MASP]) VALUES (11, 10, 11, 20, 6)
SET IDENTITY_INSERT [dbo].[CTPN] OFF
/****** Object:  Table [dbo].[CTDDH]    Script Date: 06/12/2017 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[MACTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MADONDH] [int] NULL,
	[MASP] [int] NULL,
	[TENSP] [nvarchar](50) NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MACTDDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CTDDH] ON
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (3, 5, 27, N'Tart Egg', 10, 100)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (4, 6, 11, N'Macaron Matcha', 2, 14)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (5, 7, 6, N'Floral lacework cake', 1, 40)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (6, 8, 32, N'Tiramisu Cup', 15, 165)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (7, 9, 61, N'Passion Cheese Cake', 2, 36)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (8, 10, 9, N'White chocolate wuffle cake', 7, 84)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (9, 11, 28, N'Tart Cheese', 13, 91)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (10, 12, 6, N'Floral lacework cake', 1, 40)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (11, 13, 48, N'Rasberry Pie', 6, 60)
INSERT [dbo].[CTDDH] ([MACTDDH], [MADONDH], [MASP], [TENSP], [SOLUONG], [DONGIA]) VALUES (12, 14, 50, N'Water Mochi', 30, 120)
SET IDENTITY_INSERT [dbo].[CTDDH] OFF
/****** Object:  ForeignKey [FK_CTDDH_DONDATHANG]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DONDATHANG] FOREIGN KEY([MADONDH])
REFERENCES [dbo].[DONDATHANG] ([MADONDH])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DONDATHANG]
GO
/****** Object:  ForeignKey [FK_CTDDH_SANPHAM]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_SANPHAM]
GO
/****** Object:  ForeignKey [FK_CTPN_PHIEUNHAP]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_PHIEUNHAP]
GO
/****** Object:  ForeignKey [FK_CTPN_SANPHAM]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_SANPHAM]
GO
/****** Object:  ForeignKey [FK_DONDATHANG_KHACHHANG]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_DONDATHANG_SANPHAM]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_SANPHAM]
GO
/****** Object:  ForeignKey [FK_SANPHAM_LOAISP]    Script Date: 06/12/2017 15:25:48 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISP] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISP] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISP]
GO
