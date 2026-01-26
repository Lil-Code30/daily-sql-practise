-- INNER JOIN

SELECT s.name, s.status, d.name
FROM students s
INNER JOIN department d 
ON s.department_id = d.id;

-- CROSS JOIN is a union of LEFT and RIGHT JOIN

SELECT s.name, s.status, d.id, d.name
FROM students s
LEFT JOIN department d ON s.department_id = d.id

union

SELECT s.name, s.status, d.id, d.name
FROM students s
RIGHT JOIN department d ON s.department_id = d.id;