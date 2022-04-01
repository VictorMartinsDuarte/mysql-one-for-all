SELECT u.user AS 'usuario',
  IF (MAX(his.reproduction_day) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
  FROM SpotifyClone.user AS u
    JOIN SpotifyClone.reproduction_history AS his
      ON u.id_user = his.id_user
GROUP BY user
ORDER BY user;