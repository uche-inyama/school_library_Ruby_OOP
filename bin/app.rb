require_relative '../lib/person'
require_relative '../lib/student'
require_relative "../lib/teacher"
require_relative '../lib/capitalize_decorator'
require_relative '../lib/trimmer_decorator'
require_relative '../lib/book'
require_relative '../lib/rental'



class App

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def save_data
    save_info
  end

  def get_input(text)
    print "#{text} : "
    gets.chomp
  end

  def is_empty?(array)
    array.empty?
  end

  def create_object(class_name, store, *args)
    store.push(class_name.new(*args))
  end

  def create_book
    title = get_input('Title')
    author = get_input('Author')
    create_object(Book, @books, title, author)
    puts "\n"
    puts 'New book created successfully'
  end

  def list_books
    if is_empty?(@books)
      puts "\n"
      puts 'No books in the library'
      return 
    end
    @books.each do |book|
      puts "Title : #{book.title} | Author : #{book.author}"
    end
  end

  def list_people
    #check if @people.empty?
    #loop through @books and puts full_name
    if is_empty?(@people)
      puts "There is no person on this list."
    end
    @people.each do |person|
      puts "#{person.name} - #{person.class}"
    end
  end

  def create_student
    name = get_input('Name')
    age = get_input('Age')
    create_object(Student, @people, age, name)
    puts "\n"
    puts 'New student created successfully'
  end

  def create_teacher
    name = get_input('Name')
    age = get_input('Age')
    specialization = get_input('Specialization')
    create_object(Teacher, @people, age, name, specialization)
    puts "\n"
    puts "New teacher created successfully"
  end

  def create_person
    puts "\n"
    print 'Do you want to create a student (1) or a teacher (2) ? [Input a number] : '
    puts "\n"
    choice = gets.chomp
    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts '\n'
      puts 'Please enter a valid number [1 or 2]'
      puts "\n"
      return
    end
    puts "\n"
    puts 'Person created successfully'
  end

  def create_rental
    if @books.size.zero?
      puts 'No books in the library'
    elsif @people.size.zero?
      puts 'No people registered in the library'
    else
      puts '\n'
      puts 'Select a book from the following list by number'
      @books.each_with_index do |book, index|
        puts "#{index}) - Book Title : #{book.title} | #{book.author}"
      end
      rent_book = gets.chomp.to_i
      puts 'Select a person from the following list by number'
      puts "\n"
      @people.each_with_index do |person, index|
        puts "#{index}) - Name : #{person.name} | ID : #{person.id} | Age : #{person.age}"
      end
      puts "\n"
      rental_person = gets.chomp.to_i
      print 'Date (YYYY/MM/DD) : '
      date = gets.chomp.to_s

      rental_info = Rental.new(date, @books[rent_book_id], @people[rental_person_id])
      @rentals.push(rental_info)
      puts '\n'
      puts "Rental created successfully"
    end

    def list_rentals
      puts '\n'
      if @rentals.empty?
        puts 'No rent is registered in the library'
      else
        puts 'Select a person from the following list by ID'
        @people.each do |person|
          puts "ID : #{person.id} => #{person.name}"
        end
        puts "\n"
        print "Enter person\'s ID :"
        person = gets.chomp
        puts "\n"
        @rentals.each do |rental|
          if rental.person.id.to_i == person.to_i
            puts "Date : #{rental.date}, Book \"#{}\" by : #{rental.book.author}"
          end
        end
      end
    end
  end
end