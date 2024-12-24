CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE table cars (VIN VARCHAR(25), manufacturer VARCHAR(50), model VARCHAR(50), year INT, color VARCHAR(20));
DROP TABLE IF EXISTS customers;
CREATE table customers (customer_id VARCHAR(25), name VARCHAR(30), email VARCHAR(50), phone_number INT, address VARCHAR(50), city VARCHAR(30), country VARCHAR(50), postal_code INT);
DROP TABLE IF EXISTS salespersons;
CREATE table salespersons (staff_id VARCHAR(25), name VARCHAR(50), store_id VARCHAR(50));
DROP TABLE IF EXISTS invoices;
CREATE table invoices (invoice_number INT, car VARCHAR(25), date DATETIME, customer_id VARCHAR(25), staff_id VARCHAR(25));