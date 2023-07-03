/*URL: https://itsourcecode.com/uml/e-commerce-website-er-diagram-erd-entity-relationship-diagram/*/
CREATE TABLE Customer(
    customer_id INT(11),
    name varchar(255),
    contact_add int(11),
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
)
CREATE TABLE Categories(
    category_id int(11) NOT NULL,
    category_name varchar(30),
    category_type varchar(30)
)

CREATE TABLE Products(
    product_id int(11) NOT NULL,
    category_id int(11) NOT NULL,
    product_name varchar(255) NOT NULL
)

CREATE TABLE Shopping_Order(
    payment_id int(11) NOT NULL,
    category_id int(11) NOT NULL,
    date DATE
)