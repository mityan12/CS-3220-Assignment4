SELECT COUNT(*) AS TotalArtists
FROM
(
    SELECT artists.ArtistId
    FROM artists
    INNER JOIN albums
        ON artists.ArtistId = albums.ArtistId
    INNER JOIN tracks
        ON albums.AlbumId = tracks.AlbumId
    INNER JOIN media_types
        ON tracks.MediaTypeId = media_types.MediaTypeId
    WHERE artists.Name IS NOT NULL
      AND media_types.Name IS NOT NULL
      AND media_types.Name LIKE '%MPEG%'
    GROUP BY artists.ArtistId
    HAVING COUNT(tracks.TrackId) >= 10
) AS ArtistWithTenMPEG;
