<T7-Q1>

SELECT department_id, last_name, hire_date, 
FROM employees
WHERE department_id =(
    SELECT department_id
    FROM employees
    WHERE last_name = 'Matos'
)
AND last_name != 'Matos'
ORDER BY department_id;

<T7-Q2>

<a>

SELECT last_name, salary
FROM employees 
WHERE salary > (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 40
);

<b>

SELECT last_name, salary
FROM employees
WHERE salary > (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 10
);

<T7-Q3>

SELECT e.last_name, e.salary, e.hire_date, e.department_id
FROM employees e JOIN departments d ON 
e.department_id = d.department_id
WHERE d.location_id = 100;

Or

SELECT last_name, salary, hire_date, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id = 100
);

<T7-Q4>

SELECT e.last_name, e.salary
FROM employees e JOIN employees m ON 
e.manager_id = m.employee_id
WHERE m.first_name LIKE 'J%';

Or

SELECT last_name, salary
FROM employees
WHERE manager_id IN (
    SELECT employee_id
    FROM employees
    WHERE first_name LIKE 'J%'
)

<T7-Q5>

SELECT last_name, salary 
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE hire_date >= DATE '2017-01-01'
)
AND salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id IS NULL
);

<T7-Q6>

SELECT  d.department_id, d.department_name
FROM departments d
WHERE d.department_id NOT IN (
    SELECT DISTINCT department_id
    FROM employees
    WHERE job_id = 904
);
