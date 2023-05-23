SELECT * FROM stud
    WHERE sex = "m"
    ORDER BY class, classno

SELECT name, classno, class FROM stud
    WHERE NAME LIKE '%Cheung%'
    AND sex ="F"

SELECT * FROM stud
    WHERE month(dob) = month(date())
    to printer
  
SELECT COUNT(class) FROM stud
