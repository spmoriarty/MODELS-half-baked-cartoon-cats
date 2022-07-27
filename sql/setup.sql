
DROP table if exists cats;

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    year INT,
    lives INT,
    isSidekick BOOLEAN NOT NULL
);

INSERT INTO cats (name, type, year, lives, isSidekick, url) VALUES
('Felix', 'Tuxedo', 1892, 3, 'false', 'https://placekitten.com'),
('Garfield', 'Orange Tabby', 1978, 7, 'false', 'https://placekitten.com'),
('Duchess', 'Angora', 1970, 9, 'false', 'https://placekitten.com'),
('Stimpy', 'Manx', 1990, 1, 'false', 'https://placekitten.com');