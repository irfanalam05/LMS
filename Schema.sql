create database lms;
use lms;

create table login(
user_id varchar(30),
password varchar(30),
primary key(user_id));
select * from login;
desc login;

create table student(
user_id varchar(30),
name varchar(30),
course varchar(30),
branch varchar(20),
semester varchar(10),
primary key(user_id));
show tables;

create table book(
user_id varchar(30) NOT NULL,
book_name varchar(35),
publisher varchar(40),
price int,
year int,
status varchar(20),
issue_date varchar(15),
due_date varchar(15),
primary key (user_id));
desc book;