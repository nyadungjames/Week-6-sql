-- ============================================================
-- Week 6 Assignment: SQL Joins and Relationships
-- Student Name: JAMES NYADUNG THANKO
-- Course: Software Engineering
-- Date: 23/11/2026
-- Database: MySQL - classicmodels
-- ============================================================

USE classicmodels;

-- ============================================================
-- QUESTION 1: INNER JOIN - Employees and Offices
-- ============================================================
-- Task: Retrieve firstName, lastName, email, officeCode for all employees
-- Join: employees INNER JOIN offices ON officeCode
-- INNER JOIN returns only employees who have a matching office.
-- Every employee should have an office, so this returns all employees.

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o
ON
    e.officeCode = o.officeCode;

-- ============================================================
-- QUESTION 2: LEFT JOIN - Products and Product Lines
-- ============================================================
-- Task: Retrieve productName, productVendor, productLine
-- Join: products LEFT JOIN productlines ON productLine
-- LEFT JOIN returns ALL products, even if a product has no
-- matching product line description. That is why we use LEFT.

SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl
ON
    p.productLine = pl.productLine;

-- ============================================================
-- QUESTION 3: RIGHT JOIN - Customers and Orders
-- ============================================================
-- Task: Retrieve orderDate, shippedDate, status, customerNumber
-- for the first 10 orders
-- Join: customers RIGHT JOIN orders ON customerNumber
-- RIGHT JOIN returns ALL orders, even if an order has no
-- matching customer. We start from customers (left) and keep
-- all rows from orders (right).

SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o
ON
    c.customerNumber = o.customerNumber
LIMIT 10;