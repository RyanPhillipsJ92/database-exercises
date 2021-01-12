USE codeup_test_db;

SELECT *
FROM albums
WHERE release_date > 1991;

DELETE FROM albums
 WHERE release_date > 1991;



SELECT name, artist, release_date, genre
AS 'All Albums with the genre ''disco'''
FROM albums
WHERE genre = 'disco';

DELETE FROM albums
 WHERE genre = 'disco';

SELECT name, artist, release_date, genre
AS 'Albums by ''Whitney Houston'' '
FROM albums
WHERE artist = 'Whitney Houston';

DELETE FROM albums
 WHERE artist = 'Whitney Houston';
