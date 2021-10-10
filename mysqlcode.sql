/*Online Quiz Management System*/

/*Create Database*/

create database onlinequiz;

use onlinequiz;

/*CREATE STUDENT TABLE*/
Drop table if exists student;
create table student(
std_id int auto_increment,
std_name varchar(40),
email varchar(40),
std_password varchar(40),
primary key(std_id));

/*CREATE ADMIN TABLE*/
Drop table if exists admin;
create table admin(
admin_id int auto_increment,
admin_name varchar(40),
admin_password varchar(40),
primary key(admin_id));

/*CREATE EXPERT TABLE*/
Drop table if exists expert;
create table expert(
expert_id int auto_increment,
expert_name varchar(40),
expert_password varchar(40),
primary key(expert_id));

/*CREATE SUBJECT TABLE*/
Drop table if exists subject;
create table subject(
sub_id int auto_increment,
sub_name varchar(40),
primary key(sub_id));

insert into subject values(2,"JAVA");

select * from subject;

drop table subject;

/*CREATE QUESTIONS TABLE*/
Drop table if exists questions;
create table questions(
ques_id int auto_increment,
sub_id int,
ques_description varchar(100),
option1 varchar(100),
option2 varchar(100),
option3 varchar(100),
option4 varchar(100),
correct_option varchar(100),
primary key(ques_id));

/*CREATE QUIZ_RESULT table*/
Drop table if exists results;
create table results(
quiz_id int auto_increment,
std_id int,
sub_id int,
score double,
primary key(quiz_id),
foreign key(std_id) references student(std_id),
foreign key(sub_id) references subject(sub_id));

select * from subject;

insert into admin values(1,"theja","2345");

insert into student values(1,"Naveen","navi@gmail.com","1234");

insert into questions values(2,2,"Java is","Simple","Portable","OOPS","All","All");