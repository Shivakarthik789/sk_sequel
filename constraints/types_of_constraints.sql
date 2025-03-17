/* types of constraints - constraint is used to set a specify rule that what vaues need to be stored.

not null,check ,unique, auto_increment,default,enum, float

create table student (
id int primary key auto_increment,
name varchar(255) not null,
age int(10) not null check(age>18),
phonenum bigint unique,
dob date,
address text,
gender enum("m","f"),
joining_date timestamp,
active bool default(true),
attendance_percentage float);