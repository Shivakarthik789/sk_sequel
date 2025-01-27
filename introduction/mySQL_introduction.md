This repo is for learning MYSQL basics and advanced.
## what is my sql:
..sql-(structed querey language) it is nothing but storing data and retriving data & it is an open source (RDMS- relational data base management system) that provides
1.data storgae
2.data retrive
3.data manulpation
4.data security


##  what is DDL 
Data Definition language it describes that  to create,alter,drop,truncate,Rename- database objects.
## create
this statement is used to create new database name .
""syntax"-  CREATE DATABASE databasename;
## drop
this statement is used to delete a whole database such as tables , views , stored values will be deleted.
""syntax"- DROP DATABASE databasename;
## alter
this statement is used to add, delete,modifies the column where already data exits.
""syntax"- ALTER TABLE tablename;
## truncate 
this statementis used to delete the data but not the table, where it deletes only data of an existing table.
""syntax""-TRUNCATE TABLE tablename;
## Rename
this statement is used to rename the database (or) table name 
""syntax""-RENAME TABLE tablename TO new_table_name;

## what is DML
Data manulpation language it describes that retriving the data which  includes introducing the data into tables,altering the data,deleting the data from the table.
##commands-1. insert,2.update,delete.
## insert
this statement used to insert the fresh data into the table either column_name or table_data;
"syntax"- INSERT INTO table_name ("column_name" <datatype>,"column2_name" <datatype>) values('value1','value2');
## update
this statement is used to update the data which are already exists in the table;
""syntax"- UPDATE table_name
           SET column_name = value1
           where condition;
## delete
it is command is used to delete the data from the table, we can delete previous data also but for that we need to mention "where" condition ,by using this easily find where it is located in the table;
""syntax"-DELETE FROM table_name
          where condition;

## what is DQL
Data Querey Language it is used to select the all queries from the database or tables.
command-SELECT
## select 
this statement is used to select the query for a particular database or table to view the data ,which is stored already in existing data
"syntax"-SELECT * FROM table_name;

## what is DCL
Data Contol Language which are used to control right to access the data for operations on all like tables, coulumns,view etcc..
commands-"GRANT",REVOKE
## grant
this statement is used to grant the permission to the user for particular operation or database, it ensure the data security
## revoke
this statement is used to revoke (unpermission) to the user for a particular operation or database, it safe for not giving unauthorized to view.



