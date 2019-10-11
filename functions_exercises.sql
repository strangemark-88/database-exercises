USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name) as 'People who''s names begin and end with e' FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
# (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name, ' ', last_name) as `Name`, datediff(now(), hire_date) as 'DaysWorking' FROM employees
WHERE hire_date LIKE '199%-%' AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date desc;
