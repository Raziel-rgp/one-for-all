SELECT msc.nome_musica AS nome, COUNT(hist.musica_id)
AS reproducoes FROM SpotifyClone.musicas AS msc
INNER JOIN SpotifyClone.historico_usuario AS hist ON hist.musica_id = msc.musica_id
INNER JOIN SpotifyClone.usuario AS usr ON usr.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.plano AS p ON usr.plano_id = p.plano_id
WHERE usr.plano_id IN (1,3) GROUP BY nome ORDER BY nome; 