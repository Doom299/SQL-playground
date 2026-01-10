<T5-Q1>

SELECT d.department_name, l.city, l.country
FROM locations l JOIN departments d ON 
l.location_id = d.location_id
WHERE l.city  = 'Cambridge'   

<T5-Q2>

SELECT d.department_name, e.first_name, e.last_name, e.salary
FROM departments d JOIN employees e ON
d.department_id = e.department_id
WHERE e.salary>45000 
AND UPPER(d.department_name) LIKE UPPER("M%");

<T5-Q3>

SELECT l.country, l.city, d.department_name, e.first_name, e.last_name, e.salary
FROM locations l JOIN departments d ON 
l.location_id = d.location_id
JOIN employees e ON
d.department_id = e.department_id
WHERE (e.hire_date > DATE '2015-03-02' OR e.salary < 46000)
ORDER BY l.country , l.city , d.department_name;

<T5-Q4>

SELECT d.department_name, e.first_name, e.last_name, e.hire_date, e.salary
FROM departments d JOIN employees e ON
d.department_id = e.department_id
WHERE e.last_name LIKE 'P%' OR e.last_name LIKE "S%";

<T5-Q5>

SELECT mgr.employee_id AS "Mgr Id", mgr.first_name AS "Mgr F Name", mgr.last_name AS "Mgr L Name", e.employee_id AS "Emp Id", e.first_name AS "Emp F Name", e.last_name AS "Emp L Name"
FROM employees mgr JOIN employees e ON 
e.manager_id = mgr.employee_id; 

<T5-Q6>

SELECT CONCAT(m.first_name,' ', m.last_name,' (ID: ',m.employee_id,') manages ',
e.first_name,' ', e.last_name,' (ID: ', e.employee_id, ')')
AS " Management Report"
FROM employees m JOIN employees e
ON m.employee_id = e.manager_id;

<T5-Q7>

SELECT e.last_name, e.salary, j.job_title, d.department_name
FROM employees e JOIN jobs j ON 
j.job_id = e.job_id 
JOIN departments d ON 
d.department_id = e.department_id
WHERE d.department_name = "IT";

<T5-Q8>

SELECT e.last_name, e.first_name, e.salary, j.job_title, d.department_name, l.city, l.country
FROM employees e JOIN departments d ON
e.department_id = d.department_id
JOIN locations l ON
l.location_id =d.location_id
JOIN jobs j ON
j.job_id = e.job_id;

<T5-Q9>

SELECT e.last_name, e.salary, j.job_title, e.hire_date, d.department_name, l.city
FROM employees e JOIN departments d ON
e.department_id = d.department_id
JOIN locations l ON
l.location_id = d.location_id
JOIN jobs j ON
j.job_id = e.job_id
WHERE l.city = 'London' 
AND e.hire_date < DATE '2019-04-25'
AND e.salary NOT BETWEEN 40000 AND 50000;

<T5-Q10>

SELECT e.last_name, e.salary, je.job_title, de.department_name, m.last_name, m.salary, jm.job_title, dm.department_name

FROM employees e JOIN jobs je ON
e.job_id = je.job_id
JOIN departments de ON
e.department_id = de.department_id
JOIN employees m ON 
m.employee_id=e.manager_id
JOIN jobs jm ON 
jm.job_id = m.job_id
JOIN departments dm ON 
dm.department_id = m.department_id;

Or

SELECT 
    e.last_name      AS employee_last_name,
    e.salary         AS employee_salary,
    je.job_title     AS employee_job,
    de.department_name AS employee_department,
    m.last_name      AS manager_last_name,
    m.salary         AS manager_salary,
    jm.job_title     AS manager_job,
    dm.department_name AS manager_department
FROM employees e
JOIN jobs je ON e.job_id = je.job_id
JOIN departments de ON e.department_id = de.department_id
JOIN employees m ON m.employee_id = e.manager_id
JOIN jobs jm ON jm.job_id = m.job_id
JOIN departments dm ON dm.department_id = m.department_id;

<T5-Q11>

SELECT d.department_name, e.first_name, e.last_name, e.hire_date, e.salary
FROM departments d LEFT OUTER JOIN employees e 
ON d.department_id = e.department_id; 

<T5-Q12>

SELECT d.department_name, e.first_name, e.last_name, e.hire_date, e.salary, 
FROM employees e LEFT OUTER JOIN departments d 
ON d.department_id = e.employee_id;

<T5-Q13>

SELECT e.last_name, e.salary, j.job_title
FROM
employees e LEFT OUTER JOIN jobs j
ON j.job_id = e.job_id
UNION
SELECT e.last_name, e.salary, j.job_title
FROM employees e RIGHT OUTER JOIN jobs j
ON j.job_id = e.job_id;