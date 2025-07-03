CREATE DATABASE QuanLyQuanAn;
GO

USE QuanLyQuanAn;
GO
CREATE TABLE LoaiMon (
    MaLoai VARCHAR(10) PRIMARY KEY,
    TenLoai NVARCHAR(100)
);
CREATE TABLE MonAn (
    MaMon VARCHAR(10) PRIMARY KEY,
    TenMon NVARCHAR(100),
    DonGia MONEY,
    MaLoai VARCHAR(10),
	TrangThai BIT NOT NULL DEFAULT 1 -- 1 = Còn, 0 = Hết,
    FOREIGN KEY (MaLoai) REFERENCES LoaiMon(MaLoai)
);
CREATE TABLE BanAn (
    MaBan VARCHAR(10) PRIMARY KEY,
    TenBan NVARCHAR(50),
    ViTri NVARCHAR(100),
    TrangThai NVARCHAR(50) -- Trống, Đang sử dụng, Đã đặt...
);
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100),
    GioiTinh NVARCHAR(10),
    NgaySinh DATE,
    SDT VARCHAR(15),
    Email NVARCHAR(100),
    ChucVu NVARCHAR(50) -- Admin / Quản lý / Nhân viên
);
CREATE TABLE TaiKhoan (
    TenDangNhap VARCHAR(50) PRIMARY KEY,
    MatKhau VARCHAR(50),
    MaNV VARCHAR(10),
    Quyen NVARCHAR(20), -- Admin / QuanLy / NhanVien
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100),
    SDT VARCHAR(15),
    DiemTichLuy INT DEFAULT 0
);
CREATE TABLE KhuyenMai (
    MaKM VARCHAR(10) PRIMARY KEY,
    TenKM NVARCHAR(100),
    PhanTramGiam INT CHECK (PhanTramGiam BETWEEN 0 AND 100),
    NgayBatDau DATE,
    NgayKetThuc DATE
);
CREATE TABLE HoaDon (
    MaHD VARCHAR(10) PRIMARY KEY,
    MaBan VARCHAR(10),
    NgayLap DATE,
    GioLap TIME,
    MaNV VARCHAR(10),
    MaKH VARCHAR(10) NULL,
    MaKM VARCHAR(10) NULL,
    TongTien MONEY,
    TrangThai NVARCHAR(50),
    FOREIGN KEY (MaBan) REFERENCES BanAn(MaBan),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    FOREIGN KEY (MaKM) REFERENCES KhuyenMai(MaKM)
);
CREATE TABLE ChiTietHD (
    MaHD VARCHAR(10),
    MaMon VARCHAR(10),
    SoLuong INT,
    DonGia MONEY,
    PRIMARY KEY (MaHD, MaMon),
    FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);
CREATE TABLE PhieuNhap (
    MaPN VARCHAR(10) PRIMARY KEY,
    NgayNhap DATE,
    MaNV VARCHAR(10),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE ChiTietPhieuNhap (
    MaPN VARCHAR(10),
    MaMon VARCHAR(10),
    SoLuong INT,
    DonGia MONEY,
    PRIMARY KEY (MaPN, MaMon),
    FOREIGN KEY (MaPN) REFERENCES PhieuNhap(MaPN),
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);
CREATE TABLE TonKho (
    MaMon VARCHAR(10) PRIMARY KEY,
    SoLuongTon INT DEFAULT 0,
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);
