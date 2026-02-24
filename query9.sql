SELECT
    artists.Name,
    SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS TotalRevenue,
    RANK() OVER (
        ORDER BY SUM(invoice_items.UnitPrice * invoice_items.Quantity) DESC
    ) AS RevenueRank
FROM artists
INNER JOIN albums
    ON artists.ArtistId = albums.ArtistId
INNER JOIN tracks
    ON albums.AlbumId = tracks.AlbumId
INNER JOIN invoice_items
    ON tracks.TrackId = invoice_items.TrackId
WHERE artists.Name IS NOT NULL
GROUP BY artists.ArtistId, artists.Name
ORDER BY RevenueRank ASC;
