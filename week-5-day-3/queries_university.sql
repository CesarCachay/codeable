-- Cuáles son las 5 especialidades que tiene la mayor cantidad de alumnos?
select s.name, count(*) from specialities as s
  INNER JOIN students as st on st.speciality_id = s.id
  GROUP BY s.name
  ORDER BY count(s.name) DESC
  LIMIT 5;

-- Cuáles son las 10 secciones más utilizadas? Hay alguna sección que no es usada en ningún curso?  
select s.name, count(*) from registers as r
  INNER JOIN sections as s on s.id = r.section_id
  GROUP BY s.name
  ORDER BY count(s.name) DESC
  LIMIT 10;

-- Cuáles son los alumnos que tienen más de 6 cursos?
select s.name, s.id, count(s.name)  from students as s
  INNER JOIN registers as r on r.student_id = s.id
  INNER JOIN courses as c on c.id = r.course_id
  GROUP BY s.name, s.id
  HAVING count(s.name) >= 6
  ORDER BY count(s.name) desc, s.id;

-- Cuál es el profesor que imparte más clases?
select t.name, count(c.name) from teachers as t
  INNER JOIN registers as r on r.teacher_id = t.id
  INNER JOIN courses as c on c.id = r.course_id
  GROUP BY c.name, t.name
  ORDER BY count(c.name) DESC;
