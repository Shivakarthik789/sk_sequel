
/* arithmetic operators*/


SELECT 10 + 5;   -- Addition (Result: 15)
SELECT 10 - 5;   -- Subtraction (Result: 5)
SELECT 10 * 5;   -- Multiplication (Result: 50)
SELECT 10 / 5;   -- Division (Result: 2)
SELECT 10 % 3;   -- Modulus (Remainder) (Result: 1)

SELECT name, salary + bonus AS total_salary FROM employees;

/* comparsion operators*/

SELECT * FROM employees WHERE salary = 60000; -- Find employees with salary 60000
SELECT * FROM employees WHERE salary != 50000; -- Not equal to 50000
SELECT * FROM employees WHERE salary > 55000;  -- Greater than 55000
SELECT * FROM employees WHERE salary < 60000;  -- Less than 60000
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;  -- Salary in range

/* logical operators*/

SELECT * FROM employees WHERE salary > 50000 AND bonus > 5000; -- Both conditions true
SELECT * FROM employees WHERE salary < 60000 OR bonus = 6000;  -- At least one condition true
SELECT * FROM employees WHERE NOT salary = 50000;  -- Negates condition
SELECT * FROM employees WHERE name LIKE 'A%'; -- gives start alphabet A
SELECT * FROM employees WHERE name LIKE '%A'; -- gives end alphabet A
SELECT * FROM employees WHERE name IN ('Alice', 'Bob'); -- either this or that
SELECT * FROM employees WHERE name NOT IN ('Alice', 'Bob'); -- either there not there
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000; -- give value btwn this range



