SELECT M.titulo AS cancao,
  COUNT(H.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS H
ON M.musica_id = H.musica_id
GROUP BY M.titulo
ORDER BY reproducoes DESC, cancao
LIMIT 2;