SELECT c.songs AS 'nome_musica',
  CASE
    WHEN c.songs LIKE '%Streets%' THEN REPLACE (music, 'Streets', 'Code Review')
    WHEN c.songs LIKE '%Her Own%' THEN REPLACE (music, 'Hew Own', 'Trybe')
    WHEN c.songs LIKE '%Inner Fire%' THEN REPLACE (music, 'Inner Fire', 'Project')
    WHEN c.songs LIKE '%Silly%' THEN REPLACE (music, 'Silly', 'Nice')
    WHEN c.songs LIKE '%Circus%' THEN REPLACE (music, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.Songs AS c
  WHERE music LIKE '%Streets' OR
    music LIKE '%Her Own' OR
    music LIKE '%Inner Fire' OR
    music LIKE '%Silly' OR
    music LIKE '%Circus'
ORDER BY nome_musica;