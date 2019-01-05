#Usei um "with as" para linkar equipes e piloto, poupando alguns joins direto na query
#Isso fez a query original reduzir de 6s para algo em torno de 0.2s.
#Somente "resultado" e "treino_oficial" pareiam equipe e piloto. Adotei a resultado.


---------------

#Pergunta C:

with plts_equipe_nome as
(select distinct c.temporada_ano, r.piloto_id, r.equipe_id, p.apelido, e.nome as nome_equipe
from resultado r
join piloto p
on p.id = r.piloto_id
join equipe e
on e.id = r.equipe_id
join corrida c on
c.id = r.corrida_id)

select min(t.tempo), p.apelido, p.equipe_id, p.temporada_ano
    from plts_equipe_nome p
    left join tempo_por_parada t
    on t.piloto_id = p.piloto_id
where t.tempo is not null
group by p.temporada_ano


---------------

#Pergunta D:

with plts_equipe_nome as
(select distinct c.temporada_ano, r.piloto_id, r.equipe_id, p.apelido, e.nome as nome_equipe
from resultado r
join piloto p
on p.id = r.piloto_id
join equipe e
on e.id = r.equipe_id
join corrida c on
c.id = r.corrida_id)

select min(t.tempo), p.apelido, p.equipe_id, p.temporada_ano
    from plts_equipe_nome p
    left join tempo_por_parada t
    on t.piloto_id = p.piloto_id
where t.tempo is not null
group by p.temporada_ano, p.equipe_id
