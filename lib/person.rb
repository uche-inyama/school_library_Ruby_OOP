require_relative './nameable'


class Person < Nameable
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(name="Unkown", parent_permission=true)
    @name = name
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_services?
    if of_age? || @parent_permission == true
      return true
    else
      false
    end
  end

  def of_age?
    @age >= 18 ? true : false
  end

  private :of_age?
end
