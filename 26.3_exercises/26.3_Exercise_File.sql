--PART ONE

SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;

SELECT first_name, last_name, COUNT(*) AS total_cars FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY first_name;

SELECT first_name, last_name, FLOOR(AVG(price)) AS average_price, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND FLOOR(AVG(price)) > 10000 ORDER BY first_name DESC;

