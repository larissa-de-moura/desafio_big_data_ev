select he.corrida_id, c.nome
from historico_equipe he
join corrida c on
he.corrida_id = c.id
where he.pontuacao > '0'
group by he.corrida_id
having count(he.pontuacao) = 3

