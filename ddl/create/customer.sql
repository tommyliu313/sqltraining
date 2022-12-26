CREATE TABLE customer (
    customer_id NUMBER(3) NOT NULL,
    customer_name VARCHAR2(30) NOT NULL,
    customer_address VARCHAR2(30) NOT NULL,
    city VARCHAR2(15) NULL,
    state CHAR(2) NULL,
    postal_code NUMBER(6) NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);