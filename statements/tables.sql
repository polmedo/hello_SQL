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