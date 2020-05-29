require './app/services/nyt_service.rb'

class Book
  attr_reader :title, :author, :publisher, :reviews

  def initialize(title, author, publisher)
    @title = title
    @author = author
    @publisher = publisher
    @reviews = my_reviews(title)
  end

  def my_reviews(title)
    nyt = NycService.new
    reviews = nyt.get_reviews(title)
  end

end
