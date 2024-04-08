class Classroom
  attr_accessor :label, :students

  def initialize
    @label = label
    @students = []
  end

  def add_student(student)
    @students.add(student)
    student.classroom = self
  end
end