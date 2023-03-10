USE [master]
GO
/****** Object:  Database [qlksDataSet]    Script Date: 25/10/2022 2:39:30 SA ******/
CREATE DATABASE [qlksDataSet]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'QLKhachSan', FILENAME = N'D:\QLKhachSanVui\QLKhachSanVui\QLKhachSan.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--( NAME = N'QLKhachSan_log', FILENAME = N'D:\QLKhachSanVui\QLKhachSanVui\QLKhachSan_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT
--GO
ALTER DATABASE [qlksDataSet] SET COMPATIBILITY_LEVEL = 110
GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [qlksDataSet].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
ALTER DATABASE [qlksDataSet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlksDataSet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlksDataSet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlksDataSet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlksDataSet] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlksDataSet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlksDataSet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlksDataSet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlksDataSet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlksDataSet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlksDataSet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlksDataSet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlksDataSet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlksDataSet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlksDataSet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlksDataSet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlksDataSet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlksDataSet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlksDataSet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlksDataSet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlksDataSet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlksDataSet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlksDataSet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlksDataSet] SET  MULTI_USER 
GO
ALTER DATABASE [qlksDataSet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlksDataSet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlksDataSet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlksDataSet] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlksDataSet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlksDataSet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlksDataSet', N'ON'
GO
ALTER DATABASE [qlksDataSet] SET QUERY_STORE = OFF
GO

