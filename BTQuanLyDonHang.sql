create database QuanLyBanHang;
use QuanLyBanHang;

create table customer (
	cid int(3) primary key auto_increment,
    name varchar(20),
    age int(3)
);

create table orders (
	oid int(3) primary key auto_increment,
    cid int(3),
    date datetime,
    totalprice int(10),
    foreign key (cid) references customer(cid)
);

drop table ordersdetail;
create table ordersdetail (
	oid int(3),
    pid int(3),
    qty int(10),
    primary key (oid, pid),
    foreign key (oid) references orders(oid),
    foreign key (pid) references product(pid)
);

create table product (
	pid int(3) primary key auto_increment,
    name varchar(10),
    price int(10)
);