require './test/test_helper'
require "./lib/author"
require "./lib/book"
require 'pry'

class AuthorTest < Minitest::Test

  def test_author_exists
  @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

  assert_instance_of Author, @nk_jemisin
  end

  def setup
  @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  @book_1 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Fifth Season", publication_date: "November 3, 2015"})
  end

  def test_has_atrributes

    assert_equal "N.K.", @nk_jemisin.first_name
    assert_equal "Jemisin", @nk_jemisin.last_name
  end



  def test_books_creates_empty_array

    assert_equal [], @nk_jemisin.books
  end

  def test_add_book_creates_new_book_object
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @book_1 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Fifth Season", publication_date: "November 3, 2015"})


    assert_equal [@book_1], @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    
    assert_equal [@book_1], @nk_jemisin.books
  end

end
