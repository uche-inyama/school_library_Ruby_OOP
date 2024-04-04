class Student < Person
  attr_accessor :classroom

  def initialize(name, classroom)
    super(name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end