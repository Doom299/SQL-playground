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
AND (e.hire_date>2015-03-02 OR e.salary<46000)
ORDER BY l.country , l.city , d.department_name;