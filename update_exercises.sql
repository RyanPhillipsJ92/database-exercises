USE codeup_test_db;


SELECT name
AS 'All Albums'
FROM albums;


SELECT name, artist, release_date, genre
AS 'All Albums before 1980'
FROM albums
WHERE release_date < 1980;


SELECT name
AS 'All Albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';






UPDATE albums
SET sales = sales * 10;


UPDATE albums
SET release_date = release_date - 80
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
where artist = 'Michael Jackson';

SELECT name
AS 'All Albums'
FROM albums;
