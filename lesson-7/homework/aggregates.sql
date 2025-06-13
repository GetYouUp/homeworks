
# 🟢 Easy-Level Tasks (10)


1. Write a query to find the minimum (MIN) price of a product in the Products table.

select * from products;

select productname,price  from products
where  price=(select  min(price) from products);

2. Write a query to find the maximum (MAX) Salary from the Employees table.

select * from employees;

select departmentname, salary from employees
where salary= (select max(salary)  from  employees);


3. Write a query to count the number of rows in the Customers table.

select * from customers;

select count(*) as rows  from customers;


4. Write a query to count the number of unique product categories from the Products table.

select  count(distinct category) from products;


5. Write a query to find the total sales amount for the product with id 7 in the Sales table.

select * from sales;

select  productid, sum(saleamount) as 'total sale' from sales
where  productid = 7 
group by productid;


6. Write a query to calculate the average age of employees in the Employees table.

select * from employees;

select avg(age) as 'average age' from employees ;


7. Write a query to count the number of employees in each department.

select departmentname, count(*) as 'staff number' from employees
group by departmentname;


8. Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.

select * from products;

select category, max(price) as 'maximum price', min(price) as 'minimum price' from products
group by category;


9. Write a query to calculate the total sales per Customer in the Sales table.

select * from sales;

select customerid,  sum(saleamount) as 'total sales' from sales
group by  customerid;


10. Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName).

select * from employees;

select departmentname, count(*) as 'Quantity of members' from employees
group by departmentname
having count(*) > 5;

---

# 🟠 Medium-Level Tasks (9)



11. Write a query to calculate the total sales and average sales for each product category from the Sales table.

select * from sales;

select productid,  sum(saleamount) as 'SSUM', avg(saleamount) as 'Aerage'  from sales
group by productid;


12. Write a query to count the number of employees from the Department HR.

select * from employees;

select departmentname,  count(*) as 'number of staff'  from employees
group by departmentname
having departmentname='HR';


13. Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).

select departmentname, max(salary) as ' maximum', min(salary) as 'minimum' from employees
group by departmentname;


14. Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).

select * from employees;

select departmentname,  avg(salary) as 'average salary' from employees
group  by departmentname;


15. Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).

select departmentname, avg(salary) as  'average salary', count(*) as 'number of staff' from employees
group by departmentname;


16. Write a query to filter product categories with an average price greater than 400.

select * from products;

select category, avg(price) as'average price' from products
group by category
having  avg(price)>400;


17. Write a query that calculates the total sales for each year in the Sales table.

select * from sales;

1-answer:  with exact product ID

select productid, year(saledate) as 'sale date', sum(saleamount) as ' total sale' from sales
group by productid, year(saledate)
order by year(saledate);

2- answer: Just by year

select year( saledate) as 'saledate', sum(saleamount) as 'total sale' from sales  
group by year(saledate)
order by year(saledate);


18. Write a query to show the list of customers who placed at least 3 orders.

select * from sales;

select customerid, count( customerid)  from sales
group by customerid
having count( customerid)>=3;


19. Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you don't have DeptName).

select * from employees;

select departmentname, avg(salary) as 'average salary' from employees
group by departmentname
having avg(salary)>60000;


---

# 🔴 Hard-Level Tasks (6)


20. Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.

select * from products;

select category, avg(price) as 'average price' from products
group by category
having avg(price)>150;


21. Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.

select * from sales;

select customerid, sum(saleamount) as 'total sales' from sales
group by customerid
having  sum(saleamount)>1500;


22. Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.

select * from employees;

select departmentname, sum(salary) as 'total salary', avg(salary) as 'average salary' from employees
group by departmentname
having avg(salary)>65000;


23. Write a query to find total amount for the orders which weights more than $50 for each customer along with their least purchases.(least amount might be lower than 50, use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).

 select * from  [TSQL2012 7-dars uchun].[Sales].[Orders]

select custid, sum(case when freight > 50 then freight else 0 end) as total_over_50,  min(freight) as least_purchase from [tsql2012 7-dars uchun].[sales].[orders]
group by custid;


25. Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)

select 
 year(orderdate) as orderyear,
 month(orderdate) as ordermonth,
 sum(totalamount) as totalsales,
 count(distinct productid) as uniqueproductssold  from orders  
group by  year(orderdate),
 month(orderdate)
having count(distinct productid) >= 2
order by  orderyear, ordermonth;


26. Write a query to find the MIN and MAX order quantity per Year. From orders table.

select * from orders;   

select  year(orderdate) as 'order year', max(quantity) as'maximum sale', min(quantity) as'minimum' from orders
group by year(orderdate);
