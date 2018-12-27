select hp.piloto_id, p.apelido, sum(hp.pontuacao) as pontos
from historico_piloto as hp
join piloto p on
p.id = hp.piloto_id
where hp.piloto_id NOT IN (select distinct piloto_id from historico_piloto where posicao <= 3)
group by hp.piloto_id
order by sum(hp.pontuacao) desc
limit 1;

