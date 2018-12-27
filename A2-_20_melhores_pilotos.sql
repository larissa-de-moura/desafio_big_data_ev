select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id 
	from medias_ultimas_10_temporadas 
	where temporada_ano  = substr(cast(current_date as int),1,4) - 1
	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 2
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 3
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 4
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 5
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
  	where temporada_ano = substr(cast(current_date as int),1,4) - 6
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 7
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 8
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 9
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 8
    order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 9
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
union
select media, temporada_ano, piloto_id, p.apelido from 
	(select media, temporada_ano, piloto_id from medias_ultimas_10_temporadas 
   	where temporada_ano = substr(cast(current_date as int),1,4) - 10
   	order by media desc limit 20) m
join piloto p on
m.piloto_id = p.id
order by temporada_ano, media desc
