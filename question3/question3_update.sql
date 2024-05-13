INSERT INTO address (address, address2, district, city_id, postal_code, phone)
VALUES ('1224 foruth Street', NULL, 'Texas', 295, 18743, 5551113333);

WITH old_add AS (SELECT address_id as old from customer where customer_id = (select MAX(customer_id) FROM customer))
	,new_add AS (SELECT MAX(address_id) AS new FROM address)

UPDATE customer
SET address_id = new_add.new
from old_add, new_add
WHERE address_id = old_add.old;

WITH newest_add AS (SELECT MAX(address_id) AS newest FROM address)
SELECT c.first_name || ' ' || c.last_name AS full_name
	, c.address_id
	, a.address || ' ' || a.district || ' ' || a.postal_code AS full_address
	, c.store_id
	FROM customer AS c
INNER JOIN newest_add ON newest = c.address_id
INNER JOIN address AS a ON a.address_id = c.address_id
WHERE c.address_id = newest_add.newest

