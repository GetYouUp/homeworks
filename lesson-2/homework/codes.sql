### **Basic-Level Tasks (10)**  

1. Create a table `Employees` with columns: `EmpID` INT, `Name` (VARCHAR(50)), and `Salary` (DECIMAL(10,2)).  

create table Employees(
EmpID int, Name varchar(50),Salary DECIMAL(10,2));


2. Insert three records into the `Employees` table using different INSERT INTO approaches (single-row insert and multiple-row insert).

single-row insert

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'makhmud', 5500);

multiple-row insert

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'makhmud', 5500),
(2, 'farxod', '3000'),
(3, 'Abdumalik','2900');


3. Update the `Salary` of an employee to `7000` where `EmpID = 1`.  

UPDATE Employees
SET Salary=7000
WHERE EmpID=1;


4. Delete a record from the `Employees` table where `EmpID = 2`.  

Delete Employees
WHERE EmpID = 2;


5. Give a brief definition for difference between `DELETE`, `TRUNCATE`, and `DROP`.

delete-- is used to delete specific row from table.
truncate--deleting only table's data in the row or column not row/column. After that command row or column will be empty.
drop-- delete table from database.


6. Modify the `Name` column in the `Employees` table to `VARCHAR(100)`.  

alter table employees
alter column name varchar(100); 


7. Add a new column `Department` (`VARCHAR(50)`) to the `Employees` table. 

ALTER TABLE Employees
ADD  Department varchar(50);


8. Change the data type of the `Salary` column to `FLOAT`.  

ALTER TABLE Employees
ALTER COLUMN Salary  FLOAT;


9. Create another table `Departments` with columns `DepartmentID` (INT, PRIMARY KEY) and `DepartmentName` (VARCHAR(50)).  

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));


10. Remove all records from the `Employees` table without deleting its structure.  

truncate table employees;


### **Intermediate-Level Tasks (6)**  


11. Insert five records into the `Departments` table using `INSERT INTO SELECT` method(you can write anything you want as data).  

INSERT INTO Employees (EmpID, Name, Salary)
SELECT 1, 'Mak', 25
UNION ALL
SELECT 2, 'Farxod', 30
UNION ALL
SELECT 3, 'Ali', 28
UNION ALL
SELECT 4, 'Nodir', 32
UNION ALL
SELECT 5, 'Ixlos', 26;


12. Update the `Department` of all employees where `Salary > 5000` to 'Management'.  

update Employees
set Department = 'Management'
where Salary > 5000;


13. Write a query that removes all employees but keeps the table structure intact.   

delete from employees; -- 1 case.

truncate table employees; -- 2 case.


14. Drop the `Department` column from the `Employees` table.   

alter table employees
Drop column department;


15. Rename the `Employees` table to `StaffMembers` using SQL commands. 


exec sp_rename 'Employees', 'staffmembers';


16. Write a query to completely remove the `Departments` table from the database.  

drop table departments;

---

### **Advanced-Level Tasks (9)**        

17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

create table Products (
ProductID int Primary Key, ProductName VARCHAR(50), Category VARCHAR(50), Price DECIMAL(10,2), BrandName varchar(50));  


18. Add a CHECK constraint to ensure Price is always greater than 0.

ALTER TABLE products
ADD CONSTRAINT chk_price_positive CHECK (price > 0);  


19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.

alter table products
add StockQuantity int  default 50;


20. Rename Category to ProductCategory

exec sp_rename   'products.category', 'ProductCotegory','column';


21. Insert 5 records into the Products table using standard INSERT INTO queries.

insert into products (productid, productname, productcotegory, price, brandname, stockquantity)
values (5566, 'sneakers', 'shoes', 100,'NIKE', 13);  


22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.


23. Rename the Products table to Inventory.

exec sp_rename 'products', 'Inventory';


24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

alter table inventory
alter column price float;


25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to `Inventory` table.

