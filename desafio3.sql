SELECT u.nome AS usuario, COUNT(hr.usuario_id) AS qtde_musicas_ouvidas, ROUND(SUM((m.duracao_segundos) / 60), 2) AS total_minutos
FROM usuarios AS u
INNER JOIN historico_de_reproducoes AS hr ON u.id = hr.usuario_id
INNER JOIN musicas AS m ON hr.musica_id = m.id
GROUP BY u.nome
ORDER BY u.nome;
