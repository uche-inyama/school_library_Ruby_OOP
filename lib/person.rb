require_relative './nameable'
require_relative './book'

class Person < Nameable
  attr_reader :id, :name, :age, :num, :rental
  attr_writer :name, :age

  def initialize(num=22, name="Unkown", parent_permission=true)
    @name = name
    @num = num
    @parent_permission = parent_permission
    @rental = []
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
