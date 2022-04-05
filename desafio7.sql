SELECT art.nome AS artista, alb.titulo AS album,
  COUNT(S_A.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS S_A
ON S_A.artista_id = art.artista_id
GROUP BY album, S_A.artista_id
ORDER BY seguidores DESC, artista, album;