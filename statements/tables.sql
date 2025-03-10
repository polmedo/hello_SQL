-- This way id and sign are unique independently.
CREATE TABLE signs (
	id int NOT NULL UNIQUE,
    sign varchar(20) NOT NULL UNIQUE,
    attributes varchar(200) NOT NULL
);

-- This way what is unique is the combination of id and sign.
CREATE TABLE signs (
    id int NOT NULL,
    sign varchar(20) NOT NULL,
    attributes varchar(200) NOT NULL,
    UNIQUE (id, sign)
);