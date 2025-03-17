/*
this command for creating the employee table with columns

*/

create table table_name (
id int auto_increment primary key, -- constraints -pk,fk,default,not null,check,unique,auto_increment,enum,index
name varchar(255) not null,
encrypted_password varchar(25)not null,
address varchar(255) not null,
type char(1) not null);