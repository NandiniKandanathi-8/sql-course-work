create database InstagramDB;
use InstagramDB;
show databases;
create table Users(
user_id int primary key,
user_name varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
password varchar(20) not null,
bio text,
is_verified boolean default false,
createdat datetime default current_timestamp
 );
desc Users;

select * from users;

alter table Users
add column phonenumber varchar(15);

alter table Users
modify column fullname varchar(150);

alter table users
change column bio biography text;

alter table users
drop column phonenumber;

alter table Users
rename to UserInfo;

desc UserInfo;

truncate table UserInfo;

Drop table UserInfo;
