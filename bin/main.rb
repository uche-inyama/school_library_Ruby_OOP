require_relative '../lib/person'
require_relative '../lib/student'
require_relative "../lib/teacher"
require_relative '../lib/capitalize_decorator'


student = Student.new("Uchechukwu Inyama", "Grade one Pink")
teacher = Teacher.new("Mrs Nduka", false, "Physics")

person = Person.new("maximilianus")
capitalize_person = Capitalize.new(person)
p person.correct_name
p capitalize_person.correct_name


