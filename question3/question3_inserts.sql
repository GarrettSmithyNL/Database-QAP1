INSERT INTO address (address, address2, district, city_id, postal_code, phone)
VALUES ('35 Main Road', NULL, 'Texas', 295, 18743, 5551113333);	
	
INSERT INTO customer (store_id, first_name, last_name, email, address_id, activebool, create_date, active)
SELECT 2, 'Sarah', 'Gillingham', 'sgillingham@email.com', MAX(address_id), true, '2024-05-09', 1 FROM address;

INSERT INTO customer (store_id, first_name, last_name, email, address_id, activebool, create_date, active)	
SELECT 2, 'Timmy', 'Gillingham', 'tgillingham@email.com', MAX(address_id), true, '2024-05-09', 1 FROM address;

INSERT INTO customer (store_id, first_name, last_name, email, address_id, activebool, create_date, active)
SELECT 2, 'Roger', 'Gillingham', 'rgillingham@email.com', MAX(address_id), true, '2024-05-09', 1 FROM address;


WITH newest_add AS (SELECT MAX(address_id) AS newest FROM address)
SELECT c.first_name || ' ' || c.last_name AS full_name
	, c.address_id
	, a.address || ' ' || a.district || ' ' || a.postal_code AS full_address
	, c.store_id
	FROM customer AS c
INNER JOIN newest_add ON newest = c.address_id
INNER JOIN address AS a ON a.address_id = c.address_id
WHERE c.address_id = newest_add.newest



