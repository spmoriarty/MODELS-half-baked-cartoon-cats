-- Use this file to define your SQL tables
DROP table if exists cats;
-- The SQL in this file will be executed when you run `npm run setup-db`

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    year INT,
    lives INT,
    isSidekick VARCHAR NOT NULL
);

INSERT INTO cats (name, type, url, year, lives, isSidekick) VALUES
('Felix', 'Tuxedo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Felix_the_cat.svg/200px-Felix_the_cat.svg.png', 1892, 3, 'false'),
('Garfield', 'Orange Tabby', 'https://static.wikia.nocookie.net/garfield/images/9/9f/GarfieldCharacter.jpg', 1978, 7, 'false'),
('Duchess', 'Angora', 'https://static.wikia.nocookie.net/disney/images/e/eb/Profile_-_Duchess.jpeg', 1970, 9, 'false'),
('Stimpy', 'Manx', 'https://static.wikia.nocookie.net/renandstimpy/images/c/c1/Ren-stimpy-25-anniversar-hp2.png', 1990, 1, 'true');