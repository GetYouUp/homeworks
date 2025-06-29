
## 🟢 Easy-Level Tasks (7)

1. **Return**: `OrderID`, `CustomerName`, `OrderDate`  
   **Task**: Show all orders placed after 2022 along with the names of the customers who placed them.  
   **Tables Used**: `Orders`, `Customers`


   select orders.orderid, concat(customers.firstname, customers.lastname) as customername, orders.orderdate from orders
   left join customers on customers.customerid=orders.customerid
   where year(orders.orderdate)>2022;



2. **Return**: `EmployeeName`, `DepartmentName`  
   **Task**: Display the names of employees who work in either the Sales or Marketing department.  
   **Tables Used**: `Employees`, `Departments`


   select employees.name, departments.departmentname  from employees
   inner join departments on employees.departmentid=departments.departmentid
   where departments.departmentname='sales' or departments.departmentname='marketing';



3. **Return**: `DepartmentName`,  `MaxSalary`  
   **Task**: Show the highest salary for each department.  
   **Tables Used**: `Departments`, `Employees`


   select departments.departmentname, max(salary) as maxsalary from employees
   inner join departments on departments.departmentid=employees.departmentid
   group by departments.departmentname;
  


4. **Return**: `CustomerName`, `OrderID`, `OrderDate`  
   **Task**: List all customers from the USA who placed orders in the year 2023.  
   **Tables Used**: `Customers`, `Orders`


   select  concat(customers.firstname, customers.lastname) as customername, orders.orderid, orders.orderdate  from customers
   inner join orders on orders.customerid=customers.customerid
   where customers.country= 'usa' and year(orders.orderdate)=2023;
   	 


5. **Return**: `CustomerName`, `TotalOrders`  
   **Task**: Show how many orders each customer has placed.  
   **Tables Used**: `Orders` , `Customers`

   
   select  concat( customers.firstname, customers.lastname) as customername, count(orders.orderid) as totalorders from customers
   inner join orders on customers.customerid=orders.customerid
   group by  concat( customers.firstname, customers.lastname);



6. **Return**: `ProductName`, `SupplierName`  
   **Task**: Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.  
   **Tables Used**: `Products`, `Suppliers`


   select products.productname, suppliers.suppliername from products
   inner join suppliers on products.supplierid=suppliers.supplierid 
   where suppliers.suppliername='gadget supplies' or suppliers.suppliername='clothing mart';



7. **Return**: `CustomerName`, `MostRecentOrderDate`  
   **Task**: For each customer, show their most recent order. Include customers who haven't placed any orders.  
   **Tables Used**: `Customers`, `Orders`


   select concat(customers.firstname, customers.lastname) as customername, orders.orderdate  as mostrecentorderdate from customers
   left join orders on customers.customerid=orders.customerid
   order by year(orders.orderdate) desc;

---

## 🟠 Medium-Level Tasks (6)

8. **Return**: `CustomerName`,  `OrderTotal`  
   **Task**: Show the customers who have placed an order where the total amount is greater than 500.  
   **Tables Used**: `Orders`, `Customers`


   select concat(customers.firstname, customers.lastname) as customername, count(orders.totalamount) as ordertotal from orders
   inner join customers on customers.customerid=orders.customerid
   where orders.totalamount>500
   group by customers.firstname, customers.lastname;




9. **Return**: `ProductName`, `SaleDate`, `SaleAmount`  
   **Task**: List product sales where the sale was made in 2022 or the sale amount exceeded 400.  
   **Tables Used**: `Products`, `Sales`


   select products.productname, sales.saledate, sales.saleamount from products
   inner join sales on products.productid=sales.productid
   where year(sales.saledate)=2022 or sales.saleamount>400;



10. **Return**: `ProductName`, `TotalSalesAmount`  
    **Task**: Display each product along with the total amount it has been sold for.  
    **Tables Used**: `Sales`, `Products`


	select products.productname, sum(sales.saleamount) as totalsaleamount from products
	inner join sales on products.productid=sales.productid
	group by products.productname;


