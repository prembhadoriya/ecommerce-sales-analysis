CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;

CREATE TABLE customers(
   customer_id INT PRIMARY KEY,
   customer_name VARCHAR(100),
   city VARCHAR(50),
   signup_date DATE
);

SELECT * FROM customers;



CREATE TABLE products(
   product_id INT PRIMARY KEY,
   product_name VARCHAR(100),
   category VARCHAR(50),
   price DECIMAl(10,2)
);

SELECT * FROM products;

CREATE TABLE orders(
   order_id INT PRIMARY KEY,
   customer_id INT,
   product_id INT, 
   order_date DATE,
   quantity INt,
   FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
   );
   
   
-- Q1: Total Number of Orders

SELECT COUNT(*) AS orders_count
FROM orders;

-- Q2: Number of Customers Who Placed Orders

SELECT COUNT(DISTINCT c.customer_id) AS customer_count
FROM customers AS c
INNER JOIN orders AS o
	ON c.customer_id = o.customer_id;
     
-- Q3: Total Revenue

SELECT SUM(o.quantity*p.price) AS total_revenu
FROM orders AS o 
INNER JOIN products AS p
ON o.product_id = p.product_id;

-- Q4: Revenue by Category

SELECT p.category, SUM(o.quantity * p.price) AS revenue 
FROM orders AS o
INNER JOIN products AS p
ON o.product_id = p.product_id
GROUP BY p.category;

-- Q5: Monthly Revenue

SELECT MONTH(o.order_date), SUM(o.quantity * p.price) AS revenue
FROM orders AS o
INNER JOIN products AS p 
ON o.product_id = p.product_id
GROUP BY MONTH(o.order_date);

-- Q6: Top 10 Customers by Revenue

SELECT c.customer_name, SUM(o.quantity * p.price) AS top10_revenue
FROM orders AS o
INNER JOIN products AS p
ON o.product_id = p.product_id
INNER JOIN customers AS c
ON c.customer_id = o.customer_id
GROUP BY c.customer_name 
ORDER BY top10_revenue DESC
LIMIT 10;


-- Q7: Average Order Value (AOV)

SELECT SUM(o.quantity * p.price) / COUNT(DISTINCT o.order_id) AS AOV
FROM orders AS o
INNER JOIN products AS p
   ON o.product_id = p.product_id;

-- Q8: Top 10 Best-Selling Products by Quantity

SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM orders AS o
INNER JOIN products AS p 
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- Q9: Revenue by Customer

SELECT c.customer_name, SUM(o.quantity * p.price) AS total_revenue
FROM customers AS c
INNER JOIN  orders AS o
ON c.customer_id = o.customer_id
INNER JOIN products AS p
ON p.product_id = o.product_id
GROUP BY c.customer_name;

-- Q10: Customers with Revenue Above ₹100,000

SELECT c.customer_name, SUM(o.quantity * p.price) AS total_revenue
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
INNER JOIN products AS p
ON o.product_id = p.product_id
GROUP BY c.customer_name
HAVING total_revenue > 100000;

-- Q11: Categories with Revenue Above ₹300,000

SELECT p.category, SUM(o.quantity * p.price) AS total_revenue
FROM products AS p
INNER JOIN orders AS o
ON o.product_id = p.product_id
GROUP BY p.category
HAVING total_revenue > 300000;

-- Q12: Number of Orders by Month

SELECT MONTH(o.order_date) AS Months, COUNT(o.order_id) AS orders
FROM orders AS o
GROUP BY Months;

-- Q13: Monthly Average Order Value (AOV)

SELECT MONTH(o.order_date) AS month,
       SUM(o.quantity * p.price) / COUNT(DISTINCT o.order_id) AS AOV
FROM products AS p
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY month;

-- Q14: Top Categories by Quantity Sold

SELECT p.category AS category, 
       SUM(o.quantity) AS quantity_sold
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY category
ORDER BY quantity_sold DESC
LIMIT 10;

-- Q15: Top 10 Products by Revenue

SELECT p.product_name AS products,
       SUM(o.quantity * p.price) AS revenue
FROM products AS p
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY products
ORDER BY revenue DESC
LIMIT 10;

-- Q16: Customer Revenue Segmentation

SELECT c.customer_name,
       SUM(o.quantity * p.price) AS total_revenue,
       CASE
           WHEN SUM(o.quantity * p.price) >= 100000 THEN 'High Value'
           WHEN SUM(o.quantity * p.price) >= 50000 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS customer_segment
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON p.product_id = o.product_id
GROUP BY c.customer_name;

-- Q17: Product Sales Performance Classification

SELECT p.product_name,
       SUM(o.quantity) AS total_quantity,
       CASE
           WHEN SUM(o.quantity) >= 30 THEN 'Best Seller'
           WHEN SUM(o.quantity) >= 15 THEN 'Good Seller'
           ELSE 'Low Seller'
       END AS sales_performance
FROM products AS p
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY p.product_name;







   
   
   
