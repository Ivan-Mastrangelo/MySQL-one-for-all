SELECT m.nome AS cancao, COUNT(hr.musica_id) AS reproducoes
FROM musicas AS m
INNER JOIN historico_de_reproducoes AS hr ON m.id = hr.musica_id
GROUP BY m.nome
ORDER BY reproducoes DESC, m.nome
LIMIT 2;

