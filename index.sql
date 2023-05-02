CREATE TABLE films (
title TEXT,
release_year INTEGER
);

INSERT INTO films (title, release_year) 
VALUES ('Scarface', 1983),
('Fight Club', 1999),
 ('Pain and Gain', 2013),
 ('Snatch', 2000),
 ('Lock stock and two smoking barrels', 1998),
 ('The lion king', 1994),
 ('The Matrix', 1999);

SELECT title FROM films
WHERE release_year = 1999;

ALTER TABLE films 
ADD COLUMN genre TEXT,
ADD COLUMN Rating INTEGER;

UPDATE films 
SET genre = 'crime-action', rating = 5
WHERE title = 'Scarface';

UPDATE films
SET genre = 'classic thriller', rating = 5
WHERE title = 'Fight Club';

UPDATE films
SET genre = 'comedy', rating = 4
WHERE title = 'Pain and Gain';

UPDATE films
SET genre = 'crime comedy', rating = 4
WHERE title = 'Lock stock and two smoking barrels';

UPDATE films 
SET genre = 'sci-fi', rating = 5
WHERE title = 'The Matrix';

UPDATE films
SET genre = 'crime-comedy', rating = 4
WHERE title = 'Snatch';

UPDATE films
SET genre = 'children`s classic', rating = 4
WHERE title = 'The lion king';

ALTER TABLE films
ADD CONSTRAINT unique_release UNIQUE (title);

