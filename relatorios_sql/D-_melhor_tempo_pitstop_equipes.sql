select min(t.tempo) as tempo, r.equipe_id, e.nome as nome_equipe, c.temporada_ano
    from tempo_por_parada t
    left join resultado r
    on t.piloto_id = r.piloto_id
join piloto p
on p.id = r.piloto_id
join equipe e
on e.id = r.equipe_id
join corrida c on
c.id = t.corrida_id
where t.tempo is not null
group by c.temporada_ano, nome_equipe
order by c.temporada_ano, tempo 
