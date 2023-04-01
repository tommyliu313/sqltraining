CREATE TABLE Asset_Types(
    asset_type_code INT PRIMARY KEY,
    asset_type_description VARCHAR(255) NOT NULL
);

CREATE TABLE Employee(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    department VARCHAR(255),
    extension VARCHAR(255),
    email_address VARCHAR(255),
    other_details VARCHAR(255)
);


CREATE TABLE IT_Assets(
    asset_id INT PRIMARY KEY,
    asset_type_code INT,
    FOREIGN KEY (asset_type_code) REFERENCES Asset_Types
);

CREATE TABLE IT_Assets_Inventory(
    it_asset_inventory_id INT PRIMARY KEY,
    FOREIGN KEY (asset_id) REFERENCES IT_Assets
);