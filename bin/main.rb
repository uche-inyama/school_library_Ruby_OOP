require_relative '../lib/person'
require_relative '../lib/student'
require_relative "../lib/teacher"


person = Person.new
student = Student.new("Uchechukwu Inyama", "Grade one Pink")
teacher = Teacher.new("Mrs Nduka", false, "Physics")

puts student.inspect
puts teacher.inspect