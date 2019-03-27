require 'faker'
require 'pg'
require_relative "params"

Faker::Config.locale = 'es'

con = PG::Connection.open(:dbname => 'university')

tables = File.read("university.sql")

con.exec tables

# insert courses
$courses.each { |course| con.exec "INSERT INTO courses(name) VALUES ('#{course}');" }

# insert specialities
$specialities.each { |speciality| con.exec "INSERT INTO specialities(name) VALUES ('#{speciality}');" }

# insert students
$num_students.times { 
  con.exec "INSERT INTO students(name, speciality_id) VALUES ('#{Faker::Name.name }', '#{rand($specialities.size) + 1}');" 
}

# insert offices
$offices.each { |office| con.exec "INSERT INTO offices(name) VALUES ('#{office}');" }

# insert teachers
$num_teachers.times { 
  con.exec "INSERT INTO teachers(name, office_id) VALUES ('#{Faker::Name.name }', '#{rand($offices.size) + 1}');" 
}

# insert sections
$sections.each { |section| con.exec "INSERT INTO sections(name) VALUES ('#{section}');" }

# insert register

$num_registers.times {
  con.exec "INSERT INTO registers(student_id, teacher_id, course_id, section_id) VALUES ('#{rand($num_students) + 1}', '#{rand($num_teachers) + 1}', '#{rand($courses.size) + 1}', '#{rand($sections.size) + 1}') ;" 
}
