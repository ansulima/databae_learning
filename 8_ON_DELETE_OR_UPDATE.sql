crie para mim 30 registros de insert com sql para o postgresql para essas tabelas e com essas colunas, adicionando tambem as
sociacoes segue as tabelas.

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
  username VARCHAR(60) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(30),
  last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_admin BOOLEAN DEFAULT false,
  is_deleted BOOLEAN default false,
  deleted_at  TIMESTAMP with TIME zone default current_timestamp,
  created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP
);

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  birthdate DATE,
  avatar_url VARCHAR(150),
  user_id INT REFERENCES users(id) on  delete set NULL,
  is_deleted BOOLEAN default false,
  deleted_at  TIMESTAMP with TIME zone default current_timestamp,
  created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at  updated_at  TIMESTAMP
);

drop table profiles;
drop table users;


select * from users u 
select * from profiles

select users.id as user_id, profiles.id as profile_id, users.username, users.email, profiles.first_name, profiles.last_name
from users 
join profiles on users.id = profiles.user_id 

delete from users where id = 3



CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
	);
	
	CREATE TABLE employees (
	    id INT PRIMARY KEY,
	    name VARCHAR(255) NOT NULL,
	    department_id INT,
	    FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE
);

INSERT INTO departments (id, name) VALUES (1, 'IT');
INSERT INTO employees (id, name, department_id) VALUES (1, 'John Doe', 1);

select * from employees 
select * from departments 

UPDATE departments SET id = 32 WHERE id = (
 select id from departments  where name = 'IT'
);




Insert into users (username, email, password)
values ('user1', 'user1@example.com', 'password1');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('John', 'Doe', '1980-01-01', 'http://example.com/avatars/johndoe.jpg', 1);

Insert into users (username, email, password)
values
('user2', 'user2@example.com', 'password2');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Jane', 'Doe', '1985-01-01', 'http://example.com/avatars/janedoe.jpg', 2);

Insert into users (username, email, password)
values
('user3', 'user3@example.com', 'password3');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Bob', 'Smith', '1975-01-01', 'http://example.com/avatars/bobsmith.jpg', 3);

Insert into users (username, email, password)
values
('user4', 'user4@example.com', 'password4');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Alice', 'Johnson', '1970-01-01', 'http://example.com/avatars/alicegoodwin.jpg',
4);

Insert into users (username, email, password)
values
('user5', 'user5@example.com', 'password5');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Tom', 'Jones', '1980-01-01', 'http://example.com/avatars/tomjones.jpg', 5);

Insert into users (username, email, password)
values
('user6', 'user6@example.com', 'password6');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Lisa', 'Miller', '1975-01-01', 'http://example.com/avatars/lismiller.jpg', 6);

Insert into users (username, email, password)
values
('user7', 'user7@example.com', 'password7');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('David', 'Brown', '1985-01-01', 'http://example.com/avatars/davidbrown.jpg', 7);

Insert into users (username, email, password)
values
('user8', 'user8@example.com', 'password8');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Sarah', 'Jones', '1970-01-01', 'http://example.com/avatars/sarahjones.jpg', 8);

Insert into users (username, email, password)
values
('user9', 'user9@example.com', 'password9');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Emily', 'Smith', '1975-01-01', 'http://example.com/avatars/emilysmith.jpg', 9);

Insert into users (username, email, password)
values
('user10', 'user10@example.com', 'password10');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Jack', 'Johnson', '1980-01-01', 'http://example.com/avatars/jackjohnson.jpg',
10);

Insert into users (username, email, password)
values
('user11', 'user11@example.com', 'password11');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Jessica', 'Miller',
'1975-01-01', 'http://example.com/avatars/jessicamiller.jpg', 11);

Insert into users (username, email, password)
values
('user12', 'user12@example.com', 'password12');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Steve', 'Brown', '1985-01-01', 'http://example.com/avatars/stevebrown.jpg', 12);

Insert into users (username, email, password)
values
('user13', 'user13@example.com', 'password13');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Karen', 'Jones', '1970-01-01', 'http://example.com/avatars/karenjones.jpg', 13);

Insert into users (username, email, password)
values
('user14', 'user14@example.com', 'password14');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Jane', 'Smith', '1975-01-01', 'http://example.com/avatars/janesmith.jpg', 14);

Insert into users (username, email, password)
values
('user15', 'user15@example.com', 'password15');

Insert into profiles (first_name, last_name, birthdate, avatar_url, user_id)
values ('Aaron', 'Brown', '1980-01-01', 'http://example.com/avatars/aaronbrown.jpg', 15);