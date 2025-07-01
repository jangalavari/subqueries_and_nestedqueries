-- 4. Subquery in FROM
-- List departments with their employee count and average salary, using a subquery in FROM
SELECT 
    d.department_name, 
    stats.emp_count, 
    stats.avg_salary
FROM departments d
JOIN (
    SELECT 
        department_id, 
        COUNT(*) AS emp_count, 
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) stats ON d.department_id = stats.department_id;