CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100), 
         company_name VARCHAR(100)
     );
     INSERT INTO customers VALUES 
         (1, 'Rahul', 'TATA'), 
         (2, 'Aditi', 'Wipro'), 
         (3, 'Sneha', 'TATA'), 
         (4, 'Ravi', 'Infosys'), 
         (5, 'Kiran', 'TATA');

SELECT * FROM CUSTOMERS


/*
Count the total number of customers for each company.
*/


SELECT COMPANY_NAME,
       COUNT(*) AS NUMBER_OF_CUSTOMERS
FROM CUSTOMERS
GROUP BY 1
