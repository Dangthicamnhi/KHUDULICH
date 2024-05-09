create database QLKHUDULICH
go
use QLKHUDULICH
--drop database QLKHUDULICH

--================================== TẠO BẢNG ==================================
--tao bang NHANVIEN
go
create table PHONGBAN(MaPB char(11) not null,TenPB nvarchar(30) , TrgPhg nvarchar(20) )

go 
create table NHANVIEN(
MaNV char(11) not null,
MaPb char(11), 
TenNV nvarchar(50), 
DiaChiNV nvarchar(30), 
NgaySinh datetime,
GioiTinh nvarchar(5) , 
MaNVQL  char(11) ,
Luong float)

go
create table VE(MaVe char(11) not null ,
MaNV char(11),
GiaVe float, 
LoaiVe nvarchar(30) , 
ChieuKhau float)

go
create table TOUR(MaTour char(11) not null,
TenTour nvarchar(30),
LoaiTour nvarchar(30),
TGKhoiHanh DateTime,
TGKetThuc DateTime,
GiaTour float ,
MAPT char(11)not null, 
MaQC char(11)not null, 
MaVe char(11) not null,
MaKS char(11) not null,
MaNV char(11) not null)

go
create table QUANGCAO(MaQC char(11)not null,
TenQC nvarchar(30),
TgQC DateTime,
LoaiQC nvarchar(30))

go
create table HOADON(MaHD char(11)not null,
TGKhoiHanh DateTime,
TGKetThuc DateTime,
TenKH nvarchar(50),
MaKH char(11),
MaTour char(11),
TongGiaTri float)

go
create table PHUONGTIEN(MAPT char(11)not null,
TenPT nvarchar(30),
LoaiPT nvarchar(30))

go
create table KHACHHANG (MaKH char(11) not null, 
MaNV char(11),
HoTen  nvarchar(50), 
CCCD int, 
DiaChi  nvarchar(50), 
Gmail  nvarchar(20), 
QuocTich  nvarchar(20), 
SDTKH int, ThoiGian float)

go
create table KHACHSAN (MaKS char(11) not null,
TenKS nvarchar(30) ,
DiaChiKS  nvarchar(50),
SDT int,
TGKhoiHanh DateTime,
TGKetThuc DateTime)


--================================== KHÓA CHÍNH ==================================

go
alter table PHONGBAN
add constraint pk_phongban primary key(MaPB)

go
alter table TOUR
add constraint pk_tour primary key(MaTour)

go
alter table QUANGCAO
add constraint pk_quangcao primary key(MaQC)

go
alter table HOADON
add constraint pk_hoadon primary key(MaHD)

go
alter table NHANVIEN
add constraint pk_nhanvien primary key(MaNV)

go
alter table KHACHHANG
add constraint pk_khachhang primary key(MaKH)

go
alter table PHUONGTIEN
add constraint pk_phuongtien primary key(MaPT)

go
alter table VE
add constraint pk_ve primary key(MaVe)

go
alter table KHACHSAN
add constraint pk_khachsan primary key(MaKS)


--================================== KHÓA NGOẠI ==================================
--Bảng hóa đơn
go
alter table HOADON
add constraint fk_hd_tour foreign key(MaTour) references TOUR(MaTour)

go
alter table HOADON
add constraint fk_hd_kh foreign key(MaKH) references KHACHHANG(MaKH)

--Bảng nhân viên
go
alter table NHANVIEN
add constraint fk_ql_nv foreign key(MaNVQL) references NHANVIEN(MaNV)

go
alter table NHANVIEN
add constraint fk_pb_nv foreign key(MaPb) references PHONGBAN(MaPb)

--Bảng tour
go
alter table TOUR
add constraint fk_tour_ve foreign key(MaVe) references VE(MaVe)

go
alter table TOUR
add constraint fk_tour_nv foreign key(MaNV) references NHANVIEN(MaNV)

go
alter table TOUR
add constraint fk_tour_pt foreign key(MaPT) references PHUONGTIEN(MaPT)

go
alter table TOUR
add constraint fk_tour_qc foreign key(MaQC) references QUANGCAO(MaQC)

go
alter table TOUR
add constraint fk_tour_ks foreign key(MaKS) references KHACHSAN(MaKS)

--Bảng khách hàng
go
alter table KHACHHANG
add constraint fk_kh_nv foreign key(MaNV) references NHANVIEN(MaNV)


