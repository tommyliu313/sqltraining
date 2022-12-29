SELECT emp_id, firstname, lastname, salary
FROM employee ORDER BY salary DESC;

SELECT emp_id, firstname, lastname, title, salary
FROM employee ORDER BY title ASC;

SELECT emp_id, firstname, lastname, title, salary
FROM employee ORDER BY title ASC, salary DESC;