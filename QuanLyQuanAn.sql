-- Tạo cơ sở dữ liệu quản lý quán ăn
CREATE DATABASE QuanLyQuanAn;
GO

-- Chọn sử dụng cơ sở dữ liệu vừa tạo
USE QuanLyQuanAn;
GO

-- ====================== BẢNG MÓN ĂN ======================
-- Lưu thông tin các món ăn trong quán
-- (Không dùng bảng LoaiMon, thay bằng cột TenLoai trong bảng này)
CREATE TABLE MonAn (
    MaMon VARCHAR(10) PRIMARY KEY,            -- Mã món ăn (PK)
    TenMon NVARCHAR(100) NOT NULL,            -- Tên món ăn
    TenLoai NVARCHAR(100) NOT NULL,           -- Tên loại món (Ví dụ: Đồ uống, Món chính)
    DonGia MONEY NOT NULL,                    -- Giá tiền của món
    TrangThai BIT NOT NULL DEFAULT 1          -- 1: Còn bán, 0: Hết món
);

-- ====================== BẢNG BÀN ĂN ======================
-- Lưu thông tin các bàn trong quán
CREATE TABLE BanAn (
    MaBan VARCHAR(10) PRIMARY KEY,            -- Mã bàn ăn (PK)
    TenBan NVARCHAR(50) NOT NULL,             -- Tên bàn (ví dụ: Bàn 1, Bàn VIP)
    ViTri NVARCHAR(100),                      -- Vị trí trong quán
    TrangThai NVARCHAR(50) NOT NULL           -- Trạng thái: Trống, Đã đặt, Đang sử dụng
);

-- ====================== BẢNG NHÂN VIÊN ======================
-- Lưu thông tin nhân viên trong quán
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,             -- Mã nhân viên (PK)
    HoTen NVARCHAR(100) NOT NULL,             -- Họ tên nhân viên
    GioiTinh NVARCHAR(10),                    -- Giới tính
    NgaySinh DATE,                            -- Ngày sinh
    SDT VARCHAR(15),                          -- Số điện thoại
    Email NVARCHAR(100) UNIQUE NOT NULL,      -- Email dùng làm tên đăng nhập (đảm bảo duy nhất)
    MatKhau VARCHAR(50) NOT NULL,             -- Mật khẩu đăng nhập
    ChucVu NVARCHAR(50)                       -- Chức vụ: Admin / Quản lý / Nhân viên / Kế toán
);

-- ====================== BẢNG KHÁCH HÀNG ======================
-- Lưu thông tin khách hàng
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,             -- Mã khách hàng (PK)
    HoTen NVARCHAR(100) NOT NULL,             -- Họ tên khách
    SDT VARCHAR(15),                          -- Số điện thoại
    DiemTichLuy INT DEFAULT 0                 -- Điểm tích lũy dùng để khuyến mãi
);

-- ====================== BẢNG KHUYẾN MÃI ======================
-- Lưu thông tin các chương trình giảm giá
CREATE TABLE KhuyenMai (
    MaKM VARCHAR(10) PRIMARY KEY,             -- Mã khuyến mãi (PK)
    TenKM NVARCHAR(100) NOT NULL,             -- Tên chương trình khuyến mãi
    PhanTramGiam INT CHECK (PhanTramGiam BETWEEN 0 AND 100),  -- % giảm giá
    NgayBatDau DATE NOT NULL,                 -- Ngày bắt đầu khuyến mãi
    NgayKetThuc DATE NOT NULL                 -- Ngày kết thúc
);

-- ====================== BẢNG HÓA ĐƠN ======================
-- Lưu thông tin hóa đơn bán hàng
CREATE TABLE HoaDon (
    MaHD VARCHAR(10) PRIMARY KEY,             -- Mã hóa đơn (PK)
    MaBan VARCHAR(10) NOT NULL,               -- Bàn phục vụ (FK -> BanAn)
    NgayLap DATE NOT NULL,                    -- Ngày lập hóa đơn
    GioLap TIME NOT NULL,                     -- Giờ lập hóa đơn
    MaNV VARCHAR(10) NOT NULL,                -- Nhân viên lập hóa đơn (FK -> NhanVien)
    MaKH VARCHAR(10) NULL,                    -- Khách hàng (FK -> KhachHang)
    MaKM VARCHAR(10) NULL,                    -- Mã khuyến mãi sử dụng (FK -> KhuyenMai)
    TongTien MONEY NOT NULL,                  -- Tổng tiền sau khuyến mãi
    TrangThai NVARCHAR(50),                   -- Đã thanh toán / Chưa thanh toán / Hủy
    FOREIGN KEY (MaBan) REFERENCES BanAn(MaBan),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    FOREIGN KEY (MaKM) REFERENCES KhuyenMai(MaKM)
);

