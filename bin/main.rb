require_relative '../lib/person'
require_relative '../lib/student'
require_relative "../lib/teacher"
require_relative '../lib/capitalize_decorator'
require_relative '../lib/trimmer_decorator'
require_relative '../lib/book'
require_relative '../lib/rental'

classroom = Classroom.new("Grade 1, Pink")
student = Student.new("Uchechukwu Inyama", classroom)
p student
p student.classroom
# teacher = Teacher.new("Mrs Nduka", false, "Physics")

person = Person.new(23, "maximilianus")
book = Book.new("things fallen apart", "AC")
rental = Rental.new(person, book)
# p rental
# p book.rentals
#  person.rental.map {|r| p r.person}
capitalize_person = CapitalizeDecorator.new(person)
trimmed_person = TrimmerDecorator.new(capitalize_person)








