SELECT a.artist AS 'artista', al.album AS 'album'
  FROM SpotifyClone.Artists AS a
    JOIN SpotifyClone.Albums AS al
      ON al.artist_id = a.artist_id
WHERE a.artist = 'Walter Phoenix'
ORDER BY album;