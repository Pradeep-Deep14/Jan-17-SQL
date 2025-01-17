CREATE TABLE customers 
	(customer_id INT PRIMARY KEY, customer_name VARCHAR(100));

CREATE TABLE flights 
	(flight_id INT PRIMARY KEY, customer_id INT, airline VARCHAR(50), flight_date DATE);


INSERT INTO customers VALUES (1, 'Sarah Wilson'), (2, 'Liam Evans');
     

INSERT INTO flights VALUES (1, 1, 'British Airways', '2023-03-15'), 
                           (2, 1, 'EasyJet', '2023-04-20');


SELECT * FROM CUSTOMERS

SELECT * FROM FLIGHTS

/*
List the airlines British Airways customers traveled with in addition to British Airways
*/

SELECT DISTINCT c.customer_name, s2.airline 
FROM customers c 
JOIN flights s1 ON c.customer_id = s1.customer_id 
JOIN flights s2 ON c.customer_id = s2.customer_id 
WHERE s1.airline = 'British Airways' 
AND s2.airline != 'British Airways';

