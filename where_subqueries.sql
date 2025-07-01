-- 2. Subquery in WHERE using IN
-- List employees who work in departments located in 'New York'
SELECT 
    employee_id, first_name, last_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE location = 'New York'
);

-- 3. Correlated Subquery in WHERE
-- Find employees who earn more than the average salary in their department
SELECT 
    employee_id, first_name, last_name, salary, department_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = e.department_id
);