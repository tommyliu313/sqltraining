SELECT title, COUNT(emp_id) AS count, SUM(salary) AS sum
FROM employee
GROUP BY title
ORDER BY title ASC;