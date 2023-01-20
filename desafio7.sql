SELECT art.nome_artista AS artista, alb.nome_album AS album,
COUNT(sa.artista_id) AS seguidores FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa ON art.artista_id = sa.artista_id
GROUP By art.nome_artista, alb.nome_album ORDER By seguidores DESC, artista, album;