/****** Object:  Table [dbo].[tblctdatphong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctdatphong](
	[mapd] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblctdatphong] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblctthuephong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctthuephong](
	[mapt] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
	[ngay] [nvarchar](50) NOT NULL,
	[madv] [nvarchar](50) NOT NULL,
	[soluong] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblctthuephong] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblctvattu]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctvattu](
	[mavattu] [nvarchar](50) NULL,
	[malp] [nvarchar](50) NULL,
	[soluong] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbldichvu]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldichvu](
	[madv] [nvarchar](50) NOT NULL,
	[tendv] [nvarchar](50) NULL,
	[gia] [nvarchar](50) NULL,
	[donvitinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbldichvu] PRIMARY KEY CLUSTERED 
(
	[madv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblhoadon]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhoadon](
	[mahd] [nvarchar](50) NOT NULL,
	[ngaythanhtoan] [nvarchar](50) NULL,
	[tongtien] [nvarchar](50) NULL,
	[mapt] [nvarchar](50) NULL,
	[makh] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblhoadon] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkhachhang]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[makh] [nvarchar](50) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[cmnd] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblkhachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblloaiphong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblloaiphong](
	[maloai] [nvarchar](50) NOT NULL,
	[songuoi] [nvarchar](50) NULL,
	[gia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblloaiphong] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnhanvien]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhanvien](
	[manv] [nvarchar](50) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblnhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblphieudatphong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphieudatphong](
	[mapd] [nvarchar](50) NOT NULL,
	[makh] [nvarchar](50) NULL,
	[ngayden] [nvarchar](50) NULL,
	[ngaydi] [nvarchar](50) NULL,
	[sotiendat] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[songuoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphieudatphong_1] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblphieuthuephong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphieuthuephong](
	[mapt] [nvarchar](50) NOT NULL,
	[mapd] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphieudatphong] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblphong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphong](
	[maphong] [nvarchar](50) NOT NULL,
	[maloai] [nvarchar](50) NULL,
	[dadat] [nvarchar](50) NULL,
	[danhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltrangthaiphong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltrangthaiphong](
	[maphong] [nvarchar](50) NOT NULL,
	[trangthai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbltrangthaiphong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbluser]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbluser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblvattu]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblvattu](
	[mavattu] [nvarchar](50) NOT NULL,
	[tenvattu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblvattu] PRIMARY KEY CLUSTERED 
(
	[mavattu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CTDatPhong]    Script Date: 25/10/2022 2:39:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CTDatPhong]
  @mapd nvarchar(50),
  @maphong nvarchar(50)  
AS
BEGIN
   INSERT INTO tblctdatphong(mapd, maphong)
   values(@mapd, @maphong)
END
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ChangePass]
	@username nvarchar(50),
	@password  nvarchar(50)

AS
BEGIN
	Update tbluser
	Set
		password = @password
	WHERE
		username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CheckLogin]
	@username as nvarchar(50),
	@password as nvarchar(50)	
AS
DECLARE @result bit
BEGIN
	SET @result = (SELECT TOP 1 COUNT(*) From [tbluser] WHERE [Username]=@username AND [Password]=@password)
	SELECT *, @result AS [Result]
	FROM tbluser
	WHERE [Username]=@username AND [Password]=@password
END
GO
/****** Object:  StoredProcedure [dbo].[DatPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DatPhong]
  @mapd nvarchar(50),
  @makh nvarchar(50),
  @ngayden  nvarchar(50),
  @ngaydi nvarchar(50),
  @sotiendat nvarchar(50),
  @tinhtrang nvarchar(50),
  @songuoi nvarchar(50)  
AS
BEGIN
   INSERT INTO tblphieudatphong(mapd, makh, ngayden, ngaydi, sotiendat, tinhtrang, songuoi)
   values(@mapd, @makh, @ngayden, @ngaydi, @sotiendat, @tinhtrang, @songuoi)
END
GO
/****** Object:  StoredProcedure [dbo].[DSHoaDon]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSHoaDon] 
	
AS
BEGIN
	SELECT *, tblkhachhang.tenkh
	FROM tblhoadon

	INNER JOIN tblkhachhang ON tblkhachhang.makh = tblhoadon.makh

END
GO
/****** Object:  StoredProcedure [dbo].[DSKhachHang]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSKhachHang] 
	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	ORDER  BY tblkhachhang.makh DESC
END
GO
/****** Object:  StoredProcedure [dbo].[DSLoaiPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSLoaiPhong] 
	
AS
BEGIN
	SELECT maloai as [Loại phòng], songuoi as [Số người], gia as [Giá]
	FROM tblloaiphong
END
GO
/****** Object:  StoredProcedure [dbo].[DSPhieuDatPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSPhieuDatPhong] 
	
AS
BEGIN
	SELECT mapd as[Mã phiếu], tblkhachhang.tenkh as [Họ tên], ngayden as [Ngày đến], ngaydi as [Ngày đi], tinhtrang as [Tình trạng],
		songuoi as [Số người]
	FROM tblphieudatphong
	INNER JOIN tblkhachhang ON tblkhachhang.makh = tblphieudatphong.makh
	ORDER  BY tblphieudatphong.mapd DESC
END
GO
/****** Object:  StoredProcedure [dbo].[DSPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSPhong] 
	
AS
BEGIN
	SELECT tblphong.maphong as [Mã phòng], tblphong.maloai as [Loại phòng], tblloaiphong.songuoi as [Số người],
	tblloaiphong.gia as [Giá]
	FROM tblphong

	INNER JOIN tblloaiphong ON tblphong.maloai = tblloaiphong.maloai

END
GO
/****** Object:  StoredProcedure [dbo].[NhanPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NhanPhong]
	@maphong		nvarchar(50)	
AS

UPDATE tblphong
	SET danhan='1',
	dadat='0'
	
	WHERE maphong=@maphong
GO
/****** Object:  StoredProcedure [dbo].[SuaKH]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SuaKH]
	@makh		nvarchar(50),
	@tenkh		nvarchar(50),
	@gioitinh	nvarchar(50),
	@ngaysinh	nvarchar(50),
	@cmnd		nvarchar(50),
	@diachi		nvarchar(50),
	@sdt		nvarchar(50),
	@ghichu		nvarchar(50),
	@makhcu		nvarchar(50)
AS
UPDATE tblkhachhang
	SET makh=@makh, tenkh=@tenkh, gioitinh=@gioitinh, ngaysinh=@ngaysinh,
		cmnd=@cmnd, diachi=@diachi, sdt=@sdt, ghichu=@ghichu
	WHERE makh=@makhcu
GO
/****** Object:  StoredProcedure [dbo].[TimKH]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKH]	
	@makh nvarchar(50)	
AS
BEGIN
	SELECT *
	FROM tblkhachhang
	WHERE makh = @makh
END
GO
/****** Object:  StoredProcedure [dbo].[TimKHMa]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKHMa]	
	@makh nvarchar(50)	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	WHERE makh LIKE '%'+ @makh + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[TimKHTen]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKHTen]	
	@tenkh nvarchar(50)	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	WHERE tenkh LIKE '%'+ @tenkh + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[TimPhongN]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimPhongN]
	@maphieu		nvarchar(50)	
AS
BEGIN
	SELECT maphong
	FROM tblctdatphong	
	WHERE mapd=@maphieu
END
GO
/****** Object:  StoredProcedure [dbo].[TimPhongTrong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimPhongTrong] 
	@songuoi nvarchar(50)
AS
BEGIN
	SELECT tblphong.maphong as [Phòng], tblphong.maloai as [Loại],
		tblloaiphong.songuoi as [Số người],	tblloaiphong.gia as [Giá]
	FROM tblphong
	INNER JOIN tblloaiphong ON tblphong.maloai = tblloaiphong.maloai
	WHERE tblphong.dadat = '0' AND tblphong.danhan = '0' AND tblloaiphong.songuoi >= @songuoi
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKH]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemKH]
  @makh nvarchar(50),
  @tenkh nvarchar(50),
  @gioitinh  nvarchar(50),
  @ngaysinh nvarchar(50),
  @cmnd nvarchar(50),
  @diachi nvarchar(50),
  @sdt nvarchar(50),
  @ghichu nvarchar(50)
AS
BEGIN
   INSERT INTO tblkhachhang(makh, tenkh, gioitinh, ngaysinh, cmnd, diachi, sdt, ghichu)
   values(@makh, @tenkh, @gioitinh, @ngaysinh, @cmnd, @diachi, @sdt, @ghichu)
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThongKe]
AS
DECLARE @tongphong int
DECLARE @phongtrong int
DECLARE @phongdadat int
DECLARE @phongdanhan int
BEGIN
	SET @tongphong = (SELECT COUNT(*) From tblphong)
	SET @phongdadat = (SELECT COUNT(*) From tblphong WHERE tblphong.dadat='1')
	SET @phongdanhan = (SELECT COUNT(*) From tblphong WHERE tblphong.danhan='1')
	SET @phongtrong = @tongphong - (@phongdadat+ @phongdanhan) 
	SELECT  @phongtrong AS [phongtrong], @phongdadat AS [phongdadat], @phongdanhan AS [phongdanhan]
	FROM tblphong
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDatPhong]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDatPhong]
	@maphong		nvarchar(50)	
AS
UPDATE tblphong
	SET dadat='1'
	WHERE maphong=@maphong
GO
/****** Object:  StoredProcedure [dbo].[XoaKH]    Script Date: 25/10/2022 2:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKH]
	@makh nvarchar(50)
AS
DELETE FROM tblkhachhang WHERE makh=@makh
GO
USE [master]
GO
ALTER DATABASE [qlksDataSet] SET  READ_WRITE 
GO
