/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/

SELECT CITY 
FROM STATION 
WHERE Left(CITY, 1) IN ("a", "e", "i", "o", "u") 
AND 
right(CITY, 1) IN ("a", "e", "i", "o", "u");
