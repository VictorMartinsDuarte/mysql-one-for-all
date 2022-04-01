SELECT a.artist AS 'artista', al.album AS 'album', COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS a
  JOIN SpotifyClone.albums AS al
    ON al.artist_id = a.artist_id
  JOIN SpotifyClone.user_follows AS f
    ON f.artist_id = al.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;