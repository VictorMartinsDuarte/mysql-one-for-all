SELECT 
  COUNT(H.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
WHERE U.nome = 'Bill';