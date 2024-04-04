class Teacher < Person
  attr_accessor :specialization

  def initialize(name, parent_permission, specialization)
    super(name, parent_permission)
    @specialization = specialization
  end
end