SELECT P.product_id, SUM(quantity), product_name
        FROM orders O, order_line OL , product P
        WHERE O.order_id = OL.order_id AND 
              P.product_id = OL.product_id AND
              order_date LIKE '%-OCT-12'
        GROUP BY P.product_id, product_name
        HAVING SUM(quantity) > 1
        ORDER BY SUM(quantity) DESC, P.product_id ASC