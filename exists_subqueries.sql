-- 5. Subquery with EXISTS
-- List departments that have at least one employee with salary over 100,000
SELECT 
    department_id, department_name
FROM departments d
WHERE EXISTS (
    SELECT 1 
    FROM employees e 
    WHERE e.department_id = d.department_id AND e.salary > 100000
);