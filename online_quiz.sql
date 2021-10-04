/*Online Quiz Management System*/

/*Create Database*/

create database onlinequiz;

use onlinequiz;

/*CREATE STUDENT TABLE*/
Drop table if exists student;
create table student(
stdId int auto_increment,
stdName varchar(40),
stdPassword varchar(40),
primary key(stdId));

/*CREATE ADMIN TABLE*/
Drop table if exists admin;
create table admin(
adminId int auto_increment,
adminName varchar(40),
adminPassword varchar(40),
primary key(adminId));

/*CREATE EXPERT TABLE*/
Drop table if exists expert;
create table expert(
expertId int auto_increment,
expertName varchar(40),
expertPassword varchar(40),
primary key(expertId));

/*CREATE SUBJECT TABLE*/
Drop table if exists subject;
create table subject(
subId int auto_increment,
subName varchar(40),
primary key(subId));

/*CREATE QUESTIONS TABLE*/
Drop table if exists questions;
create table questions(
subId int,
quesId int auto_increment,
quesDescription varchar(100),
option1 varchar(100),
option2 varchar(100),
option3 varchar(100),
option4 varchar(100),
correctOption varchar(100),
primary key(quesId),
foreign key(subId) references subject(subId));

/*CREATE QUIZ_RESULT table*/
Drop table if exists quiz_result;
create table quiz_result(
quizId int auto_increment,
stdId int,
subId int,
score float,
primary key(quizId),
foreign key(stdId) references student(stdId),
foreign key(subId) references subject(subId));