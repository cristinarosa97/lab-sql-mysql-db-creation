USE lab_mysql;

ALTER TABLE cars ADD ID INT;

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
    
ALTER TABLE customers
MODIFY COLUMN phone_number VARCHAR(20);
    
INSERT INTO customers (customer_id, name, email, phone_number, address, city, country, postal_code)
VALUES (10001, "Pablo Picasso", "-", 34636176382, "Paseo de la Chopera, 14",	"Madrid",	"Spain",	28045),
(20001,	"Abraham Lincoln","-",	13059077086, 	"120 SW 8th St",	"Miami", "United States",	33130),
(30001, "Napoléon Bonaparte","-",	33179754000, "40 Rue du Colisée",	"Paris", "France",	75008);

INSERT INTO invoices (invoice_number, date, car_id, customer_id, staff_id)
VALUES (852399038,	'2018-08-22',	1,	1,	3),
		(731166526,	'2018-12-31',	3,	3,	5),
        (271135104,	'2019-01-22',	2,	2,	7);
        
INSERT INTO salespersons (staff_id, name, store_id)
VALUES (00001,	"Petey Cruiser",	"Madrid"),
(00002,	"Anna Sthesia",	"Barcelona"),
(00003,	"Paul Molive",	"Berlin"),
(00004,	"Gail Forcewind", "Paris"),
(00005,	"Paige Turner",	"Mimia"),
(00006,	"Bob Frapples",	"Mexico City"),
(00007,	"Walter Melon",	"Amsterdam"),
(00008,	"Shonda Leer",	"São Paulo");
