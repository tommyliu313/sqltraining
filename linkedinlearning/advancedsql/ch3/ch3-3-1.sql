SELECT Adopter_Email,
       COUNT(*) AS Number_Of_Adoptions
FROM Adoptions
GROUP BY Adopter_Email
ORDER BY Number_Of_Adoptions DESC;       