SELECT
  MIN(P_A.valor) AS faturamento_minimo,
  MAX(P_A.valor) AS faturamento_maximo,
  ROUND(AVG(P_A.valor) 2) AS faturamento_medio,
  SUM(P_A.valor) AS faturamento_total
FROM SpotifyClone.planos_de_assinatura
INNER JOIN SpotifyClone.usuarios AS U
ON P_A.plano_id = U.plano_id;