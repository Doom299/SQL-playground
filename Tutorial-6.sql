<T6-Q1>

<a>

SELECT AVG(salary) AS "Average Salary"
FROM employees
WHERE employee_id IN (1022,1023,1024,1025);

<b>

SELECT AVG(CONCAT(salary)) AS "Average Salary"
FROM employees
WHERE employee_id BETWEEN 1021 AND 1026;

<T6-Q2>

SELECT MIN(salary) AS "minimum" , MAX(salary) AS "Maximum", AVG(salary) AS "Average"
FROM employees
WHERE job_id IN (907,908,909) 
AND YEAR(hire_date)= '2017';

<T6-Q3>

SELECT manager_id, MIN(salary) AS "Minimum salary"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) =< 47000;

<T6-Q4>

SELECT department_id AS "Dept Id", MIN(salary) AS "Minimum salary", MAX(salary) AS "Maximum salary", AVG(salary) AS "average salary"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MAX(salary) > 50000 AND AVG(salary) >50000;

<T6-Q5>

SELECT d.department_id, d.department_name, AVG(e.salary) AS "average salary"
FROM departments d LEFT OUTER JOIN employees e ON
d.department_id = e.department_id
GROUP BY d.department_id,d.department_name

<T6-Q6>

SELECT j.job_id AS "Job Id", j.job_title AS "Job Title", COUNT(e.employee_id) AS "Staff Count"
FROM jobs j JOIN employees e ON
e.job_id = j.job_id
WHERE j.job_title NOT LIKE "%management%"
GROUP BY j.job_id, j.job_title
HAVING COUNT(e.employee_id)>= 2
ORDER BY j.job_title;

