--TASK_1
SELECT contact_name, city, country
FROM customers
ORDER BY contact_name, CASE
	WHEN city IS NULL THEN country
	ELSE city
END

--TASK_2
SELECT product_name, unit_price,
CASE 
  WHEN unit_price >= 100 THEN 'too expensive'
  WHEN unit_price >= 50 AND unit_price < 100 THEN 'average'
  WHEN unit_price < 50 THEN 'low price'
END AS unit_price
FROM products


--TASK_4
SELECT last_name || ' ' ||   first_name AS full_name, 
CASE 
  WHEN title = 'Sales Representative' THEN 'Sales Stuff'
  ELSE title
END AS pasition
FROM employees
	
	





