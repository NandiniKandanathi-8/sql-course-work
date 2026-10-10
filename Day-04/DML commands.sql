create database instagram;
use instagram;
show databases;
create table users(
userID int primary key,
username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
password varchar(20) not null,
bio text,
isverified bool default False,
createdAt datetime default current_timestamp
);

desc users;
create table posts (
postId bigint primary key,
userId int not null,
caption text,
imageurl varchar(255) not null,
likescount int default 0,
createdAt timestamp default current_timestamp,
foreign key (userId) references users(userId)
);

create table comments (
commentsId int primary key,
postId bigint not null,
userId int not null,
commentText varchar(255) not null,
createdAt datetime default current_timestamp,
foreign key (postId) references posts(postId),
foreign key (userId) references users(userId)
);

insert into users(userID,username,fullname,email,password)
value(1,'Anjana','Anjana Andurthi','anjana@gmail.com','anjana123');

insert into users(userID,username,fullname,email,password) values
(2,'Amani','Amani Bathini','amani@gmail.com','amani123'),
(3,'reena','reena','reena@gmail.com','reena123'),
(4,'sri','sriharsha','sri@gmail.com','sri123');

insert into users
value(5, 'abhi','abhinaya','abhi@gmail.com','abhi123',"python developer", True,'2026-09-12 09:41:39');

select * from users;

update users
set bio = 'coder'
where userID = 2;

update users
set isverified = True
where userID = 3;

update users
set password  = "anjana@123"
where email = 'anjana@gmail.com';

select @@sql_safe_updates;
set sql_safe_updates = 0;
update users
set isverified = True;

delete from users
where email = 'reena@gmail.com';

delete from users
where fullname = 'abhinaya';

delete from users
where isverified = 1;