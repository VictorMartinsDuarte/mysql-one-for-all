SELECT u.user AS 'usuario', COUNT(c,music) AS 'qtde_musicas_ouvidas', CAST(SUM(c.seconds / 60) AS DECIMAL(4,2)) AS 'total_minutos'
  FROM SpotifyClone.users AS u
    JOIN SpotifyClone.reproduction_history as his
      ON his.id_user = u.id_user
    JOIN SpotifyClone.songs AS c
      ON c.music_id = his.music_id
GROUP BY u.user
ORDER BY u.user;