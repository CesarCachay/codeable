CREATE TABLE sections (
  id SERIAL PRIMARY KEY,
  name text
);

CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  name text
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  name text
);

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  name text,
  office_id integer REFERENCES offices (id)
);

CREATE TABLE specialities (
  id SERIAL PRIMARY KEY,
  name text
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  speciality_id integer REFERENCES specialities (id)
);

CREATE TABLE registers (
  id SERIAL PRIMARY KEY,
  student_id integer REFERENCES students (id),
  teacher_id integer REFERENCES teachers (id),
  course_id integer REFERENCES courses (id),
  section_id integer REFERENCES sections (id)
);
