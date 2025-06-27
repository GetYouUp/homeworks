# lesson-8 Practice


> **Notes before doing the tasks:**
> - Tasks should be solved using **SQL Server**.
> - Case insensitivity applies.
> - Alias names do not affect the score.
> - Scoring is based on the **correct output**.
> - One correct solution is sufficient.


##  Easy-Level Tasks 
1. Using Products table, find the total number of products available in each category.

select * from products
select category, count(productname) from products
group by category


2. Using Products table, get the average price of products in the 'Electronics' category.

select category, avg(price) from products
where category='electronics'
group by category;


3. Using Customers table, list all customers from cities that start with 'L'.

select * from customers

select * from customers
 where city like 'l%'


4. Using Products table, get all product names that end with 'er'.

select * from products
where productname like '%er';


5. Using Customers table, list all customers from countries ending in 'A'.


select * from customers
where country like '%a';

6. Using Products table, show the highest price among all products.


select  max(price) from products;


7. Using Products table, label stock as 'Low Stock' if quantity < 30, else 'Sufficient'.

select *,
case 
when stockquantity>30 then 'sufficient' else 'low stock'   end as 'label stock' from products


8. Using Customers table, find the total number of customers in each country.

select country,  count(customerid) from customers
group by country

	9. Using Orders table, find the minimum and maximum quantity ordered.

	select min(quantity) as 'minimum', max(quantity) as 'maximum' from orders

---

##  Medium-Level Tasks 
10. Using Orders and Invoices tables, list customer IDs who placed orders in 2023 January to find those who did not have invoices.

select distinct o.customer_id
from orders o
left join invoices i on o.order_id = i.order_id
where o.order_date >= '2023-01-01'
  and o.order_date < '2023-02-01'
  and i.invoice_id is null;


11. Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted including duplicates.

select productname from products
union all
select productname from products_discounted

12. Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted without duplicates.

select productname from products
union 
select productname from products_discounted


13. Using Orders table, find the average order amount by year.

select * from orders

select year(orderdate),avg(quantity) from orders
group by year(orderdate)


14. Using Products table, group products based on price: 'Low' (<100), 'Mid' (100-500), 'High' (>500). Return productname and pricegroup.

select *,
case 
when price<100 then 'low'
when price between 100 and 500 then 'mid'
else 'high' end as 'pricegroup' from products


15. Using City_Population table, use Pivot to show values of Year column in seperate columns ([2012], [2013]) and
copy results to a new Population_Each_Year table.




16. Using Sales table, find total sales per product Id.

select * from sales
select productid, sum(saleamount)  as 'total' from sales
group by productid 


17. Using Products table, use wildcard to find products that contain 'oo' in the name. Return productname.

select  productname from products

where productname like '%oo%'


18. Using City_Population table, use Pivot to show values of City column in seperate columns
(Bektemir, Chilonzor, Yakkasaroy)  and copy results to a new Population_Each_City table.

select * from city_population




---
##  Hard-Level Tasks 
19. Using Invoices table, show top 3 customers with the highest total invoice amount. Return CustomerID and Totalspent.

select * from invoices

select top 3*  from invoices
order by totalamount desc


20. Transform Population_Each_Year table to its original format (City_Population).

it is applied by'rollback'

21. Using Products and Sales tables, list product names and the number of times each has been sold. (Research for Joins)

select p.productname, count(s.saleid) as times_sold
from products p
join sales s on p.productid = s.productid
group by p.productname
order by times_sold desc;


22. Transform Population_Each_City table to its original format (City_Population).

