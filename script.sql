USE [master]
GO
/****** Object:  Database [TPBakery]    Script Date: 6/11/2017 1:26:23 AM ******/
CREATE DATABASE [TPBakery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPBakery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TPBakery.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TPBakery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TPBakery_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TPBakery] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPBakery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPBakery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPBakery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPBakery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPBakery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPBakery] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPBakery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPBakery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPBakery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPBakery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPBakery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPBakery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPBakery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPBakery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPBakery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPBakery] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TPBakery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPBakery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPBakery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPBakery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPBakery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPBakery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPBakery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPBakery] SET RECOVERY FULL 
GO
ALTER DATABASE [TPBakery] SET  MULTI_USER 
GO
ALTER DATABASE [TPBakery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPBakery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPBakery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPBakery] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TPBakery] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPBakery', N'ON'
GO
USE [TPBakery]
GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/11/2017 1:26:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[TENDANGNHAP] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[SDT] [nvarchar](11) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/11/2017 1:26:23 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (5, 9, 27, CAST(N'2016-06-03 00:00:00.000' AS DateTime), CAST(N'2016-06-02 00:00:00.000' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (6, 3, 11, CAST(N'2016-08-09 00:00:00.000' AS DateTime), CAST(N'2016-08-10 00:00:00.000' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (7, 10, 6, CAST(N'2017-06-11 00:00:00.000' AS DateTime), CAST(N'2017-06-15 00:00:00.000' AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (8, 2, 32, CAST(N'2017-06-11 00:00:00.000' AS DateTime), CAST(N'2017-06-15 00:00:00.000' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (9, 4, 61, CAST(N'2017-06-11 00:00:00.000' AS DateTime), CAST(N'2017-06-18 00:00:00.000' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (10, 8, 9, CAST(N'2017-06-10 00:00:00.000' AS DateTime), CAST(N'2017-06-10 00:00:00.000' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (11, 1, 28, CAST(N'2017-04-03 00:00:00.000' AS DateTime), CAST(N'2017-04-05 00:00:00.000' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (12, 6, 6, CAST(N'2017-02-09 00:00:00.000' AS DateTime), CAST(N'2017-02-10 00:00:00.000' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (13, 5, 48, CAST(N'2017-01-08 00:00:00.000' AS DateTime), CAST(N'2017-01-13 00:00:00.000' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[DONDATHANG] ([MADONDH], [MAKH], [MASP], [NGAYDAT], [NGAYGIAO], [HUY], [XOA], [GIAOHANG], [THANHTOAN]) VALUES (14, 7, 50, CAST(N'2017-02-25 00:00:00.000' AS DateTime), CAST(N'2017-02-26 00:00:00.000' AS DateTime), 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (1, N'Đại Sở', N'kingsl96', N'332 đường Cách Mạng Tháng Tám, Q.Tân Bình Tp HCM', N'nguyenso9696@gmail.com', N'0933612255')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (2, N'Lý Cẩm Gấu', N'Nhikute32113', N'516 đường Phạm Thế Hiển Q8, TpHCM', N'ly.camnhi96@gmail.com', N'0933322219')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (3, N'Lê Ngọc Trum', N'Trumphulvmax', N'29 đường Hồ Thị Kỷ Q5 QpHCM', N'trumdontcare@gmail.com', N'0122311889')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (4, N'Nguyễn Tuấn Tú Mèo', N'Connhangta', N'92 đường Tân Kỳ Quận Tân Phú TpHCM', N'connhanguoita@gmail.com', N'0188322568')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (5, N'Ngọc Hậu', N'haudohoi', N'177 đường Nguyễn Thị Minh Khai Q1 TpHCM', N'ngochau@gmail.com', N'0189625858')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (6, N'Tôn Nữ Trà My', N'Mybadao', N'652 đường Hậu Giang Q6 TpHCM', N'tramytonnu@gmail.com', N'0933366511')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (7, N'Tôn Thất Hủ Thanh', N'Thanhthanh1003', N'1003 đường Phạm Thế Hiển Q8 TpHCM', N'tonthatthanh@gmail.com', N'0937782286')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (8, N'Châu Văn Liêm', N'LiemVan', N'13 đường Lê Lai Quận 1 TpHCM', N'chauvliem@gmail.com', N'0123659958')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (9, N'Mộc Bảo', N'mocbao', N'89 đường Nguyễn Hữu Thọ Q2 TpHCM', N'mocbao@gmail.com', N'0186828878')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TENDANGNHAP], [DIACHI], [EMAIL], [SDT]) VALUES (10, N'Trần Sáng', N'sangchoi', N'223 đường Lê Hồng Phong Q10 TpHCM', N'transangchoi@gmail.com', N'0939970979')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAISP] ON 

INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (1, N'Cupcake')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (2, N'Cookies')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (3, N'Tiramisu')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (4, N'Pudding')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (5, N'Gato')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (6, N'Donut')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (7, N'Macaron')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (8, N'Wedding cakes')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (9, N'Birthday cakes')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (10, N'Pie')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (11, N'Cheese cakes')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (12, N'Mochi')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (13, N'Pancake')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (14, N'Muffin')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (15, N'Tart')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (16, N'Dorayaki')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (17, N'Crepe')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (1, CAST(N'2017-06-09 00:00:00.000' AS DateTime), 0, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (2, CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0, 5)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (3, CAST(N'2017-06-01 00:00:00.000' AS DateTime), 0, 16)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (4, CAST(N'2017-06-10 00:00:00.000' AS DateTime), 1, 15)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (5, CAST(N'2017-06-10 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (6, CAST(N'2017-05-30 00:00:00.000' AS DateTime), 0, 9)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (7, CAST(N'2017-05-20 00:00:00.000' AS DateTime), 0, 12)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (8, CAST(N'2017-06-02 00:00:00.000' AS DateTime), 0, 4)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (9, CAST(N'2017-06-10 00:00:00.000' AS DateTime), 0, 2)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAP], [XOA], [MALOAISP]) VALUES (10, CAST(N'2017-06-10 00:00:00.000' AS DateTime), 0, 8)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (1, N'Happy birthday mum cake', 30, NULL, 3, 9, N'\images\LoaiSanPham\Birthday-cake\Happy-cake.jpg', N'\images\LoaiSanPham\Birthday-cake\Happy-cake-1.jpg', N'\images\LoaiSanPham\Birthday-cake\Happy-cake-2.jpg', 0, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (2, N'Present cake', 30, NULL, 3, 9, N'\images\LoaiSanPham\Birthday-cake\pre-cake.jpg', N'\images\LoaiSanPham\Birthday-cake\pre-cake-1.jpg', N'\images\LoaiSanPham\Birthday-cake\pre-cake-2.jpg', 0, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (4, N'Soft iced happy birthday cake', 35, NULL, 3, 9, N'\images\LoaiSanPham\Birthday-cake\iced-happy.jpg', N'\images\LoaiSanPham\Birthday-cake\iced-happy-1.jpg', N'\images\LoaiSanPham\Birthday-cake\iced-happy-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (5, N'Happy birthday chocolate cake', 30, NULL, 3, 9, N'\images\LoaiSanPham\Birthday-cake\choco-cake.jpg', N'\images\LoaiSanPham\Birthday-cake\choco-cake-1.jpg', N'\images\LoaiSanPham\Birthday-cake\choco-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (6, N'Floral lacework cake', 40, NULL, 3, 8, N'\images\LoaiSanPham\Weeding-cake\flo-cake.jpg', N'\images\LoaiSanPham\Weeding-cake\flo-cake-1.jpg', N'\images\LoaiSanPham\Weeding-cake\flo-cake-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (7, N'Scroll cascade cake', 45, NULL, 3, 8, N'\images\LoaiSanPham\Weeding-cake\scr-cake.jpg', N'\images\LoaiSanPham\Weeding-cake\scr-cake-1.jpg', N'\images\LoaiSanPham\Weeding-cake\scr-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (8, N'Sweet pea cascade', 38, NULL, 3, 8, N'\images\LoaiSanPham\Weeding-cake\sw-cake.jpg', N'\images\LoaiSanPham\Weeding-cake\sw-cake-1.jpg', N'\images\LoaiSanPham\Weeding-cake\sw-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (9, N'White chocolate wuffle cake', 12, NULL, 3, 8, N'\images\LoaiSanPham\Weeding-cake\white-cake.jpg', N'\images\LoaiSanPham\Weeding-cake\white-cake-1.jpg', N'\images\LoaiSanPham\Weeding-cake\white-cake-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (10, N'Macaron orange', 5, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-orange.jpg', N'\images\LoaiSanPham\Macaron\Macaron-orange-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-orange-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (11, N'Macaron Matcha', 7, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-matcha.jpg', N'\images\LoaiSanPham\Macaron\Macaron-matcha-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-matcha-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (13, N'Macaron Chocolate', 7, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-socola.jpg', N'\images\LoaiSanPham\Macaron\Macaron-socola-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-socola-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (14, N'Macaron Cute', 9, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-cute.jpg', N'\images\LoaiSanPham\Macaron\Macaron-cute-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-cute-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (15, N'Macaron Full Color', 7, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-full.jpg', N'\images\LoaiSanPham\Macaron\Macaron-full-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-full-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (16, N'Macaron Strawberry', 5, NULL, 3, 7, N'\images\LoaiSanPham\Macaron\Macaron-berry.jpg', N'\images\LoaiSanPham\Macaron\Macaron-berry-1.jpg', N'\images\LoaiSanPham\Macaron\Macaron-berry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (17, N'Cupcake Anime', 9, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-anime.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-anime-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-Anime-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (18, N'Cupcake White', 8, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-white.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-white-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-white-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (19, N'Cupcake Oreo', 10, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-oreo.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-oreo-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-oreo-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (20, N'Cupcake Banana', 8, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-banana.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-banana-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-banana-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (21, N'Cupcake Blue', 8, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-blue.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-blue-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (22, N'Cupcake Chocolate', 10, NULL, 3, 1, N'\images\LoaiSanPham\Cupcake\Cupcake-choco.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-choco-1.jpg', N'\images\LoaiSanPham\Cupcake\Cupcake-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (23, N'Cookies Japan', 10, NULL, 3, 2, N'Cookies-cute.jpg', N'Cookies-cute.jpg', N'Cookies-cute.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (24, N'Cookies Original', 9, NULL, 3, 2, N'images\LoaiSanPham\Cookies\Cookies-original.jpg', N'images\LoaiSanPham\Cookies\Cookies-original.jpg', N'images\LoaiSanPham\Cookies\Cookies-original.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (25, N'Cookies Cute', 10, NULL, 3, 2, N'\images\LoaiSanPham\Cookies\Cookies-cute.jpg', N'\images\LoaiSanPham\Cookies\Cookies-cute-1.jpg', N'\images\LoaiSanPham\Cookies\Cookies-cute-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (27, N'Tart Egg', 10, NULL, 3, 15, N'\images\LoaiSanPham\Tart\Tart-egg.jpg', N'\images\LoaiSanPham\Tart\Tart-egg-1.jpg', N'\images\LoaiSanPham\Tart\Tart-egg-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (28, N'Tart Cheese', 7, NULL, 3, 15, N'\images\LoaiSanPham\Tart\Tart-cheese.jpg', N'\images\LoaiSanPham\Tart\Tart-cheese-1.jpg', N'\images\LoaiSanPham\Tart\Tart-cheese-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (29, N'Tart Flower', 7, NULL, 3, 15, N'\images\LoaiSanPham\Tart\Tart-flower.jpg', N'\images\LoaiSanPham\Tart\Tart-flower-1.jpg', N'\images\LoaiSanPham\Tart\Tart-flower-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (30, N'Tart Fruit', 8, NULL, 3, 15, N'\images\LoaiSanPham\Tart\Tart-fruit.jpg', N'\images\LoaiSanPham\Tart\Tart-fruit-1.jpg', N'\images\LoaiSanPham\Tart\Tart-fruit-2.jpg', 0, 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (31, N'Tiramisu Original', 10, NULL, 3, 3, N'\images\LoaiSanPham\Tiramisu\Tiramisu-ori.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-ori-1.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-ori-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (32, N'Tiramisu Cup', 11, NULL, 3, 3, N'\images\LoaiSanPham\Tiramisu\Tiramisu-cup.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-cup-1.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-cup-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (33, N'Tiramisu Blueberry', 10, NULL, 3, 3, N'\images\LoaiSanPham\Tiramisu\Tiramisu-berry.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-berry-1.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-berry-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (34, N'Tiramisu Matcha', 13, NULL, 3, 3, N'\images\LoaiSanPham\Tiramisu\Tiramisu-matcha.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-matcha-1.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (35, N'Tiramisu Rasberry', 10, NULL, 3, 3, N'\images\LoaiSanPham\Tiramisu\Tiramisu-ras.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-ras-1.jpg', N'\images\LoaiSanPham\Tiramisu\Tiramisu-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (36, N'Pudding Rasberry', 15, NULL, 3, 4, N'\images\LoaiSanPham\Pudding\Pudding-ras.jpg', N'\images\LoaiSanPham\Pudding\Pudding-ras-1.jpg', N'\images\LoaiSanPham\Pudding\Pudding-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (37, N'Pudding Matcha', 16, NULL, 3, 4, N'\images\LoaiSanPham\Pudding\Pudding-matcha.jpg', N'\images\LoaiSanPham\Pudding\Pudding-matcha-1.jpg', N'\images\LoaiSanPham\Pudding\Pudding-matcha-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (38, N'Pudding Mango', 15, NULL, 3, 4, N'\images\LoaiSanPham\Pudding\Pudding-mango.jpg', N'\images\LoaiSanPham\Pudding\Pudding-mango-1.jpg', N'\images\LoaiSanPham\Pudding\Pudding-mango-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (39, N'Gato Chocolate', 25, NULL, 3, 5, N'\images\LoaiSanPham\Gato\Gato-choco.jpg', N'\images\LoaiSanPham\Gato\Gato-choco-1.jpg', N'\images\LoaiSanPham\Gato\Gato-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (40, N'Gato Fruit', 24, NULL, 3, 5, N'\images\LoaiSanPham\Gato\Gato-fruit.jpg', N'\images\LoaiSanPham\Gato\Gato-fruit-1.jpg', N'\images\LoaiSanPham\Gato\Gato-fruit-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (41, N'Donut Green', 8, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-green.jpg', N'\images\LoaiSanPham\Donut\Donut-green-1.jpg', N'\images\LoaiSanPham\Donut\Donut-green-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (42, N'Donut Minion', 11, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-minion.jpg', N'\images\LoaiSanPham\Donut\Donut-minion-1.jpg', N'\images\LoaiSanPham\Donut\Donut-minion-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (43, N'Donut Chocolate', 9, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-choco.jpg', N'\images\LoaiSanPham\Donut\Donut-choco-1.jpg', N'\images\LoaiSanPham\Donut\Donut-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (44, N'Donut Blue', 8, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-blue.jpg', N'\images\LoaiSanPham\Donut\Donut-blue-1.jpg', N'\images\LoaiSanPham\Donut\Donut-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (45, N'Donut Cute', 11, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-Cute.jpg', N'\images\LoaiSanPham\Donut\Donut-Cute-1.jpg', N'\images\LoaiSanPham\Donut\Donut-Cute-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (46, N'Donut White', 8, NULL, 3, 6, N'\images\LoaiSanPham\Donut\Donut-white.jpg', N'\images\LoaiSanPham\Donut\Donut-white-1.jpg', N'\images\LoaiSanPham\Donut\Donut-white-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (47, N'Blueberry Pie', 10, NULL, 3, 10, N'\images\LoaiSanPham\Pie\Pie-blue.jpg', N'\images\LoaiSanPham\Pie\Pie-blue-1.jpg', N'\images\LoaiSanPham\Pie\Pie-blue-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (48, N'Rasberry Pie', 10, NULL, 3, 10, N'\images\LoaiSanPham\Pie\Pie-ras.jpg', N'\images\LoaiSanPham\Pie\Pie-ras1.jpg', N'\images\LoaiSanPham\Pie\Pie-ras-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (49, N'Mochi Ice Cream', 5, NULL, 3, 12, N'\images\LoaiSanPham\Mochi\Mochi-ice-cream.jpg', N'\images\LoaiSanPham\Mochi\Mochi-ice-cream1.jpg', N'\images\LoaiSanPham\Mochi\Mochi-ice-cream-2.jpg', 0, 20)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (50, N'Water Mochi', 4, NULL, 3, 12, N'\images\LoaiSanPham\Mochi\Mochi-water.jpg', N'\images\LoaiSanPham\Mochi\Mochi-water-1.jpg', N'\images\LoaiSanPham\Mochi\Mochi-water-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (54, N'Dorayaki Macha', 3, NULL, 3, 16, N'\images\LoaiSanPham\Dorayaki\Dorayaki-macha.jpg', N'\images\LoaiSanPham\Dorayaki\Dorayaki-macha-1.jpg', N'\images\LoaiSanPham\Dorayaki\Dorayaki-macha-2.jpg', 0, 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (55, N'Dorayaki Choco', 3, NULL, 3, 16, N'\images\LoaiSanPham\Dorayaki\Dorayaki-choco.jpg', N'\images\LoaiSanPham\Dorayaki\Dorayaki-choco-1.jpg', N'\images\LoaiSanPham\Dorayaki\Dorayaki-choco-2.jpg', 0, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (61, N'Passion Cheese Cake', 18, NULL, 3, 11, N'\images\LoaiSanPham\Cheese-cakes\Cheese-cake.jpg', N'\images\LoaiSanPham\Cheese-cakes\Cheese-cake-1.jpg', N'\images\LoaiSanPham\Cheese-cakes\Cheese-cake-2.jpg', NULL, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (62, N'Matcha Cheese Cake', 21, NULL, 3, 11, N'\images\LoaiSanPham\Cheese-cakes\Chse-matcha.jpg', N'\images\LoaiSanPham\Cheese-cakes\Chse-matcha-1.jpg', N'\images\LoaiSanPham\Cheese-cakes\Chse-matcha-2.jpg', NULL, 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [MOTA], [LUOTXEM], [MALOAI], [HINHANH], [HINHANH1], [HINHANH2], [XOA], [SOLUONGTON]) VALUES (63, N'Oreo Cheese Cake', 22, NULL, 3, 11, N'\images\LoaiSanPham\Cheese-cakes\Cheese-oreo.jpg', N'\images\LoaiSanPham\Cheese-cakes\Cheese-oreo-1.jpg', N'\images\LoaiSanPham\Cheese-cakes\Cheese-oreo-2.jpg', NULL, 30)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (1, N'admin', N'123456')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (2, N'dtieubinh', N'159753')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (3, N'sonjk', N'357517')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (4, N'Yorn', N'025874963')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (5, N'kingsl96', N'1687794093')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (6, N'vash.eraser', N'0159368525')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (7, N'satthuvuonmia', N'7946316497')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (8, N'lycamnhi', N'0933399517')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (9, N'loinguyen', N'321654987')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (10, N'worldcup2014', N'7417')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (11, N'phucnho', N'852000phuc')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (12, N'lanvadiep', N'14256969')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (13, N'mylovekute', N'00kutephomaique')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (14, N'NotResponse', N'hihiNotRes')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (15, N'hihihaha97', N'1460691')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (16, N'tudiep', N'ngontinh')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (17, N'mandown', N'ruletheworld')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (18, N'ltudql2', N'10101010')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (19, N'graduation', N'alltocpheo')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (20, N'kimhyungjoon', N'19961997')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (21, N'laptrinhweb', N'984657648')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (22, N'pandahoho', N'gaumatden')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (23, N'anonymus', N'xxxaptx')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (24, N'shinichikudo', N'aptx4869')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (25, N'khunglongxanh', N'hoinguqua')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (26, N'hackerxuyenquocgia', N'doanmatkhautuixem')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (27, N'conmeokhung', N'gethigh')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (28, N'gaukute', N'987412365')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (29, N'pumpitup', N'lycuunai1st')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (30, N'prime2017', N'lycamnhi')
INSERT [dbo].[TAIKHOAN] ([IDUSER], [USERNAME], [PASSWORD]) VALUES (31, N'mrbanana', N'777999')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DONDATHANG] FOREIGN KEY([MADONDH])
REFERENCES [dbo].[DONDATHANG] ([MADONDH])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DONDATHANG]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_SANPHAM]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_SANPHAM]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_LOAISP] FOREIGN KEY([MALOAISP])
REFERENCES [dbo].[LOAISP] ([MALOAI])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_LOAISP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISP] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISP] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISP]
GO
USE [master]
GO
ALTER DATABASE [TPBakery] SET  READ_WRITE 
GO
