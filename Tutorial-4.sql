<T4-Q1>

<1.1>
SELECT *
FROM employees;

<1.2>
SELECT *
FROM departments;

<1.3>
SELECT employee_id, last_name, job_id, hire_date
FROM employees;

<1.4>
SELECT department_id, department_name
FROM departments;


<T4-Q2>

<2.1>
SELECT last_name, salary
FROM employees
WHERE salary >=45000;

<2.2>
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 47000 AND 57000;

or

SELECT last_name, salary
FROM employees
WHERE salary<47000 OR salary>57000;

<2.3>
SELECT last_name, hire_date, department_id
FROM employees
WHERE last_name LIKE '%Matos%';

<2.4>
SELECT last_name, hire_date,salary
FROM employees
WHERE hire_date >= '2016-01-01';


<T4-Q3>

<3.1>
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', '%aylar') 
ORDER BY hire_date ASD;

<3.2>
SELECT last_name AS 'Employee', salary AS 'Yearly Salary', department_id AS 'DepId '
FROM employees
WHERE salary BETWEEN 37000 AND 57000 
AND department_id IN (20,40);

<3.3>
SELECT last_name, job_id, hire_date, salary, department_id
FROM employees
WHERE department_id = 40 
AND (salary>41000 
OR hire_date < 2016-02-15;);

Or

SELECT last_name, job_id, hire_date, salary, department_id
FROM employees
WHERE (department_id = 40 AND salary>41000) 
OR (department_id = 40 AND hire_date < 2016-02-15;);


<T4-Q1>

<4.1>

SELECT last_name
FROM employees
WHERE last_name LIKE '__a';

<4.2>

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%t%';

<4.3>

SELECT last_name,hire_date
FROM employees
WHERE hire_date LIKE '%2014%';

Or

SELECT last_name, hire_date
FROM employees
WHERE hire_date BETWEEN >= '2014-01-01' AND '2014-12-01';

Or

SELECT last_name, hire_date
FROM employees
WHERE hire_date >= '2014-01-01' AND hire_date <= '2014-12-01';