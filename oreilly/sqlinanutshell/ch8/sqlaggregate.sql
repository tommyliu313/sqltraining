SELECT type, AVG(ytd_sales) AS avg_std_sales
FROM titles
GROUP BY type;

SELECT type, SUM(ytd_sales)
FROM titles
GROUP BY type;

SELECT stor_id, ord_date, SUM(qty)
OVER (PARTITION BY stor-id ORDER BY ord_date) AS num_sold
FROM Sales
ORDER BY stor_id, ord_date;

SELECT pub_id, ARRAY_AGG(DISTINCT type ORDER BY type) AS atypes
FROM titles
GROUP BY pub_id
ORDER BY pub_id;