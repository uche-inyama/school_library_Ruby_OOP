class Student < Person
  attr_accessor :classroom

  def initialize(name, classroom)
    super(name, false)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end