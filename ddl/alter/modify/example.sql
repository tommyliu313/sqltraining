ALTER TABLE employee MODIFY (salary DEFAULT 6000);

ALTER TABLE employee MODIFY (title DEFAULT 'Clerk');

ALTER TABLE employee MODIFY (salary DEFAULT NULL);

ALTER TABLE employee MODIFY (title DEFAULT NULL);

ALTER TABLE order_line RENAME COLUMN quantity TO order_quantity;