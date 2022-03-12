SELECT art.nome AS artista, alb.nome AS album
FROM artistas AS art
INNER JOIN albums AS alb ON art.id = alb.artista_id
LIMIT 2;
