SELECT title, COUNT(emp_id) AS count, SUM(salary) AS sum
FROM employee
GROUP BY title
HAVING COUNT(emp_id) > 1
ORDER BY title ASC;