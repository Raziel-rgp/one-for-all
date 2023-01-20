SELECT
art.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = art.artista_id
WHERE nome_artista = 'Elis Regina' ORDER BY alb.nome_album;