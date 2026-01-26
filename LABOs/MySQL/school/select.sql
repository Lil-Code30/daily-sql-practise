SELECT * FROM Students;

SELECT * FROM department;

SELECT student_id, name, status FROM students;

SELECT * FROM students WHERE status = "part_time";

SELECT * FROM students WHERE status = "full_time" AND semester >= 3;

SELECT * FROM students WHERE name LIKE "A%";

SELECT * FROM students ORDER BY name ASC;

SELECT * FROM students ORDER BY name DESC;

SELECT * FROM students LIMIT 5;

SELECT DISTINCT name FROM students;

-- Utiliser les fonctions d'agrégation (COUNT, SUM, AVG, MAX, MIN)

SELECT COUNT(*) FROM students;

SELECT MAX(semester) FROM students;

SELECT semester, COUNT(*) FROM students GROUP BY semester;

SELECT status, COUNT(*) FROM students GROUP BY status;