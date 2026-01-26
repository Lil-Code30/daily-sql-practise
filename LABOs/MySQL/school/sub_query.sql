SELECT name, semester FROM students WHERE semester < (SELECT AVG(semester) FROM students);

SELECT AVG(semester) FROM students;

SELECT * FROM students WHERE name LIKE "%Be%";

SELECT * FROM students WHERE semester BETWEEN 1 AND 3;

SELECT * FROM students WHERE major IN ("Mechanical Engineering", "Electrical Engineering");

SELECT CONCAT("STUD-","ACAD-", UPPER(SUBSTRING(name, 1, 4))) AS student_UUID FROM students;

SELECT name, status, DATE_FORMAT(created_at, "%d/%m/%Y") FROM students;

SELECT name, IF(status = "full_time", "Has", "Don't") AS Scholarship FROM students;

EXPLAIN SELECT * FROM students WHERE name LIKE "%Be%";