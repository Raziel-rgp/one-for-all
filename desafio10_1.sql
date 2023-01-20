SELECT msc.nome_musica as nome, COUNT(hist.musica_id) as reproducoes
FROM SpotifyClone.musicas as msc
INNER JOIN SpotifyClone.historico_usuario AS hist ON hist.musica_id = 
INNER JOIN usuario AS usua ON ulm.usuario_id = u.id
INNER JOIN musicas AS msc ON hist.musica_id = msc.id
WHERE usua.plano_id IN (1,3)
GROUP BY ulm.song_id
ORDER BY nome;