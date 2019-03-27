CREATE TABLE airplanes (
  id SERIAL PRIMARY KEY,
  model varchar (50)
);

CREATE TABLE airprograms (
  id SERIAL PRIMARY KEY,
  airlain varchar (50)
);

CREATE TABLE airports (
  id SERIAL PRIMARY KEY,
  name varchar (100),
  city varchar (100),
  country varchar (100),
  state varchar (100)
);

CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  emptyseats varchar (50),
  airplane_id integer REFERENCES airplanes (id)
);

CREATE TABLE travels (
  id SERIAL PRIMARY KEY,
  airprogram_id integer REFERENCES airprograms (id),
  fly_id integer REFERENCES flights (id),
  airport_departure_id integer REFERENCES airports (id),
  airport_arrival_id integer REFERENCES airports (id),
  date date
);

CREATE TABLE scales (
  id SERIAL PRIMARY KEY,
  travel_id integer REFERENCES travels (id),
  airport_id integer REFERENCES airports (id),
  scale_number integer
);
