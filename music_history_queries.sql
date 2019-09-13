--Query all of the entries in the Genre table
SELECT "GenreId", "Label"
FROM Genre;

SELECT "Title", "SongLength"
FROM Song;



--Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistId, ArtistName, YearEstablished)
VALUES (null, "Joe Lizzo", "2019");

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES (null, "Joe", "2019", 2270, "NSS Records", 28, 1);


--Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES (null, "I'm Noe", 222, 2019, 1, 28, 23);

INSERT INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES (null, "It's Hot", 152, 2019, 1, 28, 23);

INSERT INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES (null, "Cold bloded", 300, 2019, 1, 28, 23);
--TO EDIT A MISTAKE
UPDATE Album
SET ReleaseDate = "9/9/2019"
WHERE ReleaseDate = 2019;
UPDATE Song
SET Title = "I'm Joe"
WHERE Title = "I'm Noe";

--DELETE
DELETE
FROM Artist
WHERE ArtistId = 39;




--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT s.Title, a.Title, ar.ArtistName FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId LEFT JOIN Artist ar ON a.ArtistId =  ar.ArtistId WHERE s.ArtistId = 28;

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(*) FROM Song GROUP BY AlbumId;

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(*) FROM Song GROUP BY ArtistId;

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(*) FROM Song GROUP BY GenreId;

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT "Title", MAX("AlbumLength") FROM Album;
--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT "Title", MAX("SongLength") FROM Song;

--Modify the previous query to also display the title of the album.
SELECT s.Title, a.title, MAX(s.SongLength) FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

