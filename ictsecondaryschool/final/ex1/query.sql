SELECT name FROM STUDENT
    WHERE class = "2A"

SELECT name, class FROM STUDENT
    WHERE hcode = "P"
    AND sex = "M"

SELECT name, mtest FROM STUDENT
    WHERE sex = "F"
    AND class = "3B"

SELECT name, dcode from STUDENT
    WHERE hcode = "B"

SELECT name from STUDENT
    WHERE dcode = "LOF"
    AND hcode = "R"
    AND sex = "M"

SELECT name from STUDENT
    WHERE class = "2A"
    AND dow(dob) = 2
    AND sex = "M"

SELECT name, month(dob) from STUDENT
    WHERE class = "2B"
    AND sex = "F"

