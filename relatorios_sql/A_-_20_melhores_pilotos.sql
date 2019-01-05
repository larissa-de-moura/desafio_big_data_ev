with vinte_melhores as 
(select avg(hp.pontuacao) as media, hp.piloto_id, c.temporada_ano 
from historico_piloto hp 
join corrida c on hp.corrida_id = c.id 
where c.temporada_ano IN (select ano from temporada 
    where cast(ano as text) is not substr(cast(current_date as text),1,4) 
    order by ano desc limit 10) 
group by hp.piloto_id, c.temporada_ano 
order by media desc)

select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id 
	from vinte_melhores 
	where temporada_ano  = substr(cast(current_date as int),1,4) - 1
	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 2
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 3
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 4
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 5
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
  	where temporada_ano = substr(cast(current_date as int),1,4) - 6
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 7
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 8
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 9
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 8
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 9
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from vinte_melhores 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 10
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
order by temporada_ano, media desc
