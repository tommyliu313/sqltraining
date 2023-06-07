SELECT au_fname,
       au_lname,
        CASE contract
           WHEN 1 THEN 'Yes'
           ELSE 'No'
        END 'contract'
FROM authors
WHERE state = 'CA'


SELECT CASE
            WHEN ytd_sales IS NULL THEN 'Unknown'
            WHEN ytd_sales <= 200 THEN 'Not more than 2000'
            WHEN ytd_sales <= 1000 THEN 'Between 201 and 1000'
            WHEN ytd_sales <= 5000 THEN 'Between 1001 and 5000'
            WHEN ytd_sales <= 10000 THEN 'Between 5001 and 10000'
            ELSE 'Over 10000'
        END 'YTD Sales',
        COUNT(*) 'Number of Titles'
FROM titles
GROUP BY CASE
            WHEN ytd_sales IS NULL THEN 'Unknown'
            WHEN ytd_sales <= 200 THEN 'Not more than 2000'
            WHEN ytd_sales <= 1000 THEN 'Between 201 and 1000'
            WHEN ytd_sales <= 5000 THEN 'Between 1001 and 5000'
            WHEN ytd_sales <= 10000 THEN 'Between 5001 and 10000'
            ELSE 'Over 10000'
        END
ORDER BY MIN(ytd_sales)

UPDATE titles
SET price = price *
    CASE
        WHEN ytd_sales > 10000 THEN 0.95 -- 5% discount
        WHEN type = 'popular_comp' THEN 0.75 -- 25% discount
        ELSE 0.9
    END
WHERE pub_date IS NOT NULL


SELECT
    CAST(ytd_sales AS CHAR(5) || 'Copies sold of' + CAST(title AS VARCHAR(30)))
FROM titles
WHERE ytd_sales IS NOT NULL
    AND ytd_sales > 10000
ORDER BY ytd_sales DESC;    
