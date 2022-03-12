SELECT u.nome AS usuario, IF(MAX(hr.data_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM usuarios AS u
INNER JOIN historico_de_reproducoes AS hr ON u.id = hr.usuario_id
GROUP BY u.nome
ORDER BY u.nome;

-- ref: https://www.devmedia.com.br/forum/trazer-registro-com-data-mais-atual-para-cada-tipo-de-produto/444756
