-- This way id and sign are unique independently.
CREATE TABLE signs (
	id int NOT NULL UNIQUE,
    sign varchar(20) NOT NULL UNIQUE,
    attributes varchar(200) NOT NULL
);

-- This way what is unique is the combination of id and sign.
CREATE TABLE signs2 (
    id int NOT NULL,
    sign varchar(20) NOT NULL,
    attributes varchar(200) NOT NULL,
    UNIQUE (id, sign)
);

CREATE TABLE signs3 (
	id int NOT NULL UNIQUE AUTO_INCREMENT,
    sign varchar(20) NOT NULL UNIQUE,
    attributes varchar(200) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE users
ADD sign varchar(20) NOT NULL;

ALTER TABLE users
RENAME COLUMN user_id TO id;

ALTER TABLE users
MODIFY COLUMN name varchar(60);

UPDATE users SET sign = 'Leo' WHERE id = 1;
UPDATE users SET sign = 'Aries' WHERE id = 3;
UPDATE users SET sign = 'Virgo' WHERE id = 4;
UPDATE users SET sign = 'Gemini' WHERE id = 2;
UPDATE users SET sign = 'Piscis' WHERE id = 5;

ALTER TABLE users
RENAME COLUMN id TO user_id;

ALTER TABLE signs2
RENAME COLUMN id TO sign_id;

SELECT * FROM signs2;

INSERT INTO signs2 (sign, attributes) VALUES ('Gemini', 'The most beautiful and intelligent and funny');
INSERT INTO signs2 (sign, attributes) VALUES ('Leo', 'The luckiest');
INSERT INTO signs2 (sign, attributes) VALUES ('Aries', 'The worst');
INSERT INTO signs2 (sign, attributes) VALUES ('Virgo', "It's ok");
INSERT INTO signs2 (sign, attributes) VALUES ('Piscis', 'The most normal');

ALTER TABLE signs2
ADD user_id int;

ALTER TABLE signs2
ADD FOREIGN KEY (user_id) REFERENCES users(user_id);