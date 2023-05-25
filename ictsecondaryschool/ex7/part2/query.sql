SELECT * FROM Sports
    WHERE LEFT(class, 1) = "1"
    ORDER BY class;

SELECT COUNT(*) FROM Sports
    WHERE LEFT(class, 1) = "1"
    GROUP BY class;

SELECT event FROM Sports
    GROUP BY event;

SELECT DISTINCT event FROM Sports