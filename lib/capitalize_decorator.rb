require_relative './base_decorator'

class Capitalize < Nameable_decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end