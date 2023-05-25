SELECT COUNT(*) FROM OCCUPANT
    where estate = "SKM"
    and num > 3

SELECT SUM(num) FROM OCCUPANT
    where estate ="CHE"

SELECT estate, COUNT(*) FROM OCCUPANT
    GROUP BY estate
    HAVING COUNT(*) > 1000

SELECT estate, SUM(num) FROM OCCUPANT
    GROUP BY estate
    HAVING AVG(num) > 3    

SELECT block, COUNT(*) FROM OCCUPANT
    WHERE estate = "CHE"
    GROUP BY block
    HAVING COUNT(*) > 1000

SELECT block, COUNT(*) FROM OCCUPANT
    WHERE estate = "CHE"
    GROUP BY block
    HAVING avg(num) > 3

SELECT block, max(floor) FROM OCCUPANT
    WHERE estate = "CHIE"
    GROUP BY block
    HAVING max(floor) > 8