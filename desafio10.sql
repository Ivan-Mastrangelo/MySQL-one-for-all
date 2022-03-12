SELECT m.nome AS nome, COUNT(hr.musica_id) AS reproducoes
FROM musicas AS m
INNER JOIN historico_de_reproducoes AS hr ON m.id = hr.musica_id
INNER JOIN usuarios AS u ON hr.usuario_id = u.id
WHERE u.plano_id = 1 OR u.plano_id = 3
GROUP BY m.nome
ORDER BY m.nome;
