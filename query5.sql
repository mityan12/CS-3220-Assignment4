SELECT DISTINCT
    artists.Name
FROM artists
INNER JOIN albums
    ON artists.ArtistId = albums.ArtistId
WHERE albums.Title IS NOT NULL
  AND artists.Name IS NOT NULL
  AND albums.Title LIKE '%symphony%';
