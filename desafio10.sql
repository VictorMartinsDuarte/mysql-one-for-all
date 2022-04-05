SELECT M.titulo AS nome,
  COUNT(H.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico AS H
ON M.musica_id = H.musica_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.planos_de_assinatura AS P_A
ON P_A.plano_id = U.plano_id
WHERE P_A.plano IN('gratuito', 'pessoal')
GROUP BY M.titulo
ORDER BY M.titulo;