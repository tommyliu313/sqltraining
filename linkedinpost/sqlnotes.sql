#https://media.licdn.com/dms/document/media/D561FAQFkXepW4feEOQ/feedshare-document-pdf-analyzed/0/1684336480519?e=1685577600&v=beta&t=h9IbzRELxWRh1J-ZEs--2sj4lNwlLjP7xuGXRzYDa-c

#CASE Statement
SELECT FirstName, LastName, Age,
CASE
   WHEN Age > 30 THEN 'Old'
   WHEN Age BETWEEN 27 AND 30 THEN 'Young'
   ELSE 'Baby'
END
