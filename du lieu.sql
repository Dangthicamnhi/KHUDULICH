
set dateformat dmy
go 

-- du lieu phong ban
insert into phongBan ( mapb , tenPb , trgphg ) 
 values ( '1' , N'dieu hanh' , null),
		( '2' , N'hanh chinh ' , null),
		( '3' , N'ke hoach ' , null ),
		( '4' , N'ky thuat ' , null ),
		( '5' , N'tiep thi' , null ),
		( '6' , N'nhan su ' , null ),
		( '7' , N'tai chinh ' , null ),
		( '8' , N'marketing ' , null )
		
 select * from phongban
 --DELETE FROM phongban
 go

 -----------------------------------------------------------------------------------------------------
 -- du lieu ve
  insert into VE(MaVe,MaNV,GiaVe,LoaiVe,ChieuKhau)
  values
  ('V01', null,200000,N'Tre em', null),
  ('V02',null, 300000,N'Nguoi lon',null)
 select * from VE
 --DELETE FROM VE
 go

 -----------------------------------------------------------------------------------------------
 -- du lieu khach hang 
  insert into KHACHSAN(MaKS, TenKS,DiaChiKS,SDT,TGKhoiHanh,TGKetThuc)
 values
 ('KS01',N'May', N'TPHCM',0123456,null, null),
 ('KS02',N'Sao',N'Da Lat',0646576,null,null),
 ('KS03',N'Mua',N'Ha Noi',067595,null,null)
  select * from KHACHSAN
 --DELETE FROM KHACHSAN


 go

 ----------------------------------------------------------------------------------------------
-- du lieu quoang cao 
insert into QUANGCAO( MaQC , TenQC , TgQC , LoaiQC )
 values 
 ('QC01' , N'To Roi ' , null , N'Trong Nuoc ' ),
 ('QC02' , N'OnlLike' , null , N' Nuoc Ngoai ') 
		

select * from QUANGCAO
 --DELETE FROM QUANG CAO
 go

 -------------------------------------------------------------------------------------------------
 -- du lieu phuong tien 
insert into PHUONGTIEN( MAPT , TenPT , LoaiPT)
 values ( 'PT01 ' ,N'may Bay ' , N'thuong '),
		( 'PT02 ' ,N'may Bay ' , N'vip'),
		( 'PT03 ' ,N'xe bus ' , N'thuong'),
		( 'PT04 ' ,N'xe bus' , N'vip ')
select * from PHUONGTIEN
 --DELETE FROM PHUONGTIEN
 go


 -----------------------------------------------------------------------------------------------------
 -- du lieu khach hang
insert into KHACHHANG( MaKH , MaNV , HoTen , CCCD , DiaChi , Gmail , QuocTich , SDTKH , ThoiGian) 
 values 
 ( 'KH01 ' , null , N'Nguyen Thi Be Ba ' , 123456797 , N'TPHCM ' ,N'beba@gmail.com',N'Viet Nam',09876544, null),
 ( 'KH02', null ,N'Le My Tue' ,436464774, N'Ha Noi' , N'tue12@gmail.com',N'Viet Nam' ,0912384765  ,null),
 ( 'KH03',null,N'Cao Thai Quan',45678989,N'Da Lat',N'wanww@gmail.com', N'Viet Nam',08636443,null)
 select * from KHACHHANG
 --DELETE FROM KHACHHANG
 go 

 ------------------------------------------------------------------------------------------------------
 -- du lieu hoa don
 insert into NHANVIEN (MaNV,MaPb,TenNV,DiaChiNV, NgaySinh,GioiTinh,MaNVQL,Luong)
 values
 ('NV01','1',N' Nguyen Van A ', N'TPHCM','1/1/1999',N'Nam',null,340000),
 ('NV02','1',N' Nguyen Van B ', N'Tien Giang','1/2/1998',N'Nam',null,570000),
 ('NV03','2',N' Nguyen Van C ', N'Tra Vinh','11/12/1990',N'Nam',null,360000),
 ('NV04','2',N' Tran Thi  A ', N'Tay Nguyen','27/8/1997',N'Nu',null,490000),
 ('NV05','3',N' Nguyen Van D ', N'Da Nang','11/11/1999',N'Nam',null,440000),
 ('NV06','3',N' Nguyen Thi B ', N'Lang Son','14/11/1995',N'Nu',null,650000),
 ('NV07','4',N' Cao La A ', N'Yen Bai','17/4/1993',N'Nam',null,290000),
 ('NV08','4',N' Le Thi C ', N'TPHCM','1/12/1990',N'Nu',null,160000),
 ('NV09','5',N' Doan Van An ', N'TPHCM','1/10/1999',N'Nam',null,270000),
 ('NV010','5',N' Le Van A ', N'Vung Tau','23/1/2000',N'Nam',null,340000),
 ('NV011','6',N' Do Xuan An ', N'Tra Vinh ','19/9/2002',N'Nam',null,190000),
 ('NV012','6',N' Hoang Van Phi', N'TPHCM','1/1/1995',N'Nam',null,170000),
 ('NV013','7',N' Nguyen Phu', N'TPHCM','1/6/1999',N'Nam',null,320000),
 ('NV014','7',N' Tran Anh ', N'TPHCM','19/1/1989',N'Nu',null,240000),
 ('NV015','8',N'Pham Tuan ', N'TPHCM','1/10/1990',N'Nam',null,180000),
 ('NV016','8',N' Pham Hoang Huy ', N'TPHCM','16/1/1997',N'Nam',null,370000), 
 ('QL01','1',N' Doan An ', N'TPHCM','11/10/1999',N'Nam',null,270000),
 ('QL02','2',N' Le Xuan ', N'Vung Tau','2/1/2000',N'Nam',null,340000),
 ('QL03','3',N' Do Van An ', N'Tra Vinh ','9/9/2002',N'Nam',null,190000),
 ('QL04','4',N' Hoang Hai', N'TPHCM','15/1/1995',N'Nam',null,170000),
 ('QL05','5',N' Nguyen Yen Phuc', N'TPHCM','18/6/1999',N'Nam',null,320000),
 ('QL06','6',N' Tran Anh ', N'TPHCM','25/1/1989',N'Nu',null,240000),
 ('QL07','7',N'Pham Tuan Tran ', N'TPHCM','19/10/1990',N'Nam',null,180000),
 ('QL08','8',N' Pham Hoang  ', N'TPHCM','17/1/1997',N'Nam',null,370000)
 
 --DELETE FROM NHANVIEN
 Select * from NHANVIEN
 
 -----------------------------------------------------------------------------------------------------
 --du lieu hoa don
 insert into HOADON(MaHD,TGKhoiHanh,TGKetThuc,TenKH,MaKH,MaTour,TongGiaTri)
 values
 ('HD01',null, null,N'Nguyen Thi Be Ba','KH01',null, null),
 ('HD02', null, null,N'Le My Tue','KH02',null, null),
 ('HD03',null,null,N'Cao Thai Quan','KH03',null,null)
 select * From HOADON
 --Delete From HOADON

 -----------------------------------------------------------------------------------------------------
 --du lieu Tour
 insert into TOUR(MaTour,TenTour,LoaiTour,TGKhoiHanh,TGKetThuc,GiaTour,MAPT,MaQC,MaVe,MaKS,MaNV)
 values
 ('T01',N'Trong Nuoc',N'Thuong',null,null,null,'PT01','QC01','V01','KS01','NV01'),
 ('T02',N'Ngoai Nuoc',N'Vip',null,null,null,'PT02','QC02','V02','KS02','NV012'),
 ('T03',N'Trong Nuoc',N'Thuong',null,null,null,'PT03','QC01','V01','KS03','NV015')
 select * from TOUR
 --delete from TOUR
 -------------------------------------------------------------------------------------------------

 -- cap nhat phong ban
 UPDATE PHONGBAN
