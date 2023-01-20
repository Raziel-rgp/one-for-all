SELECT COUNT(hist.usuario_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historico_usuario as hist
INNER JOIN SpotifyClone.usuario as usr
ON usr.usuario_id = hist.usuario_id GROUP BY usr.nome_usuario 
HAVING usr.nome_usuario = 'Barbara Liskov';