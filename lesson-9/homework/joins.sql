
## 🟢 Easy-Level Tasks (10)

🟢 Easy (10 puzzles)
1. Using Products, Suppliers table
List all combinations of product names and supplier names.

SELECT p.product_name, s.supplier_name
FROM products 
CROSS JOIN suppliers;


2. Using Departments, Employees table
Get all combinations of departments and employees.


select * from departments cross join employees 


3. Using Products, Suppliers table
List only the combinations where the supplier actually supplies the product. Return supplier name and product name

select * from products
select * from suppliers
SELECT 
    products.productname, 
    suppliers.suppliername 
FROM 
    products
INNER JOIN suppliers 
    ON products.supplierid = suppliers.supplierid;

4. Using Orders, Customers table
List customer names and their orders ID.

SELECT 
    customers.firstname, 
    orders.orderid
FROM 
    orders
INNER JOIN customers 
    ON orders.customerid = customers.customerid;


5. Using Courses, Students table
Get all combinations of students and courses.

select * from courses
cross join students


6. Using Products, Orders table
Get product names and orders where product IDs match.

select * from products
select * from orders

select products.productname, orderid from orders
inner join products on products.productid=orders.productid


7. Using Departments, Employees table
List employees whose DepartmentID matches the department.

SELECT 
    employees.name, 
    departments.departmentname
FROM 
    employees
INNER JOIN departments 
    ON employees.departmentid = departments.departmentid;


8. Using Students, Enrollments table
List student names and their enrolled course IDs.

select 
    students.name, 
    enrollments.courseid
from 
    students
inner join enrollments 
    on students.studentid = enrollments.studentid;


9. Using Payments, Orders table
List all orders that have matching payments.

select 
    orders.orderid, 
    payments.paymentid
from 
    orders
inner join payments 
    on orders.orderid = payments.orderid;


10. Using Orders, Products table
Show orders where product price is more than 100.

select 
    orders.orderid, 
    products.productname, 
    products.price
from 
    orders
inner join products 
    on orders.productid = products.productid
where 
    products.price > 100;



## 🟡 Medium (10 puzzles)
11. Using Employees, Departments table List employee names and department names where department IDs are not equal.
It means: Show all mismatched employee-department combinations.

select 
    employees.name, 
    departments.departmentname
from 
    employees
cross join departments
where 
    employees.departmentid <> departments.departmentid;




12. Using Orders, Products table Show orders where ordered quantity is greater than stock quantity.

select orders.orderid, products.productname from orders
inner join products on orders.productid = products.productid where orders.quantity > products.stock;


13. Using Customers, Sales table List customer names and product IDs where sale amount is 500 or more.

select customers.name, sales.productid from customers inner join sales on customers.customerid = sales.customerid where sales.amount >= 500;


14. Using Courses, Enrollments, Students table List student names and course names they’re enrolled in.

select students.name, courses.coursename from students inner join enrollments on students.studentid = enrollments.studentid inner join courses on enrollments.courseid = courses.courseid;


15. Using Products, Suppliers table List product and supplier names where supplier name contains “Tech”.



16. Using Orders, Payments table Show orders where payment amount is less than total amount.

select orders.orderid, orders.totalamount, payments.paymentamount from orders
inner join payments on orders.orderid = payments.orderid where payments.paymentamount < orders.totalamount;


17. Using Employees and Departments tables, get the Department Name for each employee.

select employees.name, departments.departmentname from employees
inner join departments on employees.departmentid = departments.departmentid;


18. Using Products, Categories table Show products where category is either 'Electronics' or 'Furniture'.

select products.productname, categories.categoryname from products
inner join categories on products.categoryid = categories.categoryid where categories.categoryname in ('electronics', 'furniture');


19. Using Sales, Customers table Show all sales from customers who are from 'USA'.

select sales.saleid, sales.productid, sales.amount, customers.name from sales
inner join customers on sales.customerid = customers.customerid where customers.country = 'usa';


20. Using Orders, Customers table List orders made by customers from 'Germany' and order total > 100.

select orders.orderid, orders.totalamount, customers.name from orders
inner join customers on orders.customerid = customers.customerid where customers.country = 'germany' and orders.totalamount > 100;


## 🔴 Hard (5 puzzles)(Do some research for the tasks below)
21. Using Employees table List all pairs of employees from different departments.


22. Using Payments, Orders, Products table List payment details where the paid amount is not equal to (Quantity × Product Price).

select payments.paymentid, orders.orderid, products.productname, payments.paymentamount, orders.quantity, products.price from payments
inner join orders on payments.orderid = orders.orderid inner join products on orders.productid = products.productid
where payments.paymentamount <> orders.quantity * products.price;


23. Using Students, Enrollments, Courses table Find students who are not enrolled in any course.

select students.name from students left join enrollments on students.studentid = enrollments.studentid
where enrollments.courseid is null;


24. Using Employees table List employees who are managers of someone, but their salary is less than or equal to the person they manage.


25. Using Orders, Payments, Customers table List customers who have made an order, but no payment has been recorded for it.
