SELECT c.music AS 'cancao',
  COUNT(his.music_id) AS 'reproducoes'
    FROM SpotifyClone.songs AS c
      JOIN SpotifyClone.reproduction_history AS his
        ON his.music_id = c.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;