-- ====================== BẢNG CHI TIẾT HÓA ĐƠN ======================
-- Lưu các món trong từng hóa đơn
CREATE TABLE ChiTietHD (
    MaHD VARCHAR(10),                         -- Mã hóa đơn (FK -> HoaDon)
    MaMon VARCHAR(10),                        -- Mã món ăn (FK -> MonAn)
    SoLuong INT NOT NULL,                     -- Số lượng món
    DonGia MONEY NOT NULL,                    -- Giá tại thời điểm bán
    PRIMARY KEY (MaHD, MaMon),
    FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);

-- ====================== BẢNG PHIẾU NHẬP ======================
-- Lưu các phiếu nhập hàng từ nhà cung cấp
CREATE TABLE PhieuNhap (
    MaPN VARCHAR(10) PRIMARY KEY,             -- Mã phiếu nhập (PK)
    NgayNhap DATE NOT NULL,                   -- Ngày nhập hàng
    MaNV VARCHAR(10) NOT NULL,                -- Nhân viên nhập (FK -> NhanVien)
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- ====================== BẢNG CHI TIẾT PHIẾU NHẬP ======================
-- Lưu thông tin chi tiết món nhập trong phiếu nhập
CREATE TABLE ChiTietPhieuNhap (
    MaPN VARCHAR(10),                         -- Mã phiếu nhập (FK -> PhieuNhap)
    MaMon VARCHAR(10),                        -- Mã món (FK -> MonAn)
    SoLuong INT NOT NULL,                     -- Số lượng nhập
    DonGia MONEY NOT NULL,                    -- Giá nhập
    PRIMARY KEY (MaPN, MaMon),
    FOREIGN KEY (MaPN) REFERENCES PhieuNhap(MaPN),
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);

-- ====================== BẢNG TỒN KHO ======================
-- Quản lý số lượng tồn kho của từng món
CREATE TABLE TonKho (
    MaMon VARCHAR(10) PRIMARY KEY,            -- Mã món (PK, đồng thời là FK)
    SoLuongTon INT DEFAULT 0,                 -- Số lượng tồn hiện tại
    FOREIGN KEY (MaMon) REFERENCES MonAn(MaMon)
);

-- ====================== BẢNG LƯƠNG NHÂN VIÊN ======================
-- Lưu thông tin chi trả lương cho nhân viên theo tháng
CREATE TABLE LuongNhanVien (
    MaLuong VARCHAR(10) PRIMARY KEY,          -- Mã bảng lương (PK)
    MaNV VARCHAR(10) NOT NULL,                -- Nhân viên được trả (FK -> NhanVien)
    NgayBatDau DATE NOT NULL,                 -- Tháng tính lương (chỉ lấy tháng & năm, ví dụ: 2025-07-01)
    SoTien MONEY NOT NULL,                    -- Tổng lương
    NgayTra DATE NOT NULL,                    -- Ngày chi trả
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- ====================== BẢNG CA LÀM VIỆC ======================
-- Định nghĩa các ca làm trong ngày
CREATE TABLE CaLamViec (
    MaCa VARCHAR(10) PRIMARY KEY,             -- Mã ca (PK)
    TenCa NVARCHAR(50),                       -- Tên ca: Ca Sáng, Ca Chiều...
    GioBatDau TIME,                           -- Giờ bắt đầu ca
    GioKetThuc TIME                           -- Giờ kết thúc ca
);

-- ====================== BẢNG CHI TIẾT CA LÀM ======================
-- Gán nhân viên vào ca làm trong một ngày cụ thể
CREATE TABLE ChiTietCaLam (
    MaNV VARCHAR(10),                         -- Nhân viên làm việc (FK)
    MaCa VARCHAR(10),                         -- Ca làm (FK)
    Ngay DATE,                                -- Ngày làm
    PRIMARY KEY (MaNV, MaCa, Ngay),           -- Một nhân viên không được phân 1 ca trùng ngày
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    FOREIGN KEY (MaCa) REFERENCES CaLamViec(MaCa)
);
