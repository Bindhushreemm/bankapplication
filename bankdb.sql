
create database bank;

use bank;

create table register(accno int auto_increment,
name varchar(30),
dob date,
address varchar(20),
email varchar(30),
phono varchar(10),
pan varchar(30),
adhar varchar(30),
type varchar(30),
balance varchar(30),
username varchar(30),
password varchar(30),
mpin varchar(4),
photo mediumblob,primary key(accno));

create table userinfo(id int auto_increment,
firstname varchar(30),
lastname varchar(30),
dob date,
rollno varchar(15),
percentage double,
edu varchar(100),
cgpa double,
collegename varchar(100),
tfees double,
nationality varchar(30),
address varchar(100),
email varchar(200),
phono varchar(10),
pan varchar(30),
adhar varchar(40),
tfeesphoto mediumblob,
panphoto mediumblob,
adharphoto mediumblob,
currentdate date,primary key(id));

create table statement(accno int,
amount double,
status varchar(20),
balance double);

create table admin(adminid int auto_increment,
username varchar(40),
password varchar(30),
primary key(adminid,username));


insert into admin values(1,'admin','admin@123');











