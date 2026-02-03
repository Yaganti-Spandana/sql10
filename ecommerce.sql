CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    order_date DATE
);
INSERT INTO orders (order_id, customer_id, product_name, price, order_date) VALUES
(101, 1, 'Laptop', 900, '2024-01-05'),
(102, 1, 'Mouse', 50, '2024-01-10'),
(103, 2, 'Phone', 700, '2024-01-07'),
(104, 2, 'Headphones', 120, '2024-01-12'),
(105, 3, 'Monitor', 300, '2024-01-15'),
(106, 3, 'Keyboard', 80, '2024-01-18'),
(107, 4, 'Tablet', 400, '2024-01-20'),
(108, 4, 'Charger', 40, '2024-01-22'),
(109, 5, 'Camera', 600, '2024-01-25'),
(110, 5, 'Tripod', 90, '2024-01-28');


SELECT * FROM orders
WHERE price > 100;

SELECT customer_id, SUM(price)
FROM orders
GROUP BY customer_id
HAVING SUM(price) > 500;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);
INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, 'Alice Johnson', 'HR', 55000, '2021-03-15'),
(2, 'Bob Smith', 'IT', 75000, '2020-07-01'),
(3, 'Carol Lee', 'Finance', 68000, '2019-11-20'),
(4, 'David Brown', 'IT', 82000, '2018-05-10'),
(5, 'Eva Green', 'HR', 50000, '2022-01-25'),
(6, 'Frank White', 'Marketing', 60000, '2021-09-05'),
(7, 'Grace Kim', 'Finance', 72000, '2020-02-14'),
(8, 'Henry Adams', 'Marketing', NULL, '2023-06-01');
SELECT * FROM EMPLOYEES
SELECT department, COUNT(*)
FROM employees
WHERE COUNT(*) > 5
GROUP BY department;

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;