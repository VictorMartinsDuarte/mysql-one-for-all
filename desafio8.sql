SELECT art.nome AS artista, alb.titulo AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.nome = 'Walter Phoenix';