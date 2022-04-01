SELECT c.music AS 'nome_musica',
  CASE
    WHEN c.music LIKE '%Streets%' THEN REPLACE (music, 'Streets', 'Code Review')
    WHEN c.music LIKE '%Her Own%' THEN REPLACE (music, 'Hew Own', 'Trybe')
    WHEN c.music LIKE '%Inner Fire%' THEN REPLACE (music, 'Inner Fire', 'Project')
    WHEN c.music LIKE '%Silly%' THEN REPLACE (music, 'Silly', 'Nice')
    WHEN c.music LIKE '%Circus%' THEN REPLACE (music, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.songs AS c
  WHERE music LIKE '%Streets' OR
    music LIKE '%Her Own' OR
    music LIKE '%Inner Fire' OR
    music LIKE '%Silly' OR
    music LIKE '%Circus'
ORDER BY nome_musica;