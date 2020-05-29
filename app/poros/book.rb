require './app/services/nyt_service.rb'

class Book
  attr_reader :title, :author, :publisher, :reviews

  def initialize(book_info, reviews)
    @title = book_info[:title]
    @author = book_info[:author]
    @publisher = book_info[:publisher]
    @reviews = reviews
  end

end
