SELECT c.music AS 'nome', COUNT(his.music_id) AS 'reproducoes'
  FROM SpotifyClone.users AS u
    JOIN SpotifyClone.reproduction_history AS his
      ON u.id_user = his.id_user
    JOIN SpotifyClone.songs AS c
      ON c.music_id = his.music_id
WHERE u.plan_id IN (1, 3)
GROUP BY his.music_id
ORDER BY c.music;