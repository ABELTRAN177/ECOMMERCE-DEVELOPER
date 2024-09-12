-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;


-- USE DATABASE
USE ecommerce_db;

-- CREATE TABLES
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    stock INTEGER NOT NULL,
    category_id INTEGER REFERENCES category(id)
    );

CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL
);

CREATE TABLE product_tag (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(id),
    tag_id INTEGER REFERENCES tag(id),
);

