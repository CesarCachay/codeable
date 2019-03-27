require "faker"
require_relative "params"

Faker::Config.locale = 'es'


file = File.open("seed.sql", "w")

# seed courses
$courses.each { |course| file.puts "INSERT INTO courses(name) VALUES ('#{course}');" }

# seed specialities
$specialities.each { |speciality| file.puts "INSERT INTO specialities(name) VALUES ('#{speciality}');" }

# seed students
$num_students.times { 
  file.puts "INSERT INTO students(name, speciality_id) VALUES ('#{Faker::Name.name }', '#{rand($specialities.size) + 1}');" 
}

# seed offices
$offices.each { |office| file.puts "INSERT INTO offices(name) VALUES ('#{office}');" }

# seed teachers
$num_teachers.times { 
  file.puts "INSERT INTO teachers(name, office_id) VALUES ('#{Faker::Name.name }', '#{rand($offices.size) + 1}');" 
}

# seed sections
$sections.each { |section| file.puts "INSERT INTO sections(name) VALUES ('#{section}');" }

# seed register

$num_registers.times {
  file.puts "INSERT INTO registers(student_id, teacher_id, course_id, section_id) VALUES ('#{rand($num_students) + 1}', '#{rand($num_teachers) + 1}', '#{rand($courses.size) + 1}', '#{rand($sections.size) + 1}') ;" 
}
