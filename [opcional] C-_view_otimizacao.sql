#Criei uma view para associar equipes e piloto, para poupar o banco de joins nas tabelas: resultado, equipe e piloto.
#Isso fez a query original reduzir de 6s para algo em torno de 0.2s.
#As tabelas resultado e treino_oficial são as únicas que pareiam equipe e piloto. Adotei a resultado, já que treino_oficial pode não conter todos.

create view 'pilotos_apelido_equipe_nome' as
select distinct r.piloto_id, r.equipe_id, p.apelido, e.nome as nome_equipe
from resultado r
join piloto p
on p.id = r.piloto_id
join equipe e
on e.id = r.equipe_id

---------------

#Com esta view, fiz a query para a pergunta C assim:

select min(t.tempo), p.apelido, p.equipe_id, t.temporada_ano
    from pilotos_apelido_equipe p
    left join pitstop_temporadas t 
    on t.piloto_id = p.piloto_id
where t.tempo is not null
group by t.temporada_ano


---------------

#Já a query para a pergunta D ficou assim:

select min(t.tempo), p.apelido, p.equipe_id, t.temporada_ano
    from pilotos_apelido_equipe p
    left join pitstop_temporadas t 
    on t.piloto_id = p.piloto_id
where t.tempo is not null
group by t.temporada_ano, p.equipe_id