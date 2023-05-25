SELECT COUNT(Class)  FROM Student
    ORDER BY Class;

SELECT MIN(Class) FROM Student
    GROUP BY Class;

SELECT COUNT(*) FROM Student
    WHERE Post = 'Prefect'
    GROUP BY Event;