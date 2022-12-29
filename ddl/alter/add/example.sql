ALTER TABLE t ADD column;
ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY (product_id);

ALTER TABLE orders ADD CONSTRAINT orders_emp_id_fk FOREIGN KEY (emp_id)
REFERENCES employee(emp_id);

ALTER TABLE product ADD CONSTRAINT product_unit_price_cc CHECK(unit_price BETWEEN 20 AND 999);

ALTER TABLE product DROP CONSTRAINT product_unit_price_cc;