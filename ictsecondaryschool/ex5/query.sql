SELECT COUNT(*) FROM OCCUPANT
    where estate = "SKM"
    and num > 3

SELECT SUM(num) FROM OCCUPANT
    where estate ="CHE"