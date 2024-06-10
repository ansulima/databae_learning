1. O que é CRUD

Create = CRIAR = INSERT INTO = (INSERIR )
READ = LER = SELECT * (id, name) = (SELECIONAR)
UPDATE = ATUALIZAR = UPDATE =  (ATUALIZAR)
DELETE = DELETA = (EXCLUI)



2. Subqueries (Nested queries) [v]

3. Joins 
4. Deixa os erros ocorrer e incentivar os erros
5. Ensinar a procurar o error a remover o que é do seu computador
6. Explicar como ler um problema e como criar um query

select * from articles a order by id desc

update table_NAME set name_column where id =  5

1. Quero atualizar, inserir, deletar, selecionar 
2. selecionar users (tabela), filtro (limit 10 USERS order by DESC)10 ultimos | 

RODOLFO o título  Database e a exploração2  está errado, eu queria você modificasse para O banco de dados dos sonhos.

select * from articles a where title like '%explora%'

update articles set title = 'O banco de dados dos sonhos' where id = 4

select * from articles a where id = 4


-- Quem pode ser criado sem relação com uma outra tabela. (usuário, porque o usuário, precisa logar e depois criar um profile)

select * from users u
select * from profiles p 

select u.id, u.username, u.email, p.first_name, p.last_name from users u INNER JOIN profiles p on u.id = p.user_id

select u.id, u.username, u.email, p.first_name, p.last_name from users u FULL JOIN profiles p on u.id = p.user_id

select u.id, u.username, u.email, p.first_name, p.last_name from users u RIGHT JOIN profiles p on u.id = p.user_id

select u.id, u.username, u.email, p.first_name, p.last_name from users u LEFT JOIN profiles p on u.id = p.user_id

-- SUBQUERIES (NESTED QUERY)

-- O ARTIGO COM título "Skill curso desenvolvimento de software" está errado, o título certo é o "skill.dev curso desenvolvimento de software" alterar por favor

select title from articles a where title = 'Desenvolvimento de AI'

UPDATE articles
SET title = 'skill.dev curso desenvolvimento de software'
where id = (
  select id
  from articles
  where title = 'Skill curso desenvolvimento de software'
)

select * from articles a where title = 'skill.dev curso desenvolvimento de software'

Rodolfo quero que você atualize o título do artigo que tem titulo com "skill.dev curso desenvolvimento de software" 
quero você altere para "skill.dev curso ciencia da computacao"

select id from articles a where title like '%curso desenvolvimento de%'
select * from articles a where id = 6

select * from users u 
select * from profiles p 


UPDATE articles
SET title = 'skill.dev curso ciencia da computacao'
WHERE id = (
  select id
  from articles 
  where title like '%curso desenvolvimento de%'
)

-- Quem pode ser criado sem relação com uma outra tabela. (usuário, porque o usuário, precisa logar e depois criar um profile)
-- [ ] Authentication = usuario e senha (USER) -> (PROFILE)
 
-- [ ] Autorization = permissão para acessar uma dada pagina de acordo com o seu role


-- [  google   ]
-- [ login: usario e senha ]

-- entrei na pagina. 

-- INNER JOIN: Retorna todos os registros que tem um match entre as tabelas
-- LEFT JOIN: Retorna todos os registros da tabela a esquerda e que combinam com a direita
-- RIGHT JOIN: Retorna todos os registros a direita e combinados com a tabela da esquerda
-- FULL JOIN: Retorna todos os dados combinados e adiciono null

select users.id, users.username, users.email, users.is_admin, p.first_name, p.last_name 
from users
inner join profiles
as p 
on users.id = p.user_id 


select users.id, users.username, users.email, users.is_admin, p.first_name, p.last_name 
from users
right join profiles
as p 
on users.id = p.user_id 


select users.id, users.username, users.email, users.is_admin, p.first_name, p.last_name 
from users
left join profiles
as p 
on users.id = p.user_id 



select users.id, users.username, users.email, users.is_admin, p.first_name, p.last_name 
from users
full join profiles
as p 
on users.id = p.user_id 