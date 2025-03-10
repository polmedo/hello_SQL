INSERT INTO users (name, surname, age) VALUES ('Pablo', 'García', 85);

/* IMPORTANTE!
para usar UPDATE, hay que filtrar los registros que se van a modificar. Si no se hace, se modificarán todos los registros de la tabla.
*/
UPDATE users SET age = 99 WHERE user_id = 6;

UPDATE users SET age = 35, date = '2010-01-01' WHERE user_id = 6;

DELETE FROM users WHERE user_id = 6;