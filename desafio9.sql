SELECT COUNT(his.id_user) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.users AS u
  JOIN SpotifyClone.reproduction_history AS his
    ON his.id_user = u.id_user
WHERE u.user = "Bill";