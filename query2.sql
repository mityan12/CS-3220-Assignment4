SELECT 
	albums.Title,
	artists.name
FROM albums
INNER JOIN artists
ON albums.ArtistId = artists.ArtistId
WHERE albums.title is NOT NULL
AND artists.name is NOT NULL;
