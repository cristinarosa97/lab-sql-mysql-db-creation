CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    car_id INT UNSIGNED NOT NULL,
    date DATETIME NOT NULL,
    customer_id VARCHAR(25) NOT NULL,
    staff_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE customers (
    customer_id VARCHAR(25) NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Remove UNSIGNED
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number INT NOT NULL,
    address VARCHAR(50) NOT NULL, 
    city VARCHAR(30) NOT NULL, 
    country VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES invoices(customer_id)  -- Ensure types match in invoices
);

CREATE TABLE salespersons (
    staff_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES invoices(staff_id)  -- Ensure types match in invoices
);