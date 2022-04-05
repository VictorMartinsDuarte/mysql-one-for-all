SELECT
  COUNT(DISTINCT musicas.musica_id) AS cancoes,
  COUNT(DISTINCT artistas.artista_id) AS artistas,
  COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns;