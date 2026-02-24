SELECT
    playlists.PlaylistId,
    playlists.Name,
    ROUND(SUM(tracks.Milliseconds) / 1000.0 / 60.0 / 60.0, 2) AS TotalHours
FROM playlists
INNER JOIN playlist_track
    ON playlists.PlaylistId = playlist_track.PlaylistId
INNER JOIN tracks
    ON playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name IS NOT NULL
  AND tracks.Milliseconds IS NOT NULL
GROUP BY playlists.PlaylistId, playlists.Name
HAVING SUM(tracks.Milliseconds) / 1000.0 / 60.0 / 60.0 > 2
ORDER BY playlists.PlaylistId ASC;
