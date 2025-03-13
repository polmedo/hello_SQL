-- IMPORTANTE Las relaciones siempre se harán usando la clave primaria de la tabla relacionada.

-- Para crear una relación n:n, normalmente se crea una tabla intermedia que contiene las relaciones entre las dos tablas.

-- Relación 1:1
CREATE TABLE dni (
	dni_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dni_number varchar(10) NOT NULL,
    user_id int NOT NULL,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

ALTER TABLE users
ADD sign_id int;

ALTER TABLE users
ADD CONSTRAINT fk_signs
FOREIGN KEY(sign_id) REFERENCES signs2(sign_id);
