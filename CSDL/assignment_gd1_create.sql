-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-07-26 04:02:15.297

-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
	HoaDon_MaHD char(10)  NOT NULL,
    SanPham_MaSP char(10)  NOT NULL,
    SoLuongSP char(10)  NOT NULL,
    GiaBan money  NOT NULL,
    Tong money  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY  (HoaDon_MaHD)
);

-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD char(10)  NOT NULL,
    NgayBan datetime  NOT NULL,    
    TongTien money  NOT NULL,
    KhachHang_MaKH char(10)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (MaHD)
);

-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH char(10)  NOT NULL,
    TenKH nvarchar(250)  NOT NULL,
    DiaChi nvarchar(250)  NOT NULL,
    SDT char(12)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (MaKH)
);

-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLSP char(10)  NOT NULL,
    TenLSP nvarchar(250)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (MaLSP)
);

-- Table: SanPham
CREATE TABLE SanPham (
    MaSP char(10)  NOT NULL,
    TenSP nvarchar(250)  NOT NULL,
    SoLuong char(10)  NOT NULL,
    MoTa nvarchar(250)  NOT NULL,
    LoaiSanPham_MaLSP char(10)  NOT NULL,
    GiaBan money  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: ChiTietHoaDon_HoaDon (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_HoaDon
    FOREIGN KEY (HoaDon_MaHD)
    REFERENCES HoaDon (MaHD);

-- Reference: ChiTietHoaDon_SanPham (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_SanPham
    FOREIGN KEY (SanPham_MaSP)
    REFERENCES SanPham (MaSP);

-- Reference: HoaDon_KhachHang (table: HoaDon)
ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang
    FOREIGN KEY (KhachHang_MaKH)
    REFERENCES KhachHang (MaKH);

-- Reference: SanPham_LoaiSanPham (table: SanPham)
ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham
    FOREIGN KEY (LoaiSanPham_MaLSP)
    REFERENCES LoaiSanPham (MaLSP);

-- End of file.

select * from KhachHang
INSERT INTO KhachHang VALUES ('KH01','Nguyễn Văn A','Hà Nội','0123456789');
INSERT INTO KhachHang VALUES ('KH02','Nguyễn Văn B','Hải Phòng','0986018752');
INSERT INTO KhachHang VALUES ('KH03','Trần Văn C','Đà Nẵng','0915478589');
INSERT INTO KhachHang VALUES ('KH04','Lê Thị Na','Cao Bằng','0884575269');
INSERT INTO KhachHang VALUES ('KH05','Lương D','Hà Nội','0987654321');

SELECT * FROM LoaiSanPham
INSERT INTO LoaiSanPham VALUES ('LSP01','Điện thoại');
INSERT INTO LoaiSanPham VALUES ('LSP02','Laptop');
INSERT INTO LoaiSanPham VALUES ('LSP03','Máy tính bảng');
INSERT INTO LoaiSanPham VALUES ('LSP04','Linh kiện máy tính');


SELECT * FROM SanPham
INSERT INTO SanPham VALUES ('SP01','Iphone6','100','Sản phẩm của Apple inc','LSP01','16000000');
INSERT INTO SanPham VALUES ('SP02','Iphone6S','100','Sản phẩm của Apple inc','LSP01','18000000');
INSERT INTO SanPham VALUES ('SP03','Iphone6 Plus','100','Sản phẩm của Apple inc','LSP01','20000000');
INSERT INTO SanPham VALUES ('SP04','Iphone6S Plus','100','Sản phẩm của Apple inc','LSP01','24000000');
INSERT INTO SanPham VALUES ('SP05','Samsung Galaxy S6','100','Sản phẩm của Samsung','LSP01','19000000');
INSERT INTO SanPham VALUES ('SP07','iPad','100','san pham cua apple','LSP01','20000000');


SELECT * FROM HoaDon
SELECT * FROM ChiTietHoaDon
INSERT INTO HoaDon VALUES ('HD01','3-16-2016','18000000','KH02');
INSERT INTO HoaDon VALUES ('HD02','4-26-2016','20000000','KH01');
INSERT INTO HoaDon VALUES ('HD03','7-6-2016','24000000','KH05');
INSERT INTO HoaDon VALUES ('HD04','7-10-2016','19000000','KH03');
INSERT INTO HoaDon VALUES ('HD05','7-15-2016','16000000','KH04');


INSERT INTO ChiTietHoaDon VALUES ('HD01','SP02','1','18000000','18000000');
INSERT INTO ChiTietHoaDon VALUES ('HD02','SP03','1','20000000','18000000');
INSERT INTO ChiTietHoaDon VALUES ('HD03','SP04','1','24000000','18000000');
INSERT INTO ChiTietHoaDon VALUES ('HD04','SP05','1','19000000','18000000');
INSERT INTO ChiTietHoaDon VALUES ('HD05','SP01','1','16000000','18000000');