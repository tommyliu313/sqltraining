CREATE TABLE products (is integer primary key, data jsonb);

INSERT INTO products (id, data)
VALUES (1,
        '{"name":"Refrigerator" , 
          "type": "Kitchen Appliance",
          "dimensions":{"width": 20, "height": 100}
          }');

UPDATE products
    SET data['dimensions']['width'] = to_jsonb(25)
    WHERE id = 1;