SHOW DATABASES; -- show all the database

USE school; -- use/ select a specific database

DROP TABLE test; -- delete a table

SHOW TABLES; -- show all tables in a db

DESCRIBE Students; -- show all the columns of a tables with thier descriptions

ALTER TABLE test ADD newCol VARCHAR(34); -- add a new column to a table

ALTER TABLE test DROP COLUMN newCol; -- delete a specific column in a table

RENAME TABLE allNAme TO newName; -- rename a table

INSERT INTO test (student_name, student_age)
SELECT name, age FROM users WHERE users.status = "student"; -- insert selected from a table into another table

DELETE FROM test WHERE name = "test name"; -- delete a row from a table 

DELETE FROM test; -- Delete all rows from a table

SELECT nom FROM nom_de_la_table WHERE id IN (SELECT client_id FROM commandes WHERE montant > 100);