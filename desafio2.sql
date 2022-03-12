SELECT COUNT(DISTINCT m.id) AS cancoes, COUNT(DISTINCT a.artista_id) AS artistas, COUNT(DISTINCT a.id) AS albuns
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.albums AS a ON m.album_id = a.id;