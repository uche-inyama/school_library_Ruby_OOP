require_relative './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(name, classroom)
    super(num, name, true)
    @classroom = classroom
    classroom.students << self
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end