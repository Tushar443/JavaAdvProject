create database rr;
show tables;
use rr;
drop table user;

select * from user;
select * from train;
select * from class_type where train_id=7;

delete from class_type where price=0;

delete from user where user_id=3;

desc train;
desc user;
desc class_type;

insert into class_type (class_name,price,train_id) values("gen",150,5);
insert into class_type (class_name,price,train_id) values("ac1",200,5);
insert into class_type (class_name,price,train_id) values("ac2",250,5);
insert into class_type (class_name,price,train_id) values("fc",350,5);
insert into class_type (class_name,price,train_id) values("slp",400,5);

insert into class_type (class_name,price,train_id) values("gen",150,6);
insert into class_type (class_name,price,train_id) values("ac1",200,6);
insert into class_type (class_name,price,train_id) values("ac2",250,6);
insert into class_type (class_name,price,train_id) values("fc",350,6);
insert into class_type (class_name,price,train_id) values("slp",400,6);




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



update class_type set price=200 where class_name="gen" and train_id=1;