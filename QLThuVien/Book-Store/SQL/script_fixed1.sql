USE [master]
GO
/****** Object:  Database [QLThuVien_LTweb]    Script Date: 03/04/2023 18:53:18 ******/
CREATE DATABASE [QLThuVien_LTweb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLThuVien_LTweb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLThuVien_LTweb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLThuVien_LTweb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLThuVien_LTweb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLThuVien_LTweb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLThuVien_LTweb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLThuVien_LTweb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLThuVien_LTweb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLThuVien_LTweb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLThuVien_LTweb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLThuVien_LTweb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLThuVien_LTweb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLThuVien_LTweb] SET  MULTI_USER 
GO
ALTER DATABASE [QLThuVien_LTweb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLThuVien_LTweb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLThuVien_LTweb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLThuVien_LTweb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLThuVien_LTweb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLThuVien_LTweb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLThuVien_LTweb] SET QUERY_STORE = OFF
GO
USE [QLThuVien_LTweb]
GO
/****** Object:  Table [dbo].[AnhDDSach]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhDDSach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenFileAnh] [nvarchar](100) NULL,
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_AnhDDSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHSM]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHSM](
	[SoLuong] [int] NULL,
	[TinhTrangSachKhiMuon] [nvarchar](50) NULL,
	[MaHoSoMuon] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChiTietH__0D74BD762E68BD18] PRIMARY KEY CLUSTERED 
(
	[MaHoSoMuon] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHST]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHST](
	[ViPham] [nvarchar](50) NULL,
	[ThanhTien] [money] NULL,
	[MaHoSotra] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChiTietH__7712BBD6297BB6DC] PRIMARY KEY CLUSTERED 
(
	[MaHoSotra] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoTra]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoTra](
	[MaHoSotra] [nvarchar](50) NOT NULL,
	[NgayTra] [date] NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSotra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgonNgu](
	[MaNgonNgu] [nvarchar](50) NOT NULL,
	[TenNgonNgu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNgonNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDoc]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDoc](
	[MaNguoiDoc] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDoc] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Que] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[CaLam] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK__NhanVien__77B2CA47138E8BAF] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXB]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXB](
	[MaNXB] [nvarchar](50) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaHoSoMuon] [nvarchar](50) NOT NULL,
	[NgayMuon] [date] NULL,
	[ThơiGianCho] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaHoSotra] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaNguoiDoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhieuMuo__C657EA34E1453DE9] PRIMARY KEY CLUSTERED 
(
	[MaHoSoMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[TacGia] [nvarchar](50) NULL,
	[NamXB] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[TinhTrangSach] [nvarchar](50) NULL,
	[MaNXB] [nvarchar](50) NULL,
	[MaTheLoai] [nvarchar](50) NULL,
	[MaNgonNgu] [nvarchar](50) NULL,
 CONSTRAINT [PK__Sach__B235742DA0BF0890] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [nvarchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[LoaiUser] [nvarchar](50) NULL,
	[EmailDK] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTriSach]    Script Date: 03/04/2023 18:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTriSach](
	[MaSach] [nvarchar](50) NOT NULL,
	[Hang] [nvarchar](50) NULL,
	[Ke] [nchar](10) NULL,
 CONSTRAINT [PK__Ke__8582FBBE67250FFE] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS01', N'bi-quyet-ve-but-chi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS02', N'hoc-choi-co-tuong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS03', N'my-thuat-ve-chan-dung.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS04', N'day-tre-tap-boi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS05', N'nhung-tuyet-pham-danh-cho-dan-piano.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS06', N'thu-phap-viet-ly-thuyet-va-thuc-hanh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS07', N'101-tro-choi-dan-gian-danh-cho-tre-em-mam-non.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS08', N'lich-su-nghe-thuat-phuong-tay.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS09', N'vo-thuat-aikido.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS10', N'tu-hoc-choi-co-vua-nuoc-di-dau-tien-cua-nha-vo-dich.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS100', N'dat-nuoc-viet-nam-qua-cac-doi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS101', N'phong-trao-duy-tan.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS102', N'binh-thu-yeu-luoc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS103', N'vua-tre-trong-lich-su-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS104', N'tuong-navarre-voi-tran-dien-bien-phu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS105', N'nhung-cuoc-chinh-phat-cua-alexander-dai-de.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS106', N'bai-hoc-cua-lich-su.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS107', N'tam-tinh-dat-nuoc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS108', N'cac-nen-van-hoa-co-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS109', N'lich-su-van-minh-trung-hoa.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS11', N'taekwon-do-ky-thuat-can-ban.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS110', N'lich-su-van-minh-an-do.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS111', N'nhung-bi-mat-ve-chien-tranh-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS112', N'vua-gia-long-va-nguoi-phap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS113', N'10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS114', N'10-huyen-thoai-hy-lap-hay-nhat-moi-thoi-dai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS115', N'than-thoai-hy-lap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS116', N'truyen-co-andersen.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS117', N'kho-tang-truyen-co-tich-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS118', N'truyen-co-grim.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS119', N'12-chien-cong-cua-hercule.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS12', N'messi-tu-el-pulga-den-mot-huyen-thoai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS120', N'365-chuyen-ke-hang-dem-mua-thu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS121', N'108-truyen-ngu-ngon-hay-nhat.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS122', N'than-thoai-bac-au.jpeg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS123', N'than-thoai-ai-cap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS124', N'the-emyth-de-xay-dung-doanh-nghiep-hieu-qua.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS125', N'tu-to-lua-den-silicon.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS126', N'xay-dung-de-truong-ton.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS127', N'chi-can-mau-khan-giay.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS128', N'danh-bai-pho-wall.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS129', N'nghi-lon-de-thanh-cong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS13', N'ronaldo-am-anh-ve-su-hoan-hao.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS130', N'chieu-bai-quan-ly-vang-cua-bill-gates.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS131', N'tien-khong-mua-duoc-gi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS132', N'giai-phap-keynes.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS133', N'diem-mu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS134', N'cuoc-chien-disney.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS135', N'Thành-Cát-Tư-Hãn-Và-Sự-Hình-Thành-Thế-Giới-Hiện-Đại.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS136', N'nhat-ky-cua-nancy.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS137', N'con-trai-ke-khung-bo.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS138', N'dang-sau-nhung-nu-cuoi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS139', N'nhung-nguoi-cung-thoi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS14', N'barca-duong-den-vinh-quang.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS140', N'vo-nguyen-giap-chien-thang-bang-moi-gia.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS141', N'nhung-ngay-tho-au.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS142', N'cai-chet-cua-hitler.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS143', N'vo-thuong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS144', N'putin-su-troi-day-cua-mot-con-nguoi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS145', N'cuoc-chien-dong-duong-cua-toi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS146', N'tu-chien-truong-khoc-liet.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS147', N'tan-bien-hoi-ky-ve-tham-hoa-everest.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS148', N'cao-diem-cuoi-cung.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS149', N'cat-bui-chan-ai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS15', N'ky-thuat-choi-billiards.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS150', N'mot-chuyen-chep-o-benh-vien.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS151', N'mot-lit-nuoc-mat.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS152', N'seal-team-six-hoi-ky-cua-mot-tay-sung-ban-tia.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS153', N'mua-thu-duc-1989.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS154', N'totto-chan-ben-cua-so.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS16', N'tu-truyen-huan-luyen-vien-jose-mourinho.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS17', N'horrible-science-vi-sinh-vat-vi-tinh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS18', N'horrible-science-vat-ly-cau-chuyen-cua-nhung-luc-bi-hiem.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS19', N'horrible-histories-nguoi-hy-lap-huyen-thoai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS20', N'homo-deus-luoc-su-tuong-lai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS21', N'mat-thu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS22', N'nhin-len-nhung-chom-sao.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS23', N'dai-su-tu-vu-no-lon-den-hien-tai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS24', N'hay-tra-loi-em-tai-sao-tap-1.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS25', N'hay-tra-loi-em-tai-sao-tap-2.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS26', N'hay-tra-loi-em-tai-sao-tap-3.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS27', N'5-phuong-trinh-lam-thay-doi-the-gioi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS28', N'tu-hieu-ung-con-buom-den-ly-thuyet-hon-don.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS29', N'dinh-ly-cuoi-cung-cua-fermat.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS30', N'the-gioi-luong-tu-ky-bi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS31', N'toan-hoc-sieu-hay.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS32', N'lieu-it-da-het-thoi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS33', N'chua-troi-co-phai-la-nha-toan-hoc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS34', N'nu-bac-hoc-marie-curie.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS35', N'thuyet-tuong-doi-hep-va-rong-cua-albert-einstein.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS36', N'460-bai-toan-vui-luyen-tri-thong-minh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS37', N'tuoi-tho-du-doi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS38', N'dut-tinh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS39', N'van-bai-lat-ngua.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS40', N'quan-khu-nam-dong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS41', N'cuoc-doi-ngoai-cua.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS42', N'tuyen-tap-truyen-ngan-vu-trong-phung.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS43', N'con-hoang.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS44', N'nhung-manh-doi-den-trang.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS45', N'an-may-di-vang.jpg', N'NULL')
GO
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS46', N'dem-hoi-long-tri.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS47', N'cam-bay-nguoi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS48', N'lam-di.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS49', N'bi-vo.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS50', N'leu-chong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS51', N'huong-sac-trong-vuon-van.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS52', N'khach-no.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS53', N'trung-so-doc-dac.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS54', N'dao-hoang.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS55', N'dat-rung-phuong-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS56', N'buoc-duong-cung.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS57', N'hanh-trinh-toi-cac-coi-ben-kia-cai-chet.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS58', N'vo-nga-vo-uu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS59', N'truyen-ke-dem-giang-sinh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS60', N'duc-phat-va-phat-phap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS61', N'an-va-uong-cua-nguoi-viet.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS62', N'van-hoa-loi-song-cua-nguoi-theo-hoi-giao.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS63', N'nhan-qua.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS64', N'suy-ngam-ve-thien-va-ac.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS65', N'dong-dao-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS66', N'cam-ca-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS67', N'nghi-le-tho-cung-co-truyen-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS68', N'dan-ong-dan-ba-va-chuyen.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS69', N'mat-ma-do-thai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS70', N'khong-tu.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS71', N'viet-nam-van-hoa-su-cuong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS72', N'viet-nam-van-hoa-va-du-lich.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS73', N'tranh-dan-gian-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS74', N'trang-phuc-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS75', N'kham-pha-the-gioi-tam-linh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS76', N'loi-ngo-tu-coi-tam-linh.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS77', N'cac-kieu-kien-truc-tren-the-gioi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS78', N'kien-truc-co-viet-nam-tu-cai-nhin-khao-co-hoc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS79', N'how-to-draw.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS80', N'thiet-ke-cau-treo-day-vong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS81', N'mot-so-xu-huong-kien-truc-duong-dai-nuoc-ngoai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS82', N'nghe-thuat-kien-truc-theo-van-hoa-co-trung-hoa.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS83', N'luat-phap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS84', N'luat-doanh-nghiep.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS85', N'luat-thuong-mai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS86', N'luat-dat-dai.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS87', N'bo-luat-lao-dong.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS88', N'luat-can-bo-cong-chuc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS89', N'bo-luat-dan-su.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS90', N'bo-luat-hinh-su.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS91', N'luat-an-ninh-mang-2018.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS92', N'dieu-le-dang-cong-san-viet-nam.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS93', N'lich-su-giao-thuong-thuong-mai-dinh-hinh-the-gioi-nhu-the-nao.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS94', N'than-nguoi-va-dat-viet-2.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS95', N'tai-sao-mac-dung.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS96', N'ho-chi-minh-toan-tap.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS97', N'trat-tu-the-gioi.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS98', N'lich-su-y-hoc.jpg', N'NULL')
INSERT [dbo].[AnhDDSach] ([MaSach], [TenFileAnh], [ViTri]) VALUES (N'MS99', N'33-chien-luoc-cua-chien-tranh.jpg', N'NULL')
GO
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'ta', N'Anh')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'td', N'Đức')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'th', N'Hàn')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'thl', N'Hà Lan')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'tng', N'Nga')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'tnh', N'Nhật')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'tp', N'Pháp')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'tq', N'Trung')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'tv', N'Việt Nam')
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'ty', N'Ý')
GO
INSERT [dbo].[NguoiDoc] ([MaNguoiDoc], [HoTen], [GioiTinh], [DiaChi], [SDT], [Username]) VALUES (N'a', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NguoiDoc] ([MaNguoiDoc], [HoTen], [GioiTinh], [DiaChi], [SDT], [Username]) VALUES (N'b', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200035', N'Khuất Quang Cảnh', N'Cầu Giấy, Hà Nội', N'Nam', N'Hà Nội', NULL, N'Ca2', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200113', N'Nguyễn Thị Kim Hằng', N'Ba Đình, Hà Nội', N'Nữ', N'Nam Định', NULL, N'Ca1', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200332', N'Vương Tiến Thành', N'Từ Liêm, Hà Nội', N'Nam', N'Hà Nội', NULL, N'Ca4', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200354', N'Hà Văn Thời', N'Thanh Xuân, Hà Nội', N'Nam', N'Hà Nam', NULL, N'Ca3', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200364', N'Trần Xuân Tiến', N'Đống Đa, Hà Nội', N'Nam', N'Nam Định', NULL, N'Ca1', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200370', N'Lê Thu Trang', N'Hà Đông, Hà Nội', N'Nữ', N'Hà Nội', NULL, N'Ca2', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200abc', N'Trần Bảo Linh', N'Hoàng Mai, Hà Nội', N'Nữ', N'Ninh Bình', NULL, N'Ca4', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [Que], [SDT], [CaLam], [Username]) VALUES (N'201200xyz', N'Nguyễn Trung Quân', N'Hoàn Kiếm, Hà Nội', N'Nam', N'Thái Bình', NULL, N'Ca3', NULL)
GO
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M01', N'Bách Khoa Hà Nội', N'Số 1 Đường Đại Cồ Việt, Hai Bà Trưng , Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M02', N'Chính trị Quốc gia Sự thật', N'Số 6/86 Duy Tân, Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M03', N'Công Thương', N'Số 655 Phạm Văn Đồng, quận Bắc Từ Liêm, Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M04', N'Công an nhân dân', N'Số 	
92 Nguyễn Du, quận Hai Bà Trưng, TP. Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M05', N'Dân trí', N'Số 9/26,Hoàng Cầu, quận Đống Đa,Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M06', N'Giao thông vận tải', N'Số 80B Trần Hưng Đạo,Hoàn Kiếm,Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M07', N'Giáo dục Việt Nam', N'	
Số 81 Trần Hưng Đạo,Hoàn KIếm,Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M08', N'Lý luận Chính trị', N'Số 56B Quốc Tử Giám, Đống Đa, Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M09', N'Phụ nữ', N'Số 39 Hàng Chuối, Hà Nội', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'M10', N'Quân đội nhân dân', N'Số 23 Lý Nam Đế, Hà Nội', NULL)
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS01', N'Bí quyết vẽ bút chì', N'Huỳnh Phạm Hương Trang', N'NULL', 100, N'Còn sách', N'M01', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS02', N'Học chơi cờ tướng', N'Hải Phong', N'NULL', 106, N'Còn sách', N'M02', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS03', N'Mỹ thuật vẽ chân dung', N'Gia Bảo', N'NULL', 178, N'Còn sách', N'M03', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS04', N'Dạy trẻ tập bơi', N'Alis Mark', N'NULL', 154, N'Còn sách', N'M04', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS05', N'Những tuyệt phẩm dành cho đàn Piano', N'Nguyễn Hải Ninh', N'NULL', 150, N'Còn sách', N'M05', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS06', N'Thư pháp Việt - Lý thuyết và thực hành', N'Đăng Học', N'NULL', 192, N'Còn sách', N'M06', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS07', N'101 trò chơi dân gian dành cho trẻ em mầm non', N'Lê Bạch Tuyết', N'NULL', 110, N'Còn sách', N'M07', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS08', N'Lịch sử nghệ thuật phương Tây', N'Michael Levey', N'NULL', 104, N'Còn sách', N'M08', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS09', N'Võ thuật Aikido', N'Oratti', N'NULL', 175, N'Còn sách', N'M09', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS10', N'Tự học cờ vua - Nước đi đầu tiên của nhà vô địch', N'Mai Luân', N'NULL', 151, N'Còn sách', N'M10', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS100', N'Đất nước Việt Nam qua các đời', N'Đào Duy Anh', N'NULL', 140, N'Còn sách', N'M01', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS101', N'Phong trào Duy Tân', N'Nguyễn Văn Xuân', N'NULL', 171, N'Còn sách', N'M03', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS102', N'Binh thư yếu lược', N'Trần Hưng Đạo', N'NULL', 150, N'Còn sách', N'M01', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS103', N'Vua trẻ trong lịch sử Việt Nam', N'Vũ Ngọc Khánh', N'NULL', 102, N'Còn sách', N'M07', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS104', N'Tướng Navarre với trận Điện Biên Phủ', N'Jean Pouget', N'NULL', 191, N'Còn sách', N'M06', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS105', N'Những cuộc chinh phạt của Alexander Đại đế', N'Arrian', N'NULL', 182, N'Còn sách', N'M10', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS106', N'Bài học của lịch sử', N'Will - Ariel Durant', N'NULL', 191, N'Còn sách', N'M01', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS107', N'Tâm tình đất nước', N'Nguyễn Khắc Viện', N'NULL', 173, N'Còn sách', N'M02', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS108', N'Các nền văn hóa cổ Việt Nam', N'Hoàng Xuân Chinh', N'NULL', 136, N'Còn sách', N'M10', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS109', N'Lịch sử văn minh Trung Hoa', N'Will Durant', N'NULL', 137, N'Còn sách', N'M07', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS11', N'Taekwon - do Kỹ thuật căn bản', N'Dương Quốc', N'NULL', 197, N'Còn sách', N'M06', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS110', N'Lịch sử văn minh Ấn Độ', N'Will Durant', N'NULL', 103, N'Còn sách', N'M01', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS111', N'Những bí mật về chiến tranh Việt Nam', N'Daniel Ellsberg', N'NULL', 170, N'Còn sách', N'M03', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS112', N'Vua Gia Long và người Pháp', N'Thụy Khuê', N'NULL', 158, N'Còn sách', N'M05', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS113', N'10 huyền thoại Viking hay nhất mọi thời đại', N'Michael Cox', N'NULL', 182, N'Còn sách', N'M02', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS114', N'10 huyền thoại Hy lạp hay nhất mọi thời đại', N'Terry Deary', N'2013', 1233, N'Còn sách', N'M05', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS115', N'Thần thoại Hy Lạp', N'Nguyễn Văn Khỏa', N'NULL', 123, N'Còn sách', N'M01', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS116', N'Truyện cổ Andersen', N'Hans Christian Andersen', N'NULL', 153, N'Còn sách', N'M03', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS117', N'Kho tàng truyện cổ tích Việt Nam', N'Nguyễn Đổng Chi', N'NULL', 152, N'Còn sách', N'M03', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS118', N'Truyện cổ Grim', N'Anh em nhà Grim', N'NULL', 171, N'Còn sách', N'M08', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS119', N'12 chiến công của Hercule', N'Thierry Lefèvre', N'NULL', 1713, N'Còn sách', N'M01', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS12', N'Messi - Từ "El Pulga" đến một huyền thoại', N'Luca Caioli', N'NULL', 111, N'Còn sách', N'M10', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS120', N'365 chuyện kể hằng đêm - Mùa thu', N'Lưu Hồng Hà', N'NULL', 140, N'Còn sách', N'M06', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS121', N'108 truyện ngụ ngôn hay nhất', N'Nhiều tác giả', N'NULL', 166, N'Còn sách', N'M06', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS122', N'Thần thoại Bắc Âu', N'Peter Andreas Munch', N'NULL', 197, N'Còn sách', N'M09', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS123', N'Thần thoại Ai Cập', N'Nguyễn Thị Hường', N'NULL', 138, N'Còn sách', N'M04', N'MTL08', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS124', N'Để xây dựng doanh nghiệp hiệu quả', N'Michael E. Gerber', N'NULL', 139, N'Còn sách', N'M02', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS125', N'Từ tơ lụa đến Silicon', N'Jeffrey E. Garten', N'NULL', 138, N'Còn sách', N'M08', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS126', N'Xây dựng để trường tồn', N'Jim Collins - Jerry I. Porras', N'NULL', 147, N'Còn sách', N'M06', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS127', N'Chỉ cần mẩu khăn giấy', N'Dan Roam', N'NULL', 144, N'Còn sách', N'M04', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS128', N'Đánh bại phố Wall', N'Peter Lynch', N'NULL', 148, N'Còn sách', N'M05', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS129', N'Nghĩ lớn để thành công', N'Donald J.Trump', N'NULL', 155, N'Còn sách', N'M07', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS13', N'Ronaldo - Ám ảnh về sự hoàn hảo', N'Luca Caioli', N'NULL', 183, N'Còn sách', N'M05', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS130', N'Chiêu bài quản lý vàng của Bill Gates', N'Thương Mỗ', N'NULL', 200, N'Còn sách', N'M01', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS131', N'Tiền không mua được gì?', N'Michael Sandel', N'NULL', 138, N'Còn sách', N'M03', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS132', N'Giải pháp Keynes', N'Paul Davidson', N'NULL', 169, N'Còn sách', N'M05', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS133', N'Điểm mù', N'Max H. Bazerman - Ann E.Tenbrunsel', N'NULL', 183, N'Còn sách', N'M03', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS134', N'Cuộc chiến Disney', N'James B. Stewart', N'NULL', 135, N'Còn sách', N'M07', N'MTL09', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS135', N'Thành Cát Tư Hãn và sự hình thành thế giới hiện đạ', N'Jack Weatherford', N'NULL', 149, N'Còn sách', N'M08', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS136', N'Nhật ký của Nancy', N'Beatrice Sparks', N'NULL', 193, N'Còn sách', N'M07', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS137', N'Con trai của kẻ khủng bố', N'Zak Ebrahim', N'NULL', 144, N'Còn sách', N'M04', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS138', N'Đằng sau những nụ cười', N'Khánh Ly', N'NULL', 127, N'Còn sách', N'M05', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS139', N'Những người cùng thời', N'Nhiều tác giả', N'NULL', 200, N'Còn sách', N'M03', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS14', N'Barca - Đường đến vinh quang', N'Graham Hunter', N'NULL', 178, N'Còn sách', N'M05', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS140', N'Võ Nguyên Giáp - Chiến thắng bằng mọi giá', N'Cecil B. Currey', N'NULL', 174, N'Còn sách', N'M06', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS141', N'Những ngày ấu thơ', N'Nguyên Hồng', N'NULL', 157, N'Còn sách', N'M03', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS142', N'Cái chết của Hitler', N'Georges Blond', N'NULL', 168, N'Còn sách', N'M06', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS143', N'Vô thường ', N'Nguyễn Bảo Trung', N'NULL', 116, N'Còn sách', N'M04', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS144', N'Putin - Sự trỗi dậy của một con người', N'Trương Dự', N'NULL', 199, N'Còn sách', N'M10', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS145', N'Cuộc chiến Đông Dương của tôi', N'Marcel Bigeard', N'NULL', 113, N'Còn sách', N'M08', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS146', N'Từ chiến trường khốc liệt', N'Peter Arnett', N'NULL', 115, N'Còn sách', N'M07', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS147', N'Tan biến: Hồi ký về thảm họa Everest', N'Jon Krakauer', N'NULL', 102, N'Còn sách', N'M08', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS148', N'Cao điểm cuối cùng', N'Hữu Mai', N'NULL', 178, N'Còn sách', N'M10', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS149', N'Cát bụi chân ai', N'Tô Hoài', N'NULL', 182, N'Còn sách', N'M06', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS15', N'Kỹ thuật chơi Billiards', N'Nguyễn Hiếu Nghĩa - Trần Thế San', N'NULL', 184, N'Còn sách', N'M03', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS150', N'Một chuyện chép ở bệnh viện', N'Anh Đức', N'NULL', 120, N'Còn sách', N'M06', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS151', N'Một lít nước mắt', N'Kito Aya', N'NULL', 164, N'Còn sách', N'M07', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS152', N'Seal Team Six - Hồi ký của một tay súng bắn tỉa', N'Howard E. Wasdin - StephenTemplin', N'NULL', 168, N'Còn sách', N'M04', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS153', N'Mùa thu Đức 1989', N'Egon Krenz', N'NULL', 170, N'Còn sách', N'M07', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS154', N'Totto-chan bên cửa sổ', N'Kuroyanagi Tetsuko', N'NULL', 127, N'Còn sách', N'M10', N'MTL10', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS16', N'Tự truyện huấn luyện viên Jose Mourinho', N'Luis Lourenco', N'NULL', 112, N'Còn sách', N'M02', N'MTL01', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS17', N'Horrible Science - Vi sinh vật vi tính', N'Nick Arnod - Tony De Saulles', N'NULL', 114, N'Còn sách', N'M02', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS18', N'Horrible Science - Vật lý, câu chuyện của những lự', N'Phil Gates - Tony De Saulles', N'NULL', 153, N'Còn sách', N'M01', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS19', N'Horrible Science  - Người Hy Lạp huyền thoại', N'Terry Deary', N'NULL', 118, N'Còn sách', N'M01', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS20', N'Homo Deus: Lược sử tương lai', N'Yuval Noah Harari ', N'NULL', 115, N'Còn sách', N'M10', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS21', N'Mật thư', N'Trần Thời', N'NULL', 198, N'Còn sách', N'M05', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS22', N'Nhìn lên những chòm sao', N'Trần Thời', N'NULL', 197, N'Còn sách', N'M10', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS23', N'Đại sử: Từ vụ nổ lớn đến hiện tại', N'Cynthia Stokes Brown', N'NULL', 177, N'Còn sách', N'M04', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS24', N'Hãy trả lời em tại sao? - Tập  1', N'Arkady Leokum', N'NULL', 105, N'Còn sách', N'M10', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS25', N'Hãy trả lời em tại sao? - Tập  2', N'Arkady Leokum', N'NULL', 110, N'Còn sách', N'M03', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS26', N'Hãy trả lời em tại sao? - Tập  3', N'Arkady Leokum', N'NULL', 179, N'Còn sách', N'M07', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS27', N'5 phương trình làm thay đổi thế giới', N'Michael Guillen. Ph.D', N'NULL', 175, N'Còn sách', N'M05', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS28', N'Từ hiệu ứng con bướm đến lý thuyết hỗn độn', N'James Gleick', N'NULL', 104, N'Còn sách', N'M09', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS29', N'Định lý cuối cùng của Fermat', N'Simon Singh', N'NULL', 155, N'Còn sách', N'M05', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS30', N'Thế giới lượng tử kỳ bí', N'Silvia Arroyo Camejo', N'NULL', 192, N'Còn sách', N'M05', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS31', N'Toán học siêu hay', N'Katie Hewett - Tracie Young', N'NULL', 147, N'Còn sách', N'M03', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS32', N'Liệu IT đã hết thời', N'Nicolas G.Carr', N'NULL', 159, N'Còn sách', N'M05', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS33', N'Chúa có phải là nhà toán học?', N'Simon Singh', N'NULL', 144, N'Còn sách', N'M04', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS34', N'Nữ bác học Marie Curie  ', N'Eve Curie', N'NULL', 166, N'Còn sách', N'M01', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS35', N'Thuyết tương đối hẹp và rộng của Albert Einstein', N'Nguyễn Xuân Xanh', N'NULL', 109, N'Còn sách', N'M03', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS36', N'460 bài toán vui luyện trí thông minh', N'Sa Thị Hồng Hạnh', N'NULL', 168, N'Còn sách', N'M04', N'MTL02', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS37', N'Tuổi thơ dữ dội', N'Phùng Quán', N'NULL', 156, N'Còn sách', N'M03', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS38', N'Dứt tình', N'Vũ Trọng Phụng', N'NULL', 187, N'Còn sách', N'M06', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS39', N'Ván bài lật ngửa', N'Nguyễn Trương Thiên Lý', N'NULL', 146, N'Còn sách', N'M05', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS40', N'Quân khu Nam Đồng', N'Bình Ca', N'NULL', 138, N'Còn sách', N'M09', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS41', N'Cuộc đời ngoài cửa', N'Nguyễn Danh Lam', N'NULL', 153, N'Còn sách', N'M01', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS42', N'Tuyển tập truyện ngắn Vũ Trọng Phụng', N'Vũ Trọng Phụng', N'NULL', 190, N'Còn sách', N'M03', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS43', N'Con hoang', N'Lê Hồng Nguyên', N'NULL', 119, N'Còn sách', N'M05', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS44', N'Những mảnh đời đen trắng', N'Nguyễn Quang Lập', N'NULL', 160, N'Còn sách', N'M03', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS45', N'Ăn mày dĩ vãng', N'Chu Lai', N'NULL', 168, N'Còn sách', N'M06', N'MTL03', N'tv')
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS46', N'Đêm hội Long Trì', N'Nguyễn Huy Tưởng', N'NULL', 165, N'Còn sách', N'M06', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS47', N'Cạm bẫy người', N'Vũ Trọng Phụng', N'NULL', 166, N'Còn sách', N'M09', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS48', N'Làm đĩ', N'Vũ Trọng Phụng', N'NULL', 165, N'Còn sách', N'M09', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS49', N'Bỉ vỏ', N'Nguyên Hồng', N'NULL', 195, N'Còn sách', N'M05', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS50', N'Lều chõng', N'Ngô Tất Tố', N'NULL', 173, N'Còn sách', N'M05', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS51', N'Hướng sắc trong vườn văn', N'Nguyễn Hiến Lê', N'NULL', 157, N'Còn sách', N'M09', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS52', N'Khách nợ', N'Tô Hoài', N'NULL', 157, N'Còn sách', N'M02', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS53', N'Trúng số độc đắc', N'Vũ Trọng Phụng', N'NULL', 176, N'Còn sách', N'M04', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS54', N'Đảo hoang', N'Tô Hoài', N'NULL', 155, N'Còn sách', N'M07', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS55', N'Đất rừng phương Nam', N'Đoàn Giỏi', N'NULL', 107, N'Còn sách', N'M02', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS56', N'Bước đường cùng', N'Nguyễn Công Hoan', N'NULL', 193, N'Còn sách', N'M04', N'MTL03', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS57', N'Hành trình tới các cõi bên kia cái chết', N'Richard Barron', N'NULL', 126, N'Còn sách', N'M04', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS58', N'Vô ngã vô ưu', N'Ni sư Ayya Khema', N'NULL', 101, N'Còn sách', N'M01', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS59', N'Truyện kể đêm Giáng sinh', N'Linh mục Phương Đình Toại', N'NULL', 199, N'Còn sách', N'M10', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS60', N'Đức Phật và Phật pháp', N'Maha Thera', N'NULL', 131, N'Còn sách', N'M02', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS61', N'Ăn và uống của người Việt', N'Vũ Ngọc Khánh - Hoàng Khôi', N'NULL', 116, N'Còn sách', N'M05', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS62', N'Văn hóa lối sống của người theo Hồi giáo', N'Nguyễn Mạnh Cường', N'NULL', 113, N'Còn sách', N'M10', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS63', N'Nhân quả', N'Nguyễn Chu Phác', N'NULL', 123, N'Còn sách', N'M05', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS64', N'Suy ngẫm về thiện và ác', N'Stephen Batchelor', N'NULL', 159, N'Còn sách', N'M08', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS65', N'Đồng dao Việt Nam', N'Anh Tú', N'NULL', 144, N'Còn sách', N'M06', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS66', N'Cầm ca Việt Nam', N'Toan Ánh', N'NULL', 179, N'Còn sách', N'M04', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS67', N'Nghi lễ thờ cúng cổ truyền Việt Nam', N'Nguyễn Quốc Thái', N'NULL', 101, N'Còn sách', N'M04', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS68', N'Đàn ông, đàn bà và chuyện…', N'Nguyễn Lệ Chi', N'NULL', 146, N'Còn sách', N'M02', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS69', N'Mật mã Do Thái', N'Perry Stone', N'NULL', 151, N'Còn sách', N'M01', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS70', N'Khổng Tử', N'Nguyễn Hiến Lê', N'NULL', 180, N'Còn sách', N'M02', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS71', N'Việt Nam văn hóa sử cương', N'Đào Duy Anh', N'NULL', 187, N'Còn sách', N'M08', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS72', N'Việt Nam văn hóa và du lịch', N'Trần Mạnh Thường', N'NULL', 194, N'Còn sách', N'M09', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS73', N'Tranh dân gian Việt Nam', N'Nguyễn Bá Vân', N'NULL', 142, N'Còn sách', N'M07', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS74', N'Trang phục Việt Nam', N'Đoàn Thị Tĩnh', N'NULL', 175, N'Còn sách', N'M06', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS75', N'Khám phá thế giới tâm linh', N'Gary Zukav', N'NULL', 126, N'Còn sách', N'M06', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS76', N'Lời ngỏ từ cõi tâm linh', N'Brian L. Weiss', N'NULL', 127, N'Còn sách', N'M02', N'MTL04', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS77', N'Các kiểu kiến trúc trên thế giới', N'Nguyễn Tứ', N'NULL', 136, N'Còn sách', N'M09', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS78', N'Kiến trúc cổ Việt Nam từ cái nhìn khảo cổ học', N'Trịnh Cao Tưởng', N'NULL', 133, N'Còn sách', N'M04', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS79', N'How to draw', N'Scott Robertson - Thomas Bertling', N'NULL', 145, N'Còn sách', N'M04', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS80', N'Thiết kế cầu treo dây võng', N'Nguyễn Viết Trung - Hoàng Hà', N'NULL', 156, N'Còn sách', N'M06', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS81', N'Một số xu hương kiến trúc đương đại nước ngoài', N'Lê Thanh Sơn', N'NULL', 127, N'Còn sách', N'M05', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS82', N'Nghệ thuật kiến trúc theo văn hóa cổ Trung Hoa', N'Nguyễn Hoàng Hải', N'NULL', 107, N'Còn sách', N'M07', N'MTL05', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS83', N'Luật pháp', N'Claude Frédéric Bastiat', N'NULL', 168, N'Còn sách', N'M09', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS84', N'Luật Doanh nghiệp', N'Quốc Hội Việt Nam', N'NULL', 163, N'Còn sách', N'M05', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS85', N'Luật Thương mại', N'Quốc Hội Việt Nam', N'NULL', 101, N'Còn sách', N'M08', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS86', N'Luật Đất đai', N'Quốc Hội Việt Nam', N'NULL', 107, N'Còn sách', N'M10', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS87', N'Bộ luật Lao động', N'Quốc Hội Việt Nam', N'NULL', 126, N'Còn sách', N'M03', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS88', N'Luật Cán bộ, Công chức', N'Quốc Hội Việt Nam', N'NULL', 170, N'Còn sách', N'M10', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS89', N'Bộ luật Dân sự', N'Quốc Hội Việt Nam', N'NULL', 120, N'Còn sách', N'M01', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS90', N'Bộ luật Hình sự', N'Quốc Hội Việt Nam', N'NULL', 194, N'Còn sách', N'M10', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS91', N'Luật An ninh mạng - 2018', N'Quốc Hội Việt Nam', N'NULL', 164, N'Còn sách', N'M10', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS92', N'Điều lệ Đảng Cộng sản Việt Nam', N'Quốc Hội Việt Nam', N'NULL', 175, N'Còn sách', N'M03', N'MTL06', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS93', N'Lịch sử giao thương: Thương mại định hình thế giới', N'William J. Bernstein', N'NULL', 150, N'Còn sách', N'M10', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS94', N'Thần, người và đất Việt', N'Tạ Chí Đại Trường', N'NULL', 137, N'Còn sách', N'M03', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS95', N'Tại sao Mác đúng?', N'Terry Eagleton', N'NULL', 153, N'Còn sách', N'M05', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS96', N'Hồ Chí Minh toàn tập', N'Học viện chính trị Quốc gia Hồ Chí Minh', N'NULL', 132, N'Còn sách', N'M06', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS97', N'Trật tự thế giới', N'Henry Kissinger', N'NULL', 125, N'Còn sách', N'M03', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS98', N'Lịch sử y học', N'Lois N.Magner', N'NULL', 105, N'Còn sách', N'M03', N'MTL07', N'tv')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [NamXB], [SoLuong], [TinhTrangSach], [MaNXB], [MaTheLoai], [MaNgonNgu]) VALUES (N'MS99', N'33 chiến lược của chiến tranh', N'Robert Greene', N'NULL', 160, N'Còn sách', N'M02', N'MTL07', N'tv')
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL01', N'Thể thao - Nghệ thuật')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL02', N'Khoa học - Kỹ thuậy')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL03', N'Văn học Việt Nam')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL04', N'Văn hóa - Tôn giáo')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL05', N'Kiến trúc - Xây dựng')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL06', N'Pháp luật')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL07', N'Lịch sử- Chính trị')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL08', N'Cổ tích - Thần thoại')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL09', N'Kinh tế - Quản lý')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL10', N'Hồi ký - Tùy bút')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'MTL11', N'Khác')
GO
INSERT [dbo].[User] ([Username], [Password], [LoaiUser], [EmailDK]) VALUES (N'a', N'1', NULL, NULL)
INSERT [dbo].[User] ([Username], [Password], [LoaiUser], [EmailDK]) VALUES (N'b', N'1', NULL, NULL)
GO
ALTER TABLE [dbo].[AnhDDSach]  WITH CHECK ADD  CONSTRAINT [FK_AnhDDSach_Sach1] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[AnhDDSach] CHECK CONSTRAINT [FK_AnhDDSach_Sach1]
GO
ALTER TABLE [dbo].[ChiTietHSM]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHS__MaHoS__5812160E] FOREIGN KEY([MaHoSoMuon])
REFERENCES [dbo].[PhieuMuon] ([MaHoSoMuon])
GO
ALTER TABLE [dbo].[ChiTietHSM] CHECK CONSTRAINT [FK__ChiTietHS__MaHoS__5812160E]
GO
ALTER TABLE [dbo].[ChiTietHSM]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHS__MaSac__59063A47] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHSM] CHECK CONSTRAINT [FK__ChiTietHS__MaSac__59063A47]
GO
ALTER TABLE [dbo].[ChiTietHST]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHS__MaHoS__5BE2A6F2] FOREIGN KEY([MaHoSotra])
REFERENCES [dbo].[HoSoTra] ([MaHoSotra])
GO
ALTER TABLE [dbo].[ChiTietHST] CHECK CONSTRAINT [FK__ChiTietHS__MaHoS__5BE2A6F2]
GO
ALTER TABLE [dbo].[ChiTietHST]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHS__MaSac__5CD6CB2B] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHST] CHECK CONSTRAINT [FK__ChiTietHS__MaSac__5CD6CB2B]
GO
ALTER TABLE [dbo].[HoSoTra]  WITH CHECK ADD  CONSTRAINT [FK__HoSoTra__MaNhanV__5070F446] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoSoTra] CHECK CONSTRAINT [FK__HoSoTra__MaNhanV__5070F446]
GO
ALTER TABLE [dbo].[NguoiDoc]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDoc_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[NguoiDoc] CHECK CONSTRAINT [FK_NguoiDoc_User]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_User]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK__PhieuMuon__MaHoS__534D60F1] FOREIGN KEY([MaHoSotra])
REFERENCES [dbo].[HoSoTra] ([MaHoSotra])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK__PhieuMuon__MaHoS__534D60F1]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK__PhieuMuon__MaNha__5441852A] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK__PhieuMuon__MaNha__5441852A]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_NguoiDoc] FOREIGN KEY([MaNguoiDoc])
REFERENCES [dbo].[NguoiDoc] ([MaNguoiDoc])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_NguoiDoc]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__MaNgonNgu__4AB81AF0] FOREIGN KEY([MaNgonNgu])
REFERENCES [dbo].[NgonNgu] ([MaNgonNgu])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__MaNgonNgu__4AB81AF0]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__MaNXB__48CFD27E] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__MaNXB__48CFD27E]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__MaTheLoai__49C3F6B7] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__MaTheLoai__49C3F6B7]
GO
ALTER TABLE [dbo].[ViTriSach]  WITH CHECK ADD  CONSTRAINT [FK_ViTriSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ViTriSach] CHECK CONSTRAINT [FK_ViTriSach_Sach]
GO
USE [master]
GO
ALTER DATABASE [QLThuVien_LTweb] SET  READ_WRITE 
GO
