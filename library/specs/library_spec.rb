require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibrarySpec < MiniTest::Test

  def test_can_create_library
    library = Library.new({
      "lord_of_the_rings" => {
        :student_name => "Jeff",
        :date => "01/12/16"
      }
      }
      )
    assert_equal(Library, library.class)
  end

  def test_list_books
    library = Library.new({
      "lord_of_the_rings" => {:student_name => "Jeff",:date => "01/12/16"},
      "Batman" => {:student_name => "Andy",:date => "06/07/16"}
    }
    )
    actual = library.list_books()
    expected = {
      "lord_of_the_rings" => {
        :student_name => "Jeff",
        :date => "01/12/16"
        },
        "Batman" => {
          :student_name => "Andy",
          :date => "06/07/16"
        }
        }
assert_equal(expected, actual)
end

def test_can_find_book
  library = Library.new({
    "lord_of_the_rings" => {
      :student_name => "Jeff",
      :date => "01/12/16"
      },
      "Ruby - Starters Guide" => {
        :student_name => "Andy",
        :date => "24/12/16"
      }
    }
    
    )
  actual = library.find_book("Ruby - Starters Guide")
  expected = "Andy,24/12/16"

  assert_equal(expected, actual)
end

def test_can_add_book
  library = Library.new({
    "lord_of_the_rings" => {
      :student_name => "Jeff",
      :date => "01/12/16"
      },
      "Ruby - Starters Guide" => {
        :student_name => "Andy",
        :date => "24/12/16"
      }
    }
    
    )
  library.add_book({"Hitch hikers Guide to Ruby"=> {
        :student_name => "",
        :date => ""}})

  actual = library.find_book("Hitch hikers Guide to Ruby")
  expected = ","

  assert_equal(expected, actual)
end

def test_can_rent_book
  library = Library.new({
    "lord_of_the_rings" => {
      :student_name => "Jeff",
      :date => "01/12/16"
      },
      "Ruby - Starters Guide" => {
        :student_name => "Andy",
        :date => "24/12/16"
      }
    }
    
    )
 library.rent_book({"Walls have ears"=> {
        :student_name => "Craig",
        :date => "30/11/16"}})

  actual = library.find_book("Walls have ears")
  expected = "Craig,30/11/16"

  assert_equal(expected,actual)
end
end
