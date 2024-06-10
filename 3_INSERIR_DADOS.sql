INSERT INTO users (username, email, password, is_admin)
VALUES ('Anderson', 'anderson@gmail.com', '123', true);

INSERT INTO users (username, email, password, is_admin)
VALUES ('Anderson2', 'anderson@2gmail.com', '123', false);

INSERT INTO users (username, email, password, is_admin)
VALUES ('Anderson3', 'anderson3@gmail.com', '123', false);

INSERT INTO users (username, email, password, is_admin)
VALUES ('Anderson4', 'anderson4@gmail.com', '123', false);


INSERT INTO profiles (first_name, lst_name, birthdate, avatar_url, user_id)
VALUES ('Anderson', 'Freitas', DATE '1991-06-20', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxKlMjLMYdfmx692cz7CVVmseQuY1ztX5d6A&s', 1);

INSERT INTO categories (name)
VALUES ('Ciencia da informação');

-- INSERT INTO public.users
-- (id, username, email, "password", last_login, is_admin, create_at, updated_at)
-- VALUES(1, 'RODOLFO', 'rodolfo.peixoto@gmail.com', 'SAFASFA', '2024-03-27 10:33:20.138', true, '2024-03-27 10:33:20.138', '2024-03-27 10:33:20.138');

-- INSERT INTO public.users
-- (id, username, email, "password", last_login, is_admin, create_at, updated_at)
-- VALUES(2, 'JOSÉ CARLOS', 'sandro@gmail.com', 'asfasda', '2024-03-27 10:35:05.680', false, '2024-03-27 10:35:05.680', '2024-03-27 10:35:05.680');


INSERT INTO users (username, email, password, is_admin)
VALUES ('rodo','rodo@rogpe.tech', 'teste1', true)

INSERT INTO users (username, email, password, is_admin)
VALUES ('rodo2','rodo2@rogpe.tech', 'teste1', false)

INSERT INTO users (username, email, password, is_admin) 
VALUES ('rodo3','rodo3@rogpe.tech', 'teste1', false);

INSERT INTO users (username, email, password, is_admin) 
VALUES ('rodo4','rodo4@rogpe.tech', 'teste1', false);


INSERT INTO profiles (first_name, last_name, birthdate, avatar_url, user_id)
VALUES ('RODOLFO', 'Peixoto', DATE '1991-12-11', 'https://mk-minio.snzkaq.easypanel.host/rogpetechassets/assets/rogpebg-white.png', 3);

INSERT INTO categories (name)
VALUES ('ai');
INSERT INTO categories (name)
VALUES ('Tecnologia');
INSERT INTO categories (name)
VALUES ('Desenvolvimento');
INSERT INTO categories (name)
VALUES ('Ciencia da Computação');

INSERT INTO tags (name)
VALUES ('computacao');
INSERT INTO tags (name)
VALUES ('dev');
INSERT INTO tags (name)
VALUES ('database');

INSERT INTO articles (title, content, tags, views, likes, user_id, is_published, category_id)
VALUES ('Desenvolvimento de AI', '
Introdução:
O desenvolvimento de Intelliência Artificial (AI) é um assunto muito
relevante e dinâmico na actualidade, pois a tecnologia está evoluindo a
cada dia. A IA tem o potencial de transformar diversas indústrias e
aspectos da nossa vida, desde a saúde até a educação e a finança. Neste
conteúdo, vamos explorar o que é AI, suas aplicações e os desafios
enfrentados na sua developmente.

Parte 1: O que é AI?

* Definição de AI e seus tipos (Reconhecimento de Fala, Visão
Computacional, Robótica, etc.)
* Histórico do desenvolvimento da IA
* Características da IA e diferenças com a inteligência humana

Parte 2: Aplicações da IA

* Saúde: diagnóstico de doenças, previsão de resultados de tratamentos,
análise de dados médicos
* Educação: personalização do aprendizado, sistemas de recomendação de
conteúdo, chatbots para ajuda estudantil
* Finanças: análise de dados financeiros, predições de mercado, gestão de
riscos
', 10, 20, 3, true, 1);



INSERT INTO articles (title, content, tags, views, likes, user_id, is_published, category_id)
VALUES ('Database e a exploração2', 'Blog Database
The Blog Database in MySQL as the starting point to develop the blogging websites and mobile applications.

Details
The complete details to design the database for blog is available at Guide To Design A Database For Blog Management In MySQL.

Database Schema
The visual database design of the Blog Database is shown below.', (select id from tags where name = 'dev'),12220, 2580, 
(
  select id from users where username = 'rodo3'
)
, true, 1);


INSERT INTO articles (title, content, tags, views, likes, user_id, is_published, category_id)
VALUES ('Skill curso desenvolvimento de software', '
a skill tem cursos de desenvolvimento de software e bla bla bla 
', 3, 10000, 12000,
  (
    SELECT id 
    FROM users 
    WHERE username = 'user2'
  ), false, 
  (
    SELECT id 
    from categories 
    where name = 'Desenvolvimento'
  )

);


INSERT INTO comments (content, article_id, user_id)
VALUES ('
Fico extremamente impressionado com o conteúdo deste artigo sobre
desenvolvimento de AI! É claro que a tecnologia está evoluindo rapidamente
e pode transformar diversas indústrias. No entanto, é fundamental
considerar as implicações éticas e sociais dessa evolução para garantir
que a IA seja usada de forma responsável e segura. É importante manter o
dialogo e o aprendizado em curso para garantir que a IA esteja alinhada
com nossos valores e objetivos como sociedade.
', 1, 3);

INSERT INTO favorites (user_id, article_id)
VALUES (1, 1);


INSERT INTO comments (content, article_id, user_id)
VALUES ('
O artigo é uma excelente visão geral do desenvolvimento de AI e suas
aplicações. É importante lembrar que a IA não é um substituto para a
inteligência humana, mas sim uma ferramenta que pode ajudar a melhorar
nossas vidas.
', 1, 2);


INSERT INTO comments (content, article_id, user_id)
VALUES ('
O COMENTÁRIO DO RODOLFO SOBRE TAL ASSUNTO
', (select id FROM articles DESC limit 1), 
(select id FROM users LIMIT 1));

INSERT INTO comments (content, article_id, user_id)
VALUES ('
O COMENTÁRIO DO PEIXOTO SOBRE TAL ASSUNTO
', (select id FROM articles ASC limit 1), 
(select id FROM users DESC LIMIT 1));

DO $$
DECLARE
  user_id INT;
  category_id INT;
  article_id INT
BEGIN
  INSERT INTO users (username, email, password, is_admin) VALUES ('user1', 'user1@example.com', 'example1', false) RETURNING id INTO user_id
  INSERT INTO users (username, email, password, is_admin) VALUES ('user2', 'user2@example.com', 'example2', false) RETURNING id INTO user_id
  INSERT INTO users (username, email, password, is_admin) VALUES ('user3', 'user3@example.com', 'example3', false) RETURNING id INTO user_id
  INSERT INTO users (username, email, password, is_admin) VALUES ('user4', 'user4@example.com', 'example4', false) RETURNING id INTO user_id
  INSERT INTO users (username, email, password, is_admin) VALUES ('user5', 'user5@example.com', 'example5', false) RETURNING id INTO user_id
  INSERT INTO users (username, email, password, is_admin) VALUES ('user6', 'user6@example.com', 'example6', false) RETURNING id INTO user_id

  INSERT INTO profiles (first_name, last_name, avatar_url, user_id, birthdate)
  VALUES ('Jhon', 'Lee', 'https://url.com.br/test.png',
           (
              SELECT id 
              FROM users 
              WHERE username = 'user1'
            ), DATE '1991-12-11'
         )
END $$




-- CRUD 

-- CREATE  (CRIAR) = INSERT INTO
-- READ (LEITURA) = SELECT * (id,name)
-- UPDATE (ATUALIZAR) = UPDATE 
-- DESTROY (EXCLUIR) = DELETE