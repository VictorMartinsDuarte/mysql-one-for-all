SELECT
  (SELECT
    COUNT(*)
      FROM SpotifyClone.Songs) AS 'cancoes',
  (SELECT
    COUNT(*)
      FROM SpotifyClone.Artists) AS 'artistas',
  (SELECT
    COUNT(*)
      FROM SpotifyClone.Albums) AS 'albums';