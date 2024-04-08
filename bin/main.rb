require_relative '../lib/person'
require_relative '../lib/student'
require_relative "../lib/teacher"
require_relative '../lib/capitalize_decorator'
require_relative '../lib/trimmer_decorator'

student = Student.new("Uchechukwu Inyama", "Grade one Pink")
teacher = Teacher.new("Mrs Nduka", false, "Physics")

person = Person.new(23, "maximilianus")
capitalize_person = CapitalizeDecorator.new(person)
trimmed_person = TrimmerDecorator.new(capitalize_person)

# p capitalize_person.correct_name

p trimmed_person.correct_name







