
## 🟢 Easy-Level Tasks (10)


1. Define and explain the purpose of BULK INSERT in SQL Server.

bulk insert-- fast and efficient data importing method.  it is best for importing large sized data into sql tables. does not demand long time to import data.  usually csv and txt file formats are used.


2. List four file formats that can be imported into SQL Server.

1- csv
2- txt
3- excel(xls/xlsx)
4- sql


3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

create table products(
ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2));


4. Insert three records into the Products table using INSERT INTO.

insert into products 
(ProductID , ProductName , Price )
values
(1, 'nike', 100),
(2, 'adidas', 300),
(3, 'lacoste', 230);


5. Explain the difference between NULL and NOT NULL.

null-- column can be empty, used with optional data, can miss unknown values

not null-- column must have any value or data, used with required data,  not missing values.


6. Add a UNIQUE constraint to the ProductName column in the Products table.

alter table products
add unique (productname);


7. Write a comment in a SQL query explaining its purpose.

porpose of the sql is that
1-data querying.
2- DML( data manipulation language), manipulation data.
3- DCL( data controllinng language), contol data.
4- DTL( data transaction language), transaction data.
5- DDL( data definition language), giving definition to data.


8. Add CategoryID column to the Products table.

grant alter
 on products
 to public;

alter table products
add CategoryID varchar(20);


9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.

create table categories
(CategoryID  int PRIMARY KEY, CategoryName varchar(40) UNIQUE);


10. Explain the purpose of the IDENTITY column in SQL Server.

The identity column is used to automatically generate unique numbers for each row in a table.  for primary keys.


________________________________________

## 🟠 Medium-Level Tasks (10)



11. Use BULK INSERT to import data from a text file into the Products table.

bulk insert Products
from 'C:\Data\products.txt';


12. Create a FOREIGN KEY in the Products table that references the Categories table.

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);


13. Explain the differences between PRIMARY KEY and UNIQUE KEY.

primary key-- with this every values must be unique in a column. nulls not allowed. only one primary key is allowed for one table.

unique key-- with this every val;ues in a row must be unique. nulls allowed one or two times.  can be commanded  several unique keys in a table.


14. Add a CHECK constraint to the Products table ensuring Price > 0.

 alter table producrts
add constrainnt chk_price
check (price>0);


15. Modify the Products table to add a column Stock (INT, NOT NULL).

alter table products
add  stock int not null default 0;


16. Use the ISNULL function to replace NULL values in Price column with a 0.

select price, isnull(price,0) as price
from products;


17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

foreign key--is commonly used for maintaining  referential integrity of the related tables.  and ensuring that the little tables are related  to another large tables.

________________________________________

## 🔴 Hard-Level Tasks (10)



18. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

create table customers (
name varchar(29), departmentname varchar(48), age int);

insert into customers (name, departmentname,age)
values
('ali', 'IT', 23),
('santosh', 'ENGINEERINNG', 25),
('beko', ' traktorist', 14),
('ogabek', 'russkiy', 18);

alter table customers
add constraint chk_age
check (age>=18);


19. Create a table with an IDENTITY column starting at 100 and incrementing by 10.

create table ID ( ident int identity(100,10));


20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

create table  orderdetails  (ordername varchar(56), orderdate int, primary key( ordername, orderdate));


21. Explain the use of COALESCE and ISNULL functions for handling NULL values.

isnull-- isnull(A,B)   isnull returns A if it is not null, if it isn't take B. and isnull coommand can take only 2 value

coalesce-- coalesce(A,B,C,D,.....)  coalexce can take more and multiple values than 2. coalesce takes first none null in multiple row values.


22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

create table employees(empid int,  email varchar(60), primary key(empid), unique (email));


23. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

I don't know the answer of this question and also didn't ChatGpT....
