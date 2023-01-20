SELECT usr.nome_usuario AS usuario,
COUNT(hist.usuario_id) AS qt_de_musicas_ouvidas,
SUM(ROUND(msc.duracao_segundos/60, 2)) AS total_minutos
FROM SpotifyClone.usuario as usr
INNER JOIN SpotifyClone.historico_usuario as hist ON usr.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.musicas as msc ON hist.musica_id = msc.musica_id
GROUP BY usr.nome_usuario ORDER BY usr.nome_usuario;