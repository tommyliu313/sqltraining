CREATE TABLE orders (
    order_id NUMBER(5) NOT NULL,
    order_date DATE DEFAULT SYSDATE,
    customer_id NUMBER(3) NULL,
    emp_id NUMBER(3) NULL,
    CONSTRAINT orders_pk PRIMARY KEY (order_id),
    CONSTRAINT orders_customer_id_fk FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT orders_emp_id_fk FOREIGN KEY(emp_id) REFERENCES Employee(emp_id)
)