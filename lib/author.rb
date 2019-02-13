class Author
  attr_reader :first_name,
              :last_name,
              :books,
              :add_book

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def add_book(arg_1, arg_2)
    @books << Book.new[author_first_name: @first_name,
              author_last_name: @last_name,
              title: arg_1,
              publication_date: arg_2]
  end
end
