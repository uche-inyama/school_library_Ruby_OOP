require_relative './nameable_decorator'

class CapitalizeDecorator < Nameable_decorator
  def correct_name
    nameable.correct_name.capitalize()
  end
end