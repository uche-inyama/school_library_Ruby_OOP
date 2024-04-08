require_relative './book'
require_relative './person'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date=nil, person, book)
    @date = date

    @person = person
    person.rental << self

    @book = book
    book.rental << self
  end

end