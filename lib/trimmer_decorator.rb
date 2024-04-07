require_relative './nameable_decorator'

class TrimmerDecorator < Nameable_decorator
  def correct_name
    nameable.correct_name.upcase
  end
end