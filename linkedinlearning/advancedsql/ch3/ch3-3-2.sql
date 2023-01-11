SELECT Adopter_Email,
       COUNT(*) AS Number_Of_Adoptions
FROM Adoptions
GROUP BY Adopter_Email
HAVING COUNT(*) > 1
ORDER BY Number_Of_Adoptions DESC;