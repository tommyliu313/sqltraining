CREATE TABLE Asset_Types(
    asset_type_code INT PRIMARY KEY,
    asset_type_description VARCHAR(255) NOT NULL
);

CREATE TABLE IT_Assets(
    asset_id INT PRIMARY KEY,
    asset_type_code INT,
    FOREIGN KEY (asset_type_code) REFERENCES Asset_Types
);
