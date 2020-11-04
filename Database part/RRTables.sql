create database rr;
show tables;
use rr;
drop table user;

select * from user;
select * from train;
select * from class_type;

delete from user where user_id=3;

desc train;
desc user;
desc class_type;

insert into class_type (class_name,price,train_id) values("gen",150,1);
insert into class_type (class_name,price,train_id) values("ac1",200,1);
insert into class_type (class_name,price,train_id) values("ac2",250,1);
insert into class_type (class_name,price,train_id) values("fc",350,1);
insert into class_type (class_name,price,train_id) values("slp",400,1);

create table train(
	train_id int auto_increment not null primary key,
    train_no int not null,
    train_name varchar(30),
    departs varchar(30),
    reach varchar(30),
    gen int,
    ac1 int,
    ac2 int,
    fc int,
    slp int,
    date_of_travel date
);



create table user(
	user_id int auto_increment not null primary key,
    user_name varchar(30),
    user_pass varchar(30),
    age int,
    gender varchar(10),
    train_id int,    
    foreign key(train_id) references train(train_id)
);



