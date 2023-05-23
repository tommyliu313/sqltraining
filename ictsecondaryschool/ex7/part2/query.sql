SELECT * FROM Sports
    WHERE LEFT(Class, 1) = "1"
    ORDER BY Class;

SELECT COUNT(*) FROM Sports
    WHERE LEFT(Class, 1) = "1"
    GROUP BY Class;

SELECT Event FROM Sports
    GROUP BY Event;

SELECT DISTINCT Event FROM Events    