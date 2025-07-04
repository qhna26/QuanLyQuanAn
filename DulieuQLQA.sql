use QuanLyQuanAN
go

-- Món Ăn
INSERT INTO MonAn (MaMon, TenMon, TenLoai, DonGia, TrangThai)
VALUES ('MA01', N'Cơm sườn', N'Món chính', 40000, 1);

-- Bàn Ăn
INSERT INTO BanAn (MaBan, TenBan, ViTri, TrangThai)
VALUES ('B01', N'Bàn 1', N'Tầng trệt - Gần cửa sổ', N'Trống');

-- Nhân Viên
INSERT INTO NhanVien (MaNV, HoTen, GioiTinh, NgaySinh, SDT, Email, MatKhau, ChucVu)
VALUES ('NV01', N'Lê Văn An', N'Nam', '1990-05-10', '0909123456', 'levana@example.com', '123456', N'Nhân viên');

-- Khách Hàng
INSERT INTO KhachHang (MaKH, HoTen, SDT, DiemTichLuy)
VALUES ('KH01', N'Nguyễn Thị Bích', '0911222333', 15);

-- Khuyến Mãi
INSERT INTO KhuyenMai (MaKM, TenKM, PhanTramGiam, NgayBatDau, NgayKetThuc)
VALUES ('KM01', N'Giảm 20% cuối tuần', 20, '2025-07-01', '2025-07-31');

-- Hóa Đơn
INSERT INTO HoaDon (MaHD, MaBan, NgayLap, GioLap, MaNV, MaKH, MaKM, TongTien, TrangThai)
VALUES ('HD01', 'B01', '2025-07-04', '11:45:00', 'NV01', 'KH01', 'KM01', 32000, N'Chưa thanh toán');

-- Chi Tiết Hóa Đơn
INSERT INTO ChiTietHD (MaHD, MaMon, SoLuong, DonGia)
VALUES ('HD01', 'MA01', 1, 40000);

-- Phiếu Nhập
INSERT INTO PhieuNhap (MaPN, NgayNhap, MaNV)
VALUES ('PN01', '2025-07-03', 'NV01');

-- Chi Tiết Phiếu Nhập
INSERT INTO ChiTietPhieuNhap (MaPN, MaMon, SoLuong, DonGia)
VALUES ('PN01', 'MA01', 10, 35000);

-- Tồn Kho
INSERT INTO TonKho (MaMon, SoLuongTon)
VALUES ('MA01', 20);

--Lương Nhân Viên
INSERT INTO LuongNhanVien (MaLuong, MaNV, NgayBatDau, SoTien, NgayTra)
VALUES 
('L001', 'NV01', '2025-07-01', 10000000, '2025-08-2');

--Ca Làm
INSERT INTO CaLamViec (MaCa, TenCa, GioBatDau, GioKetThuc)
VALUES ('CA01', N'Ca Sáng', '07:00', '11:00');

--Chi Tiết Ca Làm
INSERT INTO ChiTietCaLam (MaNV, MaCa, Ngay)
VALUES ('NV01', 'CA01', '2025-07-04');
