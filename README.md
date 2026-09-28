# E-Commerce Sales Analysis

## Project Overview

This project analyzes e-commerce sales data to understand revenue,
customer performance, product performance, and monthly sales trends.

The analysis was performed using SQL, Excel, and Power BI.

## Business Questions

The project focuses on answering the following business questions:

1. What is the total revenue?
2. How many orders were placed?
3. How many customers placed orders?
4. Which product categories generate the most revenue?
5. How does revenue change month by month?
6. Which customers generate the highest revenue?
7. What is the average order value (AOV)?
8. Which products sell the highest quantity?
9. Which products generate the highest revenue?
10. Which customers have revenue above ₹100,000?
11. Which categories have revenue above ₹300,000?
12. How does order volume change by month?
13. What is the monthly average order value?
14. Which categories sell the highest quantity?
15. How can customers be segmented based on revenue?
16. How can products be classified based on sales performance?

## Tools Used

- **MySQL Workbench** — SQL querying and data analysis
- **Microsoft Excel** — Data cleaning, analysis, formulas, PivotTables, and dashboard creation
- **Power BI** — Data modeling, DAX measures, and interactive dashboard creation
- **GitHub** — Project documentation and portfolio presentation

## Dataset

The project uses three CSV datasets:

- `customers.csv` — Customer information such as customer ID, name, city, and signup date.
- `products.csv` — Product information including product ID, product name, category, and price.
- `orders.csv` — Order-level data including order ID, customer ID, product ID, order date, and quantity.

The datasets were imported into MySQL and used for the SQL analysis, and were also used for the Excel and Power BI analysis.

## SQL Analysis

SQL was used to analyze the e-commerce data and calculate key business metrics, including:

- Total number of orders
- Number of customers who placed orders
- Total revenue
- Revenue by category
- Monthly revenue
- Top customers by revenue
- Average Order Value (AOV)
- Top products by quantity sold
- Revenue by customer
- Customers with revenue above ₹100,000
- Categories with revenue above ₹300,000
- Monthly order volume
- Monthly AOV
- Top categories by quantity sold
- Top products by revenue
- Customer revenue segmentation
- Product sales performance classification

The SQL queries are available in [Here](../SQL/ecommerce_analysis.sql.sql)


## Excel Analysis

Excel was used for data cleaning, analysis, and dashboard creation.

The analysis included:

- Data quality checks
- XLOOKUP for combining product information
- Revenue calculations
- PivotTable-based analysis
- Monthly revenue analysis
- Revenue by category
- Product and customer revenue analysis
- Monthly order volume
- Average Order Value (AOV)

The Excel workbook is available in the [Here](<../excel/E-Commerce Sales Analysis.xlsx.xlsx>)

## Power BI Dashboard

Power BI was used to build the final interactive dashboard.

The dashboard includes:

- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Total Products
- Monthly Revenue
- Revenue by Product
- Revenue by Category
- Revenue by Customer
- Monthly Order Volume

The Power BI dashboard file is available in the [Dashboard](../dashboard/ecommerce_dashboard.pbix.pbix) folder.

## Key Insights

- Total revenue generated was ₹1,965,300 across 150 orders.
- The average order value (AOV) was ₹13,102.
- Electronics was the highest-revenue category, generating ₹1,067,700.
- Furniture generated ₹358,900 in revenue, making it the second-highest revenue category.
- June recorded the highest monthly revenue at ₹320,900.
- November recorded the lowest monthly revenue at ₹62,900.
- Laptop Pro 14 was the highest-revenue product, generating ₹780,000.
- March had the highest order volume with 20 orders.
- November had the lowest order volume with 8 orders.
- Customer-level analysis was used to identify high-revenue customers and segment customers 
based on revenue.


## Dashboard Preview

### Power BI Dashboard

!![Power BI Dashboard](../screenshots/powerbi_dashboard.png.png)

### Excel Dashboard

!![Excel Dashboard](../screenshots/excel_dashboard_1.png.png)

!![Excel Dashboard](../screenshots/excel_dashboard_2.png.png)



## Project Structure

```text
ecommerce-sales-analysis/
│
├── data/
│   ├── customers.csv
│   ├── orders.csv
│   └── products.csv
│
├── sql/
│   └── ecommerce_analysis.sql
│
├── excel/
│   └── E-Commerce Sales Analysis.xlsx
│
├── dashboard/
│   └── ecommerce_dashboard.pbix
│
├── screenshots/
│   ├── powerbi_dashboard.png
│   ├── excel_dashboard_1.png
│   └── excel_dashboard_2.png
│
└── README.md  


