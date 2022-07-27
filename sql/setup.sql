
DROP table if exists cats;

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    year INT,
    lives INT,
    issidekick BOOLEAN NOT NULL,
    url VARCHAR
);

INSERT INTO cats (name, type, year, lives, issidekick, url) VALUES
('Felix', 'Tuxedo', 1892, 3, 'false', 'https://placekitten.com'),
('Garfield', 'Orange Tabby', 1978, 7, 'false', 'https://placekitten.com'),
('Duchess', 'Angora', 1970, 9, 'false', 'https://placekitten.com'),
('Stimpy', 'Manx', 1990, 1, 'false', 'https://placekitten.com');