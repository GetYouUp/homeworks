## Easy
1. Define the following terms: data, database, relational database, and table.

data-- is a source of information that we can update, change and use when we need. That means  data is raw and unfinished information sorce For example: words, dates, numbers and etc. And data may contains from stuructured and unstructured innformations  

database-- is also information source but there is a difference with data that, database is STRURCTURED information source and it is controlled via SQL Server Management Studio.

relational database-- is several database which are they have some KEY characteristics that related to each others. (example: 2 Manufacturing company in different countries have similar sales rate) 

table-- is a sturucture IN the database that means Databse may contains tables and there are informationn in the table( name, surname,age, salary, cost...)

2. List five key features of SQL Server.

SQL Server key features--  With the SQL Server we can work BIG  database and we can do these; 
1- Creating  database 
2- Update, change data in the database.
3- Control that data.
4- Save big sized data.
5- Analyzing data.

3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)

1- Windows authentication-- managed by windows and no need username and password to log in.
2- SQL Server authentication-- managed by sql server and need username and password to log in.

## Medium
4. Create a new database in SSMS named SchoolDB.

create database SchoolDB  --Commands completed successfully. Completion time: 2025-06-08T19:04:26.3693118+09:00

5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

create table students(
studentid int primary key, name varchar(50),age int); -- (50) means maximum number of characters that we can write that column.

6. Describe the differences between SQL Server, SSMS, and SQL.

SQL Server--  we can control and save database

SSMS-- (SQL Server Mnagement Studio). We can work with database which is saved in SQL Server. In other words SSMS is a kind of App to work with database.

SQL-- Structured Query Language. It is a specific language that can be used to work with data. by this language we update the data.
examples:  
a) create database SchoolDB.

b) create table students(
studentid int primary key, name varchar(50),age int);



## Hard
7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.

DQL--Data Query Language is used to see data. (select)

DML-- Data Manipulation Language is used to  change data information.

insert-- is used to add information.
delete-- is used to delete innformation.
update-- is used to change information.

DDL-- Data Definition Language is used to update database(table, scheme) and  there are some commands of that;

create-- creating  database object (like table)
drop-- deleting database object's elements( table or table row/column)
alter-- changing table's information
truncate--deleting only table's data in the row or column not row/column. After that command row or column will be empty.

DCL-- Data Control Language is mainly used when severel people work on one project.

grant-- giving acces to do  some special commands (add information, update innformation)
revoke-- revoking permisson to user. that is opposite command to above mentioned example.


TCL-- Transaction  Control Language is a set of commands and we use it when we one unit of project.
begin transaction-- changing table information
rollback transaction-- returning to unchanged form of the data if we do mistake
commit transaction-- accept to change and SAVE part of data after transactions. AFTER COMMIT TRANSACTION WE CAN NOT RECOVER THE PREVIOUS DATA. 

8. Write a query to insert three records into the Students table.

 create table students(
studentID int primary key, Name varchar(50),Age int);

select* from students;

insert into students (studentID, Name,Age)
values
(1, 'makhmud','14'),
(2, 'farxod', '21'),
(3, 'ali', '4');
select* from students;
 

9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit)
   You can find the database from this link :`https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak`

  1- press right button on DATABASES in SSMS an select new databse
  2- give name
  3- press right button on the new named folder in database row
  4- select tasks
  5- select import data
  6- press next
  7- select data source  -- microsoft exel/flat file source
  8- select file format  -- csv/bak/txt.....
  9- choose file
  10-select destination
  11- press nexr and finish.
