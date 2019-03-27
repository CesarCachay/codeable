
Insert courses:
```sql
INSERT INTO courses("name") VALUES ('Matemática 2');
INSERT INTO courses("name") VALUES ('Física Química');
INSERT INTO courses("name") VALUES ('Descriptiva ');
INSERT INTO courses("name") VALUES ('Investigación 1');
INSERT INTO courses("name") VALUES ('Dibujo');

INSERT INTO specialities("name") VALUES ('Industrial');
INSERT INTO specialities("name") VALUES ('Sistemas');

INSERT INTO students("name", "speciality_id") VALUES ('Luis Zuloaga', 1);
INSERT INTO students("name", "speciality_id") VALUES ('Raúl Rojas', 2);

INSERT INTO offices("name") VALUES ('CB-110');
INSERT INTO offices("name") VALUES ('CB-120');
INSERT INTO offices("name") VALUES ('CB-214');
INSERT INTO offices("name") VALUES ('SC-220');

INSERT INTO teachers("name", "office_id") VALUES ('Carlos Arambulo', '3');
INSERT INTO teachers("name", "office_id") VALUES ('Petra Rondinel', '1');
INSERT INTO teachers("name", "office_id") VALUES ('Víctor Moncada', '2');
INSERT INTO teachers("name", "office_id") VALUES ('Cesar Fernadez', '4');

INSERT INTO sections("name") VALUES ('U');
INSERT INTO sections("name") VALUES ('V');
INSERT INTO sections("name") VALUES ('W');

INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (1, 1,	1, 1);
INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (1, 1,	2, 1);
INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (1, 1,	3, 3);
INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (2, 2,	4, 2);
INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (2, 2,	1, 2);
INSERT INTO registers("student_id", "teacher_id", "course_id", "section_id") VALUES (2, 2,	5, 1);
```
