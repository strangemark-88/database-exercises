USE employees;


#   2. Using the example in the Associative Table Joins section as a guide,
#   write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS 'Department', concat(employees.first_name, ' ', employees.last_name) AS 'Manager' FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
        WHERE dept_manager.to_date = '9999-01-01'
            ORDER BY departments.dept_name;


#   3. Find the name of all departments currently managed by women.

SELECT departments.dept_name AS 'Department', concat(employees.first_name, ' ', employees.last_name) AS 'Manager' FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
        WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
        ORDER BY departments.dept_name;

#   4. Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title AS 'Title', count(*) AS 'Count' FROM employees
    JOIN titles ON employees.emp_no = titles.emp_no
    JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_emp.dept_no
        WHERE dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;

#   5. Find the current salary of all current managers.

# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987

SELECT departments.dept_name AS 'Department Name', concat(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary AS 'Salary' FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
    JOIN salaries ON dept_manager.emp_no = salaries.emp_no
        WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY departments.dept_name