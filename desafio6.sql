SELECT MIN(p.valores) AS faturamento_minimo, MAX(p.valores) AS faturamento_maximo, ROUND(AVG(p.valores), 2) AS faturamento_medio, SUM(p.valores) AS faturamento_total
FROM planos AS p
INNER JOIN usuarios AS u ON p.id = u.plano_id;