11. **Return**: `EmployeeName`, `DepartmentName`, `Salary`  
    **Task**: Show the employees who work in the HR department and earn a salary greater than 60000.  
    **Tables Used**: `Employees`, `Departments`


	select employees.name as employeename, departments.departmentname, employees.salary from employees
	inner join departments on employees.departmentid=departments.departmentid
	where departments.departmentname='hr' and employees.salary>60000;



12. **Return**: `ProductName`, `SaleDate`, `StockQuantity`  
    **Task**: List the products that were sold in 2023 and had more than 100 units in stock at the time.  
    **Tables Used**: `Products`, `Sales`


	select products.productname,  sales.saledate, products.stockquantity from sales
	inner join products on sales.productid=products.productid
	where year(sales.saledate)=2023 and products.stockquantity>100;



13. **Return**: `EmployeeName`, `DepartmentName`, `HireDate`  
    **Task**: Show employees who either work in the Sales department or were hired after 2020.  
    **Tables Used**: `Employees`, `Departments`


	select employees.name as employename, departments.departmentname, employees.hiredate from employees
	inner join  departments on employees.departmentid=departments.departmentid
	where departments.departmentname='sales' or year(employees.hiredate)>2020;

---

## 🔴 Hard-Level Tasks (7)



14. **Return**: `CustomerName`, `OrderID`, `Address`, `OrderDate`  
    **Task**: List all orders made by customers in the USA whose address starts with 4 digits.  
    **Tables Used**: `Customers`, `Orders`


	select concat(customers.firstname, customers.lastname) as customername, orders.orderid, customers.address, orders.orderdate
	from customers
	inner join orders on customers.customerid=orders.customerid
	where customers.country= 'usa' and customers.address like '[0-9][0-9][0-9][0-9]%';
	   


15. **Return**: `ProductName`, `Category`, `SaleAmount`  
    **Task**: Display product sales for items in the Electronics category or where the sale amount exceeded 350.  
    **Tables Used**: `Products`, `Sales`


	----There is no category name  as 'electronics' in the column 'category'

	So, answer is that:

	select products.productname,  products.category,  sales.saleamount from products
	inner join sales on products.productid=sales.productid
	where sales.saleamount>350;



16. **Return**: `CategoryName`, `ProductCount`  
    **Task**: Show the number of products available in each category.  
    **Tables Used**: `Products`, `Categories`


	select categories.categoryname, count(products.productid) as productcount from products
	inner join categories on products.category=categories.categoryid
	group by categories.categoryname;



17. **Return**: `CustomerName`, `City`, `OrderID`, `Amount`  
    **Task**: List orders where the customer is from Los Angeles and the order amount is greater than 300.  
    **Tables Used**: `Customers`, `Orders`


	select concat(customers.firstname, customers.lastname) as customername, customers.city, orders.orderid, orders.totalamount as amount from customers
	inner join orders on customers.customerid=orders.customerid
	where customers.city= 'los angeles' and orders.totalamount>300;


18. **Return**: `EmployeeName`, `DepartmentName`  
    **Task**: Display employees who are in the HR or Finance department, or whose name contains at least 4 vowels.  
    **Tables Used**: `Employees`, `Departments`


	select * from employees
	select * from  departments
	select employees.name as employeename,  departments.departmentname from employees
	inner join  departments on employees.departmentid=departments.departmentid 
	where departments.departmentname ='hr' or departments.departmentname= 'finance' 
	or 
	employees.name like '%a%'
	or
    employees.name like '%e%'
	or
	employees.name like '%i%'
	or
	employees.name like '%o%'
	or
	employees.name like '%u%'
	or
	employees.name like '%A%'
    or
	employees.name like '%E%'
	or
	employees.name like '%I%'
	or
	employees.name like '%O%'
	or
	employees.name like '%U%';



19. **Return**: `EmployeeName`, `DepartmentName`, `Salary`  
    **Task**: Show employees who are in the Sales or Marketing department and have a salary above 60000.  
    **Tables Used**: `Employees`, `Departments`


	select employees.name as employename, departments.departmentname, employees.salary from  employees
	inner join departments on departments.departmentid=employees.departmentid
	where (departments.departmentname= 'sales' or departments.departmentname='marketing') and employees.salary>60000;
