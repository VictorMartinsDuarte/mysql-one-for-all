SELECT a.artist AS 'artista', al.album AS 'album'
  FROM SpotifyClone.artists AS a
    JOIN SpotifyClone.albums AS al
      ON al.artist_id = a.artist_id
WHERE a.artist = 'Walter Phoenix'
ORDER BY album;