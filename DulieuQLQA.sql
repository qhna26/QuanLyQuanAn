use QuanLyQuanAn
go

-- Món Ăn
INSERT INTO MonAn (MaMon, TenMon, TenLoai, DonGia, SoLuong)
VALUES
('MA01', N'Cơm sườn', N'Món chính', 40000, 20),
('MA02', N'Cơm thịt bò', N'Món chính', 50000, 10),
('MA03', N'Cơm chiên', N'Món chính', 30000, 11),
('MA04', N'Cơm sườn + trứng', N'Món chính', 70000, 12),
('MA05', N'Cơm sườn + thịt bò', N'Món chính', 80000, 13),
('MA06', N'Cơm sườn + thịt heo', N'Món chính', 80000, 14), 
('MA07', N'Cơm sườn + thịt bò cobe', N'Món chính', 90000, 15),
('MA08', N'Cơm đặc biệt', N'Món chính', 100000, 16),
('MA09', N'Cơm thịt bò + trứng', N'Món chính', 90000, 17),
('MA010', N'Cơm chiên hải sản', N'Món chính', 60000, 18);

-- Bàn Ăn
INSERT INTO BanAn (MaBan, TenBan, ViTri, TrangThai)
VALUES 
('B01', N'Bàn 1', N'Tầng trệt', N'Trống'),
('B02', N'Bàn 2', N'Tầng trệt', N'Trống'),
('B03', N'Bàn 3', N'Tầng trệt', N'Trống'),
('B04', N'Bàn 4', N'Tầng trệt', N'Trống'),
('B05', N'Bàn 5', N'Tầng trệt - Gần cửa sổ', N'Trống'),
('B06', N'Bàn 6', N'Lầu 1', N'Trống'),
('B07', N'Bàn 7', N'Lầu 1', N'Trống'),
('B08', N'Bàn 8', N'Lầu 1', N'Trống'),
('B09', N'Bàn 9', N'Lầu 1', N'Trống'),
('B010', N'Bàn 10', N'Lầu 1', N'Trống');


-- Nhân Viên
INSERT INTO NhanVien (MaNV, HoTen, GioiTinh, NgaySinh, SDT, Email, MatKhau, ChucVu)
VALUES 
('NV01', N'Nguyễn Hoàng Anh Quân', N'Nam', '1989-09-26', '0967798072', 'nhaq@gmail.com', 'admin123', N'ADMIN'),
('NV02', N'Nguyễn Anh Như', N'Nữ', '2002-12-14', '0967798073', 'nan@gmail.com', 'ql123', N'Quản lý'),
('NV03', N'Nguyễn Việt Hoàng', N'Nam', '2006-05-10', '0967798074', 'nvh@gmail.com', 'nv123', N'Nhân viên'),
('NV04', N'Lê Đức Tiến', N'Nữ', '2005-10-01', '0967798076', 'ldt@gmail.com', 'nv123', N'Nhân viên'),
('NV05', N'Trần Mạnh Tiến', N'Nam', '2004-05-10', '0967798077', 'tmt@gmail.com', 'nv123', N'Nhân viên'),
('NV06', N'Phạm Thế Anh', N'Nam', '2006-05-10', '0967798079', 'pta@gmail.com', 'nv123', N'Nhân viên'),
('NV07', N'Nguyễn Tiến Đạt', N'Nữ', '2007-05-10', '0967798080', 'ntd@gmail.com', 'nv123', N'Nhân viên'),
('NV08', N'Bùi Thinh Phát', N'Nam', '2006-05-10', '0967798082', 'btp@gmail.com', 'nv123', N'Nhân viên'),
('NV09', N'Huỳnh Thiên Hoàng', N'Nam', '2003-05-10', '0909123456', 'hth@gmail.com', 'nv123', N'Nhân viên'),
('NV010', N'Nguyễn Quốc Anh', N'Nữ', '2001-05-10', '0909123456', 'nqa@gmail.com', 'nv123', N'Nhân viên');
-- Khách Hàng
INSERT INTO KhachHang (MaKH, HoTen, SDT, DiemTichLuy)
VALUES
('KH01', N'Nguyễn Thị Bích', '0911222333', 15),
('KH02', N'Trần Văn An', '0987654321', 20),
('KH03', N'Lê Thị Hoa', '0901234567', 12),
('KH04', N'Phạm Minh Tuấn', '0934567890', 30),
('KH05', N'Đỗ Thị Hạnh', '0971122334', 25),
('KH06', N'Ngô Văn Khánh', '0968899776', 18),
('KH07', N'Tạ Thị Mai', '0944556677', 22),
('KH08', N'Hoàng Gia Bảo', '0923344556', 10),
('KH09', N'Bùi Thị Lan', '0932233445', 27),
('KH10', N'Vũ Minh Châu', '0956677889', 35);

