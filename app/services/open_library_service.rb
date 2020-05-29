require 'JSON'

class OpenLibraryService

  def get_book_details(title)
    info = Faraday.get("http://openlibrary.org/search.json?title=#{title}")
    json = JSON.parse(info.body, symbolize_names: true)
    author = json[:docs].first[:author_name].first
    title = json[:docs].first[:title]
    publisher = json[:docs].first[:publisher]
    Book.new(title, author, publisher)
  end


end
