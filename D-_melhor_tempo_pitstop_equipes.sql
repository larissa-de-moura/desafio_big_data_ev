select min(t.tempo), p.equipe_id, p.nome_equipe, c.temporada_ano
    from tempo_por_parada t
    left join pilotos_apelido_equipe_nome  p
    on t.piloto_id = p.piloto_id
join corrida c on
c.id = t.corrida_id
where t.tempo is not null
group by c.temporada_ano, p.equipe_id