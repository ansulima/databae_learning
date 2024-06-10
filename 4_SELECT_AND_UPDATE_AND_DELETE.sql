--SELECT -> VISUALIZAR OS DADOS DO BANCO DE DADOS
SELECT * FROM users
SELECT * FROM profiles
SELECT * FROM categories
SELECT * FROM tags
SELECT * FROM articles
SELECT * FROM comments
SELECT * FROM favorites


ALTER TABLE profiles
DROP COLUMN birthdate

UPDATE + nome da tabela --Nome da tabela entre aspas duplas
SET + nome da coluna = e alguma mensagem --Nome da coluna entre aspas duplas
WHERE + o id que vai ser deletado.

DELETE FROM + nome da tabela + WHERE + número do id

select * from users
select * from articles a 


SELECT *  FROM profiles

ALTER TABLE profiles
DROP COLUMN birthdate


ALTER TABLE profiles
DROP COLUMN password

alter table articles  
drop column birthdate

alter table articles 
drop column avatar_url


SELECT * FROM comments
SELECT * FROM comments WHERE user_id = 2


update "comments" 
set "content" = 'CONTEUDO PARA SER DELETADO'
where id = 4

delete from "comments" where id = 4

-- desc descrescente | limitar registros --
SELECT * FROM articles WHERE is_published = true ORDER BY published_at DESC LIMIT 2;
-- ASC crescente ---
SELECT * FROM articles WHERE is_published = true ORDER BY id LIMIT 1;

-- COUNT --
select COUNT(*) AS total_articles FROM articles WHERE is_published = true;

-- having group by --
SELECT user_id, COUNT(*) as total_comments FROM comments GROUP BY user_id HAVING COUNT(*) >= 2;


-- WILD CARDS --- LIKE

select * from articles a where "content" not like '%MySQL%';
select * from articles a where "content" like '%MySQL%';
select * from articles a where "content" like '%_ySQL%';
select * from articles a where "content" like '%mysql%';
select * from articles a where "content" ilike '%mysql%';