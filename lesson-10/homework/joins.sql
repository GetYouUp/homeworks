
## 🟢 **Easy-Level Tasks (10)**

1. **Using the `Employees` and `Departments` tables**, write a query to return the names and salaries of employees whose salary is greater than 50000, 
along with their department names.  
   🔁 *Expected Columns:* `EmployeeName`, `Salary`, `DepartmentName`


   select  employees.name, employees.salary, departmentname from departments inner join employees on  employees.departmentid=departments.departmentid;


2. **Using the `Customers` and `Orders` tables**, write a query to display customer names and order dates for orders placed in the year 2023.  
   🔁 *Expected Columns:* `FirstName`, `LastName`, `OrderDate`


   select customers.firstname, customers.lastname, orderdate from orders
   inner join customers on customers.customerid=orders.customerid
   where year(orders.orderdate)=2023
   order  by year(orders.orderdate);


3. **Using the `Employees` and `Departments` tables**, write a query to show all employees along with their department names. 
Include employees who do not belong to any department.  
   🔁 *Expected Columns:* `EmployeeName`, `DepartmentName`  


   select employees.name as employeename, departments.departmentname as departmentname from employees
   left join departments on employees.departmentid = departments.departmentid;


4. **Using the `Products` and `Suppliers` tables**, write a query to list all suppliers and the products they supply.
Show suppliers even if they don’t supply any product.  
   🔁 *Expected Columns:* `SupplierName`, `ProductName`
   

   select suppliers.suppliername as 'suppliername', products.productname as ' productname' from suppliers
   left join products on suppliers.supplierid=products.supplierid;


5. **Using the `Orders` and `Payments` tables**, write a query to return all orders and their corresponding payments. Include orders without payments and payments not linked to any order.  
   🔁 *Expected Columns:* `OrderID`, `OrderDate`, `PaymentDate`, `Amount`

select orders.orderid, orders.orderdate, payments.paymentdate, payments.amount 
from orders 
full outer join payments on orders.orderid = payments.orderid;


6. **Using the `Employees` table**, write a query to show each employee's name along with the name of their manager.  
   🔁 *Expected Columns:* `EmployeeName`, `ManagerName`


select e.name as employeename, m.name as managername 
from employees e 
left join employees m on e.managerid = m.employeeid;


7. **Using the `Students`, `Courses`, and `Enrollments` tables**,
write a query to list the names of students who are enrolled in the course named 'Math 101'.  
   🔁 *Expected Columns:* `StudentName`, `CourseName`


select s.name, c.coursename 
from students s
inner join enrollments e on s.studentid = e.studentid
inner join courses c on e.courseid = c.courseid
where c.coursename = 'math 101';


8. **Using the `Customers` and `Orders` tables**, write a query to find customers who have placed an order with more than 3 items. 
Return their name and the quantity they ordered.  
   🔁 *Expected Columns:* `FirstName`, `LastName`, `Quantity`


   select customers.firstname, customers.lastname, orders.quantity from customers
   inner join orders on customers.customerid=orders.customerid
   where quantity>3;



9. **Using the `Employees` and `Departments` tables**, write a query to list employees working in the 'Human Resources' department.  
   🔁 *Expected Columns:* `EmployeeName`, `DepartmentName`  


   select employees.name, departments.departmentname from employees
   inner join  departments on employees.departmentid= departments.departmentid
   where departmentname= 'human resources';

---

## 🟠 **Medium-Level Tasks (9)**

10. **Using the `Employees` and `Departments` tables**, write a query to return department names that have more than 5 employees.  
   🔁 *Expected Columns:* `DepartmentName`, `EmployeeCount`

select departments.departmentname, count(employees.departmentid) as 'employeecount' from departments
inner join employees on departments.departmentid=employees.departmentid
group by departments.departmentname
having count(employees.departmentid)>5;


11. **Using the `Products` and `Sales` tables**, write a query to find products that have never been sold.  
   🔁 *Expected Columns:* `ProductID`, `ProductName`


   select products.productid, products.productname from products 
   left join sales on products.productid = sales.productid where sales.productid is null;



12. **Using the `Customers` and `Orders` tables**, write a query to return customer names who have placed at least one order.  
   🔁 *Expected Columns:* `FirstName`, `LastName`, `TotalOrders`

      
   select customers.firstname, customers.lastname, count(orders.quantity) as 'totalorders' from customers
   inner join orders on customers.customerid=orders.customerid 
   group by customers.firstname, customers.lastname;


13. **Using the `Employees` and `Departments` tables**, write a query to show only those records where both employee and department exist (no NULLs).  
   🔁 *Expected Columns:* `EmployeeName`, `DepartmentName`  


   select employees.name, departments.departmentname from employees
   inner join departments on employees.departmentid=departments.departmentid;
  

14. **Using the `Employees` table**, write a query to find pairs of employees who report to the same manager.  
   🔁 *Expected Columns:* `Employee1`, `Employee2`, `ManagerID`


   select e1.name as employee1, e2.name as employee2, e1.managerid from employees e1
   inner join employees e2 on e1.managerid = e2.managerid and e1.employeeid < e2.employeeid where e1.managerid is not null;


