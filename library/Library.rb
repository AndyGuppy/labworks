class Library


  def initialize (book)
    @book = book
  end

  def list_books
    p @book
    return @book
  end

  def books
    return @books
  end

  def find_book(book={})
    @book.each  do |key, array|
      if key == book 
        return (array[:student_name] + "," + array[:date])
      end

    end
  end

  def add_book(book={})
    @book.merge!(book)
  end

  def rent_book(book={})
    @book.merge!(book)

    who_has_book = find_book(book)
    puts "--------->" + who_has_book[:student_name].to_s
    return who_has_book
  end

end