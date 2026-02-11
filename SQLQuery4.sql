
--1
select nome, ano from filmes
--2
select nome, ano, duracao from filmes order by ano asc
--3
select nome, ano, duracao from filmes where nome = 'De Volta Para o Futuro'
--4
select nome, ano, duracao from filmes where ano = 1997
--5
select nome, ano, duracao from filmes where ano > 2000
--6
select nome, ano, duracao from filmes where duracao between 100 and 150
--7
select ano, count(*) as quantidade from filmes group by ano order by quantidade desc
--8
select Id, primeironome, ultimonome, genero from Atores
--9
select Id, primeironome, ultimonome, genero from Atores where genero = 'f' order by PrimeiroNome
--10
select F.nome, g.genero from Filmes F join Generos G on f.id = g.Id
--11
select F.nome, g.genero from Filmes F join Generos G on f.id = g.Id where genero = 'Mistério'
--12
select F.nome,
       A.primeironome,
       A.ultimonome,
       E.papel
from Filmes F
join ElencoFilme E on F.id = E.id
join Atores A on E.id = A.id;