SELECT art.nome AS artista, alb.nome AS album, COUNT(usa.usuario_id) AS seguidores
FROM artistas AS art
INNER JOIN albums AS alb ON art.id = alb.artista_id
INNER JOIN usuario_segue_artista AS usa ON art.id = usa.artista_id
GROUP BY art.nome, alb.nome
ORDER BY seguidores DESC, artista, album;
