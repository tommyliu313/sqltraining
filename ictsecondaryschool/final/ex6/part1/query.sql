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

SELECT class, COUNT(*) FROM stud
    GROUP BY class

SELECT MONTH(dob) as m, COUNT(*) FROM stud
    WHERE sex = "M"
    GROUP BY m

SELECT sex, COUNT(*) FROM stud
    WHERE class like "4_"
    GROUP BY sex

