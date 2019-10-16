USE employees;

SELECT DISTINCT title
from titles;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%e'
  AND last_name LIKE 'e%'
GROUP BY first_name, last_name;

SELECT last_name, count(last_name) AS 'Count' FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(*) AS 'Count', gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;