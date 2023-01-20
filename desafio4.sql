SELECT usuarios.nome_usuario AS usuario,
IF (MAX(YEAR(hist.data_reproducao) >= 2021), 'Usuário ativo', 'Usuário inativo') 
AS status_usuario FROM SpotifyClone.usuario AS usuarios
INNER JOIN SpotifyClone.historico_usuario AS hist ON (hist.usuario_id = usuarios.usuario_id)
GROUP BY usuario ORDER BY usuario;