-- 1. LoaiMon
INSERT INTO LoaiMon VALUES ('LM01', N'Trà sữa');

-- 2. MonAn
INSERT INTO MonAn VALUES ('MA01', N'Trà sữa trân châu', 30000, 'LM01', 1);

-- 3. BanAn
INSERT INTO BanAn VALUES ('B01', N'Bàn 1', N'Tầng trệt', N'Trống');

-- 4. NhanVien
INSERT INTO NhanVien VALUES ('NV001', N'Nguyễn Văn An', N'Nam', '1990-05-15', '0909123456', 'an@gmail.com', N'Admin');

-- 5. TaiKhoan
INSERT INTO TaiKhoan VALUES ('admin', '123', 'NV001', N'Admin');

-- 6. KhachHang
INSERT INTO KhachHang VALUES ('KH01', N'Lê Thị Hoa', '0912345678', 120);

-- 7. KhuyenMai
INSERT INTO KhuyenMai VALUES ('KM01', N'Giảm 20% hè 2025', 20, '2025-06-01', '2025-06-30');

-- 8. HoaDon
INSERT INTO HoaDon VALUES ('HD01', 'B01', '2025-06-30', '14:30:00', 'NV001', 'KH01', 'KM01', 60000, N'Đã thanh toán');

-- 9. ChiTietHD
INSERT INTO ChiTietHD VALUES ('HD01', 'MA01', 2, 30000);

--10. PhieuNhap
INSERT INTO PhieuNhap (MaPN, NgayNhap, MaNV) VALUES ('PN01', '2025-06-29', 'NV001');

--11. ChiTietPhieuNhap
INSERT INTO ChiTietPhieuNhap (MaPN, MaMon, SoLuong, DonGia) VALUES ('PN01', 'MA01', 10, 20000);

--12. TonKho
INSERT INTO TonKho (MaMon, SoLuongTon) VALUES ('MA01', 50);

