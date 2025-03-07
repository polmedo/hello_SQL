SELECT * FROM users;

SELECT surname FROM users;

SELECT DISTINCT surname FROM users;

SELECT SUM(age) FROM users;

SELECT AVG(age) FROM users;

SELECT * FROM users WHERE name IN ('Pablo', 'zé');

SELECT * FROM users WHERE age BETWEEN 20 AND 30;

SELECT name AS nombre, surname AS apellido FROM users WHERE age BETWEEN 20 AND 30;