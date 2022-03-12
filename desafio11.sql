SELECT m.nome AS nome_musica,
	CASE
		WHEN m.nome LIKE '%Streets%' THEN  REPLACE(m.nome, 'Streets', 'Code Review')
        WHEN m.nome LIKE '%Her Own%' THEN REPLACE(m.nome, 'Her Own', 'Trybe')
        WHEN m.nome LIKE '%Inner Fire%' THEN REPLACE(m.nome, 'Inner Fire', 'Project')
        WHEN m.nome LIKE '%Silly%' THEN REPLACE(m.nome, 'Silly', 'Nice')
        WHEN m.nome LIKE '%Circus%' THEN REPLACE(m.nome, 'Circus', 'Pull Request')
        ELSE NULL
	END AS novo_nome
FROM musicas AS m
WHERE m.nome LIKE '%Streets%' OR m.nome LIKE '%Her Own%' OR m.nome LIKE '%Inner Fire%' OR m.nome LIKE '%Silly%' OR m.nome LIKE '%Circus%'
ORDER BY m.nome;