15. **Using the `Orders` and `Customers` tables**, write a query to list all orders placed in 2022 along with the customer name.  
   🔁 *Expected Columns:* `OrderID`, `OrderDate`, `FirstName`, `LastName`

   select orders.orderid, orders.orderdate, customers.firstname, customers.lastname, year(orders.orderdate) from orders
   inner join customers on orders.customerid=customers.customerid
   where year(orders.orderdate)=2022;


16. **Using the `Employees` and `Departments` tables**, write a query to return employees from the 'Sales' department whose salary is above 60000.  
   🔁 *Expected Columns:* `EmployeeName`, `Salary`, `DepartmentName`

   select employees.name, employees.salary, departments.departmentname from employees
   inner join departments on employees.departmentid=departments.departmentid
   where employees.salary>60000;

17. **Using the `Orders` and `Payments` tables**, write a query to return only those orders that have a corresponding payment.  
   🔁 *Expected Columns:* `OrderID`, `OrderDate`, `PaymentDate`, `Amount`


   select orders.orderid, orders.orderdate, payments.paymentdate, payments.amount from orders
   inner join payments on orders.orderid=payments.orderid;


18. **Using the `Products` and `Orders` tables**, write a query to find products that were never ordered.  
   🔁 *Expected Columns:* `ProductID`, `ProductName`

   
   select products.productid, products.productname from products
   left join orders on products.productid=orders.productid
   where orders.productid is null;
---

## 🔴 **Hard-Level Tasks (9)**

19. **Using the `Employees` table**, write a query to find employees whose salary is greater than the average salary in their own departments.  
   🔁 *Expected Columns:* `EmployeeName`, `Salary`


   select e.name as employeename, e.salary from employees e 
   where e.salary > (select avg(salary)  from employees 
    where departmentid = e.departmentid;



20. **Using the `Orders` and `Payments` tables**, write a query to list all orders placed before 2020 that have no corresponding payment.  
   🔁 *Expected Columns:* `OrderID`, `OrderDate`

   select orders.orderid, orders.orderdate from orders 
   left join payments on orders.orderid = payments.orderid where payments.orderid is null and year(orders.orderdate) < 2020;


21. **Using the `Products` and `Categories` tables**, write a query to return products that do not have a matching category.  
   🔁 *Expected Columns:* `ProductID`, `ProductName`

   select products.productid, products.productname from products
   left join categories on products.category=categories.categoryname
   where categories.categoryid is null;


22. **Using the `Employees` table**, write a query to find employees who report to the same manager and earn more than 60000.  
   🔁 *Expected Columns:* `Employee1`, `Employee2`, `ManagerID`, `Salary`



   select e1.name as employee1, e2.name as employee2, e1.managerid, e1.salary as salary1, e2.salary as salary2 from employees e1
   inner join employees e2 on e1.managerid = e2.managerid and e1.employeeid < e2.employeeid where e1.managerid is not null and e1.salary > 60000 and e2.salary > 60000;



23. **Using the `Employees` and `Departments` tables**, write a query to return employees who work in departments which name starts with the letter 'M'.  
   🔁 *Expected Columns:* `EmployeeName`, `DepartmentName`

   
   select employees.name, departments.departmentname from employees
   inner join departments on employees.departmentid=departments.departmentid
   where departments.departmentname like 'm%';


24. **Using the `Products` and `Sales` tables**, write a query to list sales where the amount is greater than 500, including product names.  
   🔁 *Expected Columns:* `SaleID`, `ProductName`, `SaleAmount`


   select sales.saleid, products.productname, sales.saleamount from products
   inner join sales on products.productid=sales.productid
   where sales.saleamount>500;



25. **Using the `Students`, `Courses`, and `Enrollments` tables**, write a query to find students who have **not** enrolled in the course 'Math 101'.  
   🔁 *Expected Columns:* `StudentID`, `StudentName`

   select distinct students.studentid, students.name 
from students 
left join enrollments on students.studentid = enrollments.studentid 
left join courses on enrollments.courseid = courses.courseid 
where courses.coursename is null or courses.coursename <> 'math 101';


26. **Using the `Orders` and `Payments` tables**, write a query to return orders that are missing payment details.  
   🔁 *Expected Columns:* `OrderID`, `OrderDate`, `PaymentID`


   select orders.orderid,  orders.orderdate, payments.paymentid from orders
   left join payments on orders.orderid=payments.orderid
   where payments.paymentid is null;


27. **Using the `Products` and `Categories` tables**, write a query to list products that belong to either the 'Electronics' or 'Furniture' category.  
   🔁 *Expected Columns:* `ProductID`, `ProductName`, `CategoryName`


   select  products.productid, products.productname, categories.categoryname from products
   inner join categories on products.category=categories.categoryname
   where products.category= 'electronics' or products.category= 'furniture';
