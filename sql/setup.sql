-- Use this file to define your SQL tables
DROP table if exists cats;
-- The SQL in this file will be executed when you run `npm run setup-db`

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTIY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    year INT,
    lives INT,
    isSidekick VARCHAR NOT NULL
);

INSERT INTO cats (name, type, year, lives, isSidekick) VALUES
('Felix', 'Tuxedo', 1892, 3, 'false'),
('Garfield', 'Orange Tabby', 1978, 7, 'false'),
('Duchess', 'Angora', 1970, 9, 'false'),
('Stimpy', 'Manx', 1990, 1, 'true');