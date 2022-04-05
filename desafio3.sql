SELECT U.nome AS usuario,
  COUNT(H.musica_id) AS qtde_musicas_ouvidas,
  CONVERT(ROUND(SUM(M.duracao_segundos) / 60, 2) CHAR) AS total_minutos
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON M.musica_id = H.musica_id
GROUP BY U.nome
ORDER BY U.nome;