CREATE TABLE users(
  id SERIAL PRIMARY key,
  username varchar(60), 
  email varchar(100),
  password varchar(50),
  last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_admin BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE profiles (
  id SERIAL PRIMARY KEY,
  first_name varchar(60),
  last_name varchar(60),
  birthdate DATE,
  avatar_url varchar(100),
  user_id INT REFERENCES users(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE categories ( 
  id SERIAL PRIMARY KEY,
  name varchar(100)
)

CREATE TABLE tags (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
)

CREATE TABLE articles (
  id SERIAL PRIMARY KEY,
  title varchar(100),
  content text,
  tags VARCHAR (30),
  views INT,
  likes INT,
  avatar_url varchar(150),
  user_id INT REFERENCES Users(id),
  is_published BOOLEAN DEFAULT false,
  category_id INT REFERENCES categories(id),
  published_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  content text,
  article_id INT REFERENCES articles(id),
  user_id INT REFERENCES users(id),
  is_deleted BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE favorites (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  article_id INT REFERENCES articles(id),
  favorited_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

