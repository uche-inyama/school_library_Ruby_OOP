require_relative './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom)
    super(age, name, true)
    @classroom = classroom
  end

  def add_classroom
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end