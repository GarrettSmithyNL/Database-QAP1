SELECT c.first_name || ' ' || c.last_name AS full_name
	, ci.city
	, SUM(p.amount) AS total_amount
	, COUNT(p.customer_id) AS movies_rented
FROM customer AS c
INNER JOIN address AS a ON a.address_id = c.address_id
INNER JOIN city AS ci ON ci.city_id = a.city_id
INNER JOIN payment AS p ON p.customer_id = c.customer_id
WHERE p.payment_date BETWEEN '2007-02-19' AND '2007-02-20'
GROUP BY full_name, ci.city
ORDER BY total_amount DESC


