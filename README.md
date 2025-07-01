# SQL Subqueries and Nested Queries Examples

## Overview

This repository contains example SQL queries demonstrating:
- Scalar and correlated subqueries
- Subqueries in `SELECT`, `WHERE`, and `FROM` clauses
- Usage of `IN`, `EXISTS`, and comparison operators with subqueries

These queries are designed for a sample HR database with `employees` and `departments` tables.

---

## Files & Descriptions

- **select_subqueries.sql**  
  Scalar subqueries in the SELECT clause.

- **where_subqueries.sql**  
  Subqueries in the WHERE clause using `IN` and correlated subqueries.

- **from_subqueries.sql**  
  Subqueries in the FROM clause for aggregating data.

- **exists_subqueries.sql**  
  Subqueries using `EXISTS` to filter data.

---

## Example Table Structures

```sql
-- Employees Table Example
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

-- Departments Table Example
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
```

---

## Usage

1. Open your SQL client (DB Browser for SQLite / MySQL Workbench).
2. Ensure your database has `employees` and `departments` tables.
3. Run the queries from the `.sql` files to see subqueries in action.
4. Modify and extend the queries as needed for your own learning or projects.

---

## Learning Outcomes

- Understand and apply scalar and correlated subqueries
- Use subqueries within `IN`, `EXISTS`, and comparison operators
- Write advanced SQL queries with nested logic

---