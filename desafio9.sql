SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM historico_de_reproducoes AS hr
INNER JOIN usuarios AS u ON hr.usuario_id = u.id
WHERE u.nome = 'BILL';
