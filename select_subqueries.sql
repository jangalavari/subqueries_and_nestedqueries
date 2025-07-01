-- 1. Scalar Subquery in SELECT
-- Show each department and the average salary of its employees.
SELECT 
    d.department_name,
    (SELECT AVG(e.salary) 
     FROM employees e 
     WHERE e.department_id = d.department_id) AS avg_salary
FROM departments d;