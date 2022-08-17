create database QuanLyDiemThi;
use QuanLyDiemThi;

create table hocsinh (
	MaHS varchar(20) not null primary key,
    TenHS varchar(20),
    NgaySinh date,
    Lop varchar(20),
    GT varchar(20)
    );
    
create table monhoc (
	MaMH varchar(20) not null primary key,
    TenMH varchar(20),
    MaGV varchar(20),
    foreign key (MaGV) references giaovien(MaGV)
    );
    

create table bangdiem (
	MaHS varchar(20),
    MaMH varchar(20),
    DiemThi int(10),
    NgayKT date,
    foreign key (MaHS) references hocsinh(MaHS),
    foreign key (MaMH) references monhoc(MaMH)
);

create table giaovien (
	MaGV varchar(20) not null primary key,
    TenGV varchar(20),
    SDT int(11)
);

drop table monhoc;
  
    