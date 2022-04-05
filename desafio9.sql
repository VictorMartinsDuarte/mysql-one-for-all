SELECT COUNT(his.user_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.Users AS u
  JOIN SpotifyClone.Reproduction_history AS his
    ON his.user_id = u.user_id
WHERE u.user = "Bill";