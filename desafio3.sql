SELECT u.user AS 'usuario', COUNT(c.songs_id) AS 'qtde_musicas_ouvidas', CAST(SUM(c.seconds / 60) AS DECIMAL(4,2)) AS 'total_minutos'
  FROM SpotifyClone.Users AS u
    JOIN SpotifyClone.Reproduction_history as his
      ON his.user_id = u.user_id
    JOIN SpotifyClone.Songs AS c
      ON c.songs_id = his.songs_id
GROUP BY u.user
ORDER BY u.user;