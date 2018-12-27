#Criei uma view para ver as médias das últimas 10 temporadas, excluindo o ano atual (que não tem histórico ainda) sem usá-lo nominalmente.
#Usei cast para compatibilizar tipos, já que "ano" na tabela temporada é integer e a função substr() só funciona com texto.
#Precisei da função substr() para extrair o ano da expressão current_date, já que não existe um current_year no SQLite, por exemplo.

CREATE VIEW medias_ultimas_10_temporadas as 
select avg(hp.pontuacao) as media, hp.piloto_id, c.temporada_ano 
from historico_piloto hp 
join corrida c on hp.corrida_id = c.id 
where c.temporada_ano IN (select ano from temporada 
    where cast(ano as text) is not substr(cast(current_date as text),1,4) 
    order by ano desc limit 10) 
group by hp.piloto_id, c.temporada_ano 
order by media desc
