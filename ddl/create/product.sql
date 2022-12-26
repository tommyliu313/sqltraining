CREATE TABLE product(
    product_id NUMBER(3) NOT NULL,
    product_name VARCHAR2(30) NOT NULL,
    product_finish VARCHAR2(30) NULL,
    unit_price NUMBER(6,2) NULL,
    on_hand NUMBER(2) NULL,
    description VARCHAR2(50) NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_id),
    CONSTRAINT product_product_finish_cc
    CHECK (product_finish IN ('Cherry', 'Natural Ash', 'White Ash',
    'Natural Maple', 'Walnut'))
);