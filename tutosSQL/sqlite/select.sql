-- SQLite
SELECT * FROM recipes;

SELECT * FROM recipes WHERE duration < 20;

SELECT * FROM recipes WHERE duration BETWEEN 25 AND 50;

SELECT * FROm recipes WHERE online = TRUE AND duration < 20;

SELECT * FROM recipes WHERE slug like 'be%';
SELECT * FROM recipes WHERE slug like '%be%';