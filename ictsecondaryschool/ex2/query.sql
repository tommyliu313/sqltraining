SELECT name, class FROM STUDENT
    WHERE name like "M%"

SELECT name, class FROM STUDENT
    WHERE name like "%a"

SELECT name, class FROM STUDENT
    WHERE NAME LIKE "__e%"

SELECT name, class FROM STUDENT
    WHERE name like "S%e"

SELECT name, class FROM STUDENT
    WHERE name like "T%"
    AND name not like "%y%"

SELECT name, mtest from STUDENT
    WHERE class = "1A"
    AND mtest BETWEEN 60 AND 70

SELECT name, mtest from STUDENT
    WHERE class = "1A"
    AND mtest not in (51,61,71,81,91)


SELECT name FROM STUDENT
    WHERE sex = "F"
    AND class like "l_"
    AND dcode <> "HHM"

