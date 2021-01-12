USE codeup_test_db;

SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genres for ''Nevermind'''
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 90''s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT *
FROM albums
WHERE sales <= 20;

SELECT *
FROM albums
WHERE genre = 'Rock';