CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  name varchar (100),
  phone varchar (20),
  address varchar (100)
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name varchar (100)
);

CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  name varchar (100),
  birth_Date date
);

CREATE TABLE formats (
  id SERIAL PRIMARY KEY,
  name varchar (100)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title varchar (100),
  category_id integer REFERENCES categories (id),
  actor_id integer REFERENCES actors (id)
);

CREATE TABLE castings (
  id SERIAL PRIMARY KEY,
  actor_id integer REFERENCES actors (id),
  movie_id integer REFERENCES movies (id)
);

CREATE TABLE cassettes (
  id SERIAL PRIMARY KEY,
  name varchar (200),
  movie_id integer REFERENCES movies (id)
);

CREATE TABLE format_cassette (
  id SERIAL PRIMARY KEY,
  format_id integer REFERENCES formats (id),
  cassette_id integer REFERENCES cassettes (id)
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  start_date date,
  end_date date,
  cassette_id integer REFERENCES cassettes (id),
  member_id integer REFERENCES members (id)
);
