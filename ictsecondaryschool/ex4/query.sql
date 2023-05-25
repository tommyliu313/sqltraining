SELECT dcode, COUNT(*) FROM STUDENT
    WHERE dcode = "YMT"

SELECT dcode, count(*) FROM STUDENT
    WHERE sex = "F"
    GROUP BY dcode

SELECT class, COUNT(*) FROM STUDENT
    WHERE mtest>=50
    GROUP BY class

SELECT COUNT(*) FROM STUDENT
    WHERE sex = "F"

SELECT class, COUNT(*) FROM STUDENT
    WHERE sex = "F"
    GROUP BY class

SELECT dcode, COUNT(*) FROM STUDENT
    GROUP BY dcode

SELECT name, COUNT(*) FROM STUDENT
    GROUP BY NAME

SELECT left(class, 1) AS form, avg(int((date() - dob) /365))
    FROM STUDENT
    WHERE class like "l_"
    GROUP BY form
    