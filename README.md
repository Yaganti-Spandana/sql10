🛒 SQL Project: HAVING vs WHERE (Employees & Orders)
📌 Project Overview

This project is designed to help learners understand one of the most confusing SQL concepts:
HAVING vs WHERE.

Using two realistic datasets:

employees (HR use case)

orders (E-commerce use case)

you’ll learn how to filter:

Rows with WHERE

Groups with HAVING

This mirrors how SQL is used in real business scenarios.

🗂️ Datasets
1. Employees Table

Represents a company’s workforce.

Column	Type	Description
id	INT	Unique employee ID
name	VARCHAR	Employee name
department	VARCHAR	Department
salary	DECIMAL	Salary (can be NULL)
hire_date	DATE	Hiring date
2. Orders Table

Represents an e-commerce platform.

Column	Type	Description
order_id	INT	Unique order ID
customer_id	INT	Customer identifier
product_name	VARCHAR	Product ordered
price	DECIMAL	Order amount
order_date	DATE	Date of order
🏗️ Table Creation
Employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    order_date DATE
);

➕ Sample Data

The project includes realistic data such as:

Multiple departments (HR, IT, Finance, Marketing)

Customers with multiple orders

Different price ranges for meaningful aggregation

This allows you to simulate real analytics problems.

🔍 Concepts Covered
Core SQL Topics

WHERE clause

GROUP BY

HAVING clause

COUNT, SUM, AVG

Filtering before vs after aggregation

📊 Example Queries
WHERE (filters rows)
SELECT *
FROM orders
WHERE price > 100;

HAVING (filters groups)
SELECT customer_id, SUM(price)
FROM orders
GROUP BY customer_id
HAVING SUM(price) > 500;

Combined Example
SELECT department, AVG(salary)
FROM employees
WHERE salary IS NOT NULL
GROUP BY department
HAVING AVG(salary) > 60000;

🎯 Learning Outcomes

After this project, you will:

Clearly understand the difference between WHERE and HAVING

Know when each clause is used

Write real-world SQL analytics queries

Avoid one of the most common SQL interview mistakes

🚀 How to Use

Create both tables

Insert the sample data

Run WHERE queries

Run GROUP BY + HAVING queries

Compare results

📌 Ideal For

SQL learners (intermediate level)

Data analyst interview prep

Instagram / LinkedIn SQL series (Day 10)

Portfolio projects

🧠 Golden Rule (Remember This)

WHERE filters rows.
HAVING filters aggregated results.
