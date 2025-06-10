
# Lesson 5: Aliases, Unions, and Conditional columns
All the Tasks should be solved using/in MSSQL-SERVER.

✅ Aliases
✅ UNION, UNION ALL, INTERSECT, EXCEPT
✅ Creating Conditional Columns with CASE and IIF
✅ Using IF, WHILE


> **Notes before doing the tasks:**
> - Tasks should be solved using **SQL Server**.
> - Case insensitivity applies.
> - Alias names do not affect the score.
> - Scoring is based on the **correct output**.
> - One correct solution is sufficient.

________________________________________

##  Easy-Level Tasks 


1. Write a query that uses an alias to rename the ProductName column as Name in the Products table.

select*from  products;  

select productid, productname as name, price,  category, stockquantity from products;


2. Write a query that uses an alias to rename the Customers table as Client for easier reference.

select*from  customers as client;


3. Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.

select productname from products
union
select productname from products_discounted;


4. Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.

select productname from products
INTERSECT
select productname from products_discounted;


5. Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.

select distinct firstname, lastname, country from customers;


6. Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.

select *, case when price>1000then'high' else  'low' end from products; 


7. Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).

select *, iif(stockquantity>100, 'yes', 'no') from products_discounted;


________________________________________

##  Medium-Level Tasks 


8. Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
   
select productname from products
union
select productname from products_discounted;


9. Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.

select * from products
except
select * from products_discounted
union
(select * from products_discounted
except
select * from products);


10. Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.


select *, iif(price>1000,'expensive', 'affordable') from products;


11. Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.


select * from employees where age<25
union
(select * from employees where salary>60000);


12. Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5

Update employees
set salary=salary*1.1
where departmentname='hr' 
or employeeid=5;


________________________________________

##  Hard-Level Tasks 


13. Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise. (From Sales table)

SELECT *,
  IIF(
    SaleAmount > 500, 'Top Tier',
    IIF(SaleAmount BETWEEN 200 AND 500, 'Mid Tier', 'Low Tier')
  )
FROM Sales;


14. Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Sales table.
15. Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. Use orders table. Result set should show  customerid, quantity and discount percentage. The discount should be applied as follows:
        1 item: 3% 
        Between 1 and 3 items : 5% 
        Otherwise: 7% 
