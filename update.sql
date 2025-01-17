USE lab_mysql;

SELECT * FROM customers;

SET SQL_SAFE_UPDATES = 0;
UPDATE customers SET email = 'ppicasso@gmail.com' WHERE name = "Pablo Picasso" WHERE cust_id = 10001;
UPDATE customers SET email = 'lincoln@us.gov' WHERE name = "Abraham Lincoln" WHERE cust_id = 20001;
UPDATE customers SET email = 'hello@napoleon.me' WHERE name = "Napoléon Bonaparte" WHERE cust_id = 130001;

SELECT * FROM customers;