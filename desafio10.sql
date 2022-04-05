SELECT c.songs AS 'nome', COUNT(his.songs_id) AS 'reproducoes'
  FROM SpotifyClone.Users AS u
    JOIN SpotifyClone.Reproduction_history AS his
      ON u.user_id = his.user_id
    JOIN SpotifyClone.Songs AS c
      ON c.songs_id = his.songs_id
WHERE u.plan_id IN (1, 3)
GROUP BY his.songs_id
ORDER BY c.songs;