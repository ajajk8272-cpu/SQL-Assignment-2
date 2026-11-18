USE `customers_database`;
-- 1. Find all customers who live in the state of &#39;Delhi&#39; and have more than 100 points.
SELECT * FROM  customers WHERE city LIKE '%Delhi%' and  points >= 100;

-- 2. Display the names and income of customers whose income is between 50,000 and 100,000.

SELECT (first_name) FROM customers WHERE monthly_income BETWEEN 50000 and 100000;

-- 3. List all customers whose first name starts with the letter &#39;A&#39;.

SELECT * FROM customers WHERE first_name LIKE 'A%';

-- 4. Find customers who either live in &#39;Delhi&#39; or have more than 100 points.
SELECT * FROM customers WHERE state = 'Delhi' OR points > 100;

-- 5. Retrieve the customer(s) with the highest monthly income.
SELECT * FROM customers ORDER BY monthly_income DESC LIMIT 1 ;

-- 6. Find the customer(s) with the second highest monthly income.
SELECT * FROM customers ORDER BY monthly_income DESC LIMIT 1 OFFSET 1;

-- --7. List all customers whose phone number is missing (either NULL or an empty string).
SELECT * FROM customers WHERE phone is null or phone = ' ';

-- 8. Find all customers whose sector is not missing.
SELECT * FROM customers WHERE sector != ' ';


-- 9. Get the list of unique states from the customer table.
SELECT DISTINCT state FROM customers;

-- 10. Count how many different cities the customers come from.
SELECT count(DISTINCT state) FROM customers;

-- 11. Find all customers born before January 1st, 1990.

SELECT * FROM customers WHERE birth_date <= '1990-01-01'; 

-- 12. List customers born between 1985 and 2000.
SELECT * FROM customers ORDER BY birth_date BETWEEN '1985' AND '2000';

-- 13. Get the names of all customers whose name is exactly 5 characters long.
SELECT * FROM customers WHERE first_name LIKE '_____'; 

-- 14. Get the top 5 customers with the highest points.
SELECT * FROM customers ORDER BY points DESC LIMIT 5;

-- 15. Find all customers whose name contains only alphabets and is at least 3 characters long.
SELECT * FROM customers WHERE first_name LIKE '___'; 

-- 16. Show customers whose address includes the word 'Road'.

SELECT * FROM customers WHERE address LIKE '%Road%';

-- 17. Find all customers whose name ends with the letter n .

SELECT * FROM customers WHERE last_name LIKE '%n';

-- 18. Show all customers sorted by monthly income in descending order.
SELECT * FROM customers ORDER BY monthly_income DESC;

-- 19. Display customers who do not live in MumbaI;.
SELECT * FROM customers WHERE city != 'Mumbai';


-- 20. List customers who have points greater than 100 and live in either Delhi, Pune, or Chennai.

SELECT * FROM customers WHERE points >= 100 and city in ('Delhi', 'Pune','Chennai');