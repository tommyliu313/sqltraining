SELECT name, rate * hours as salary FROM payroll
    WHERE salary > 10000

SELECT avg(hours) FROM payroll
    WHERE post = "STO"

SELECT post, sum(hours) FROM payroll
    GROUP BY post

SELECT post, sum(rate* hours) FROM payroll
    GROUP BY post
    HAVING AVG(hours) > 180