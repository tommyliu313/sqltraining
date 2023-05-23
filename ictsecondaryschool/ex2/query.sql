SELECT name, class FROM STUDENT
    WHERE name like "M%"

SELECT name, class FROM STUDENT
    WHERE name like "%a"

SELECT name, class FROM STUDENT
    WHERE NAME LIKE "__e%"

SELECT name, mtest from STUDENT
    WHERE class = "1A"
    AND mtest not in (51,61,71,81,91)

SELECT name, mtest from STUDENT
    WHERE dcode <> "HHM"
    AND sex = "F"
    HAVING LEFT(class, 1) = 1