SET TrgPhg='QL01'
WHERE MaPB='1'
GO
UPDATE PHONGBAN
SET TrgPhg='QL02'
WHERE MaPB='2'
GO
UPDATE PHONGBAN
SET TrgPhg='QL03'
WHERE MaPB='3'
GO
GO
UPDATE PHONGBAN
SET TrgPhg='QL04'
WHERE MaPB='4'
GO
UPDATE PHONGBAN
SET TrgPhg='QL05'
WHERE MaPB='5'
GO
UPDATE PHONGBAN
SET TrgPhg='QL06'
WHERE MaPB='6'
GO
UPDATE PHONGBAN
SET TrgPhg='QL07'
WHERE MaPB='7'
GO
UPDATE PHONGBAN
SET TrgPhg='QL08'
WHERE MaPB='8'

------------------------------------------------------------------------------------------------------------
-- cap nhat nhan vien
UPDATE NHANVIEN
SET MaNVQL = 'QL01'
WHERE MaNV = 'QL02' OR MaNV = 'QL03' OR MaNV = 'QL04' OR MaNV = 'QL05' OR MaNV = 'QL06' OR MaNV = 'QL07' OR MaNV = 'QL08' 

GO
UPDATE NHANVIEN
SET MaNVQL = 'QL01'
WHERE MaNV = 'NV01' OR MaNV = 'NV02' 

GO
UPDATE NHANVIEN
SET MaNVQL = 'QL02'
WHERE MaNV = 'NV03' OR MaNV = 'NV04' 


GO
UPDATE NHANVIEN
SET MaNVQL = 'QL03'
WHERE MaNV = 'NV05' OR MaNV = 'NV06' 


GO
UPDATE NHANVIEN
SET MaNVQL = 'QL04'
WHERE MaNV = 'NV07' OR MaNV = 'NV08' 

GO
UPDATE NHANVIEN
SET MaNVQL = 'QL05'
WHERE MaNV = 'NV010' OR MaNV = 'NV09' 

GO
UPDATE NHANVIEN
SET MaNVQL = 'QL06'
WHERE MaNV = 'NV011' OR MaNV = 'NV012' 

GO
UPDATE NHANVIEN
SET MaNVQL = 'QL07'
WHERE MaNV = 'NV013' OR MaNV = 'NV014' 


GO
UPDATE NHANVIEN
SET MaNVQL = 'QL08'
WHERE MaNV = 'NV015' OR MaNV = 'NV016'

-- UPDATE and DELETE
GO
UPDATE NhanVien
SET Luong = Luong * 1.3
WHERE Luong > 100000

GO 
UPDATE NhanVien
SET Luong = Luong + 100000
WHERE MaNV like 'QL01'
