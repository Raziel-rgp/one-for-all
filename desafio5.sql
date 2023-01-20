SELECT msc.nome_musica AS cancao, COUNT(hist.usuario_id) AS reproducoes
FROM SpotifyClone.musicas as msc INNER JOIN SpotifyClone.historico_usuario 
AS hist ON msc.musica_id = hist.musica_id GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;