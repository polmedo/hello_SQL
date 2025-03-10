SELECT * FROM users;

SELECT surname FROM users;

SELECT DISTINCT surname FROM users;

SELECT SUM(age) FROM users;

SELECT AVG(age) FROM users;

SELECT * FROM users WHERE name IN ('Pablo', 'zé');

SELECT * FROM users WHERE age BETWEEN 20 AND 30;

SELECT name AS nombre, surname AS apellido FROM users WHERE age BETWEEN 20 AND 30;

SELECT CONCAT(name, ' ', surname) AS full_name FROM users;

SELECT COUNT(age) AS "counting", age FROM users GROUP BY age ORDER BY age ASC;

SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;

SELECT COUNT(age) FROM users HAVING COUNT(age) > 5;

SELECT *,
CASE
    WHEN age > 18 AND age < 27 THEN "Adulto"
    WHEN age >= 27 THEN "Viejo"
    ELSE "Menor"
END AS "Grupo de edad"
FROM users;

SELECT name, surname, IFNULL(date, "2030-01-01") AS date FROM users;