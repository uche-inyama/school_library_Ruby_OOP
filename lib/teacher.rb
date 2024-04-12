class Teacher < Person
  attr_accessor :specialization

  def initialize(name, age, specialization)
    super(age, name, parent_permission)
    @specialization = specialization
  end
end