-- Khuyến Mãi
INSERT INTO KhuyenMai (MaKM, TenKM, PhanTramGiam, NgayBatDau, NgayKetThuc)
VALUES
('KM01', N'Giảm 20% cuối tuần', 20, '2025-07-01', '2025-07-31'),
('KM02', N'Ưu đãi tháng 7', 15, '2025-07-01', '2025-07-31'),
('KM03', N'Khuyến mãi hè', 10, '2025-06-15', '2025-08-15'),
('KM04', N'Giảm giá đặc biệt ngày 10/7', 25, '2025-07-10', '2025-07-10'),
('KM05', N'Giảm 30% cho khách thành viên', 30, '2025-07-01', '2025-07-31'),
('KM06', N'Flash Sale ngày 20/7', 35, '2025-07-20', '2025-07-20'),
('KM07', N'Tặng 1 món nước', 0, '2025-07-01', '2025-07-15'),
('KM08', N'Giảm 10% khi đặt online', 10, '2025-07-05', '2025-07-25'),
('KM09', N'Giảm 50% món thứ 2', 50, '2025-07-01', '2025-07-10'),
('KM10', N'Tri ân khách hàng cũ', 20, '2025-07-15', '2025-08-15');;

-- Hóa Đơn
INSERT INTO HoaDon (MaHD, MaBan, NgayLap, GioLap, MaNV, MaKH, MaKM, TongTien, TrangThai)
VALUES 
('HD01', 'B01', '2025-07-04', '11:45:00', 'NV01', 'KH01', 'KM01', 32000, N'Chưa thanh toán');

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
VALUES 
('MA01', 20),
('MA02', 10),
('MA03', 11),
('MA04', 12),
('MA05', 13),
('MA06', 14),
('MA07', 15),
('MA08', 16),
('MA09', 17),
('MA010', 18);

--Lương Nhân Viên
INSERT INTO LuongNhanVien (MaLuong, MaNV, NgayBatDau, SoTien, NgayTra)
VALUES 
('L001', 'NV01', '2025-01-01', 1000000, '2025-02-01'),
('L002', 'NV02', '2025-01-31', 1000000, '2025-03-01'),
('L003', 'NV03', '2025-03-02', 1000000, '2025-04-02'),
('L004', 'NV04', '2025-04-02', 1000000, '2025-05-02'),
('L005', 'NV05', '2025-05-03', 1000000, '2025-06-03'),
('L006', 'NV06', '2025-06-03', 1000000, '2025-07-03'),
('L007', 'NV07', '2025-07-04', 1000000, '2025-08-04'),
('L008', 'NV08', '2025-08-04', 1000000, '2025-09-04'),
('L009', 'NV09', '2025-09-04', 1000000, '2025-10-04'),
('L010', 'NV010', '2025-10-05', 1000000, '2025-11-05');

--Ca Làm
INSERT INTO CaLamViec (MaCa, TenCa, GioBatDau, GioKetThuc)
VALUES
('CA01', N'Ca Sáng', '07:00', '11:00'),
('CA02', N'Ca Chiều', '13:00', '17:00'),
('CA03', N'Ca Tối', '18:00', '22:00'),
('CA04', N'Ca Sáng', '07:00', '11:00'),
('CA05', N'Ca Chiều', '13:00', '17:00'),
('CA06', N'Ca Tối', '18:00', '22:00'),
('CA07', N'Ca Sáng', '07:00', '11:00'),
('CA08', N'Ca Chiều', '13:00', '17:00'),
('CA09', N'Ca Tối', '18:00', '22:00'),
('CA10', N'Ca Tối', '18:00', '22:00');
--Chi Tiết Ca Làm
INSERT INTO ChiTietCaLam (MaNV, MaCa, Ngay)
VALUES
('NV01', 'CA01', '2025-01-01'),
('NV02', 'CA02', '2025-01-31'),
('NV03', 'CA03', '2025-03-02'),
('NV04', 'CA04', '2025-04-02'),
('NV05', 'CA05', '2025-05-03'),
('NV06', 'CA06', '2025-06-03'),
('NV07', 'CA07', '2025-07-04'),
('NV08', 'CA08', '2025-08-04'),
('NV09', 'CA09', '2025-09-04'),
('NV010', 'CA10', '2025-10-05');
--Đặt Món
INSERT INTO DatMon (MaDatMon, MaBan, MaMon, MaKH, MaKM, DonGia, SoLuong)
VALUES 
('DM001', 'B01', 'MA01', 'KH01', 'KM01', 40000, 20),
('DM002', 'B02', 'MA02', 'KH02', 'KM02', 50000, 10),
('DM003', 'B03', 'MA03', 'KH03', 'KM03', 30000, 11),
('DM004', 'B04', 'MA04', 'KH04', 'KM04', 70000, 12),
('DM005', 'B05', 'MA05', 'KH05', 'KM05', 80000, 13),
('DM006', 'B06', 'MA06', 'KH06', 'KM06', 80000, 14),
('DM007', 'B07', 'MA07', 'KH07', 'KM07',90000, 15),
('DM008', 'B08', 'MA08','KH08', 'KM08', 100000, 16),
('DM009', 'B09', 'MA09', 'KH09', 'KM09', 90000, 17),
('DM010', 'B010', 'MA010','KH10', 'KM10', 60000,18);

