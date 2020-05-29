class SearchResults

  def book_info(title)
    library = OpenLibraryService.new
    book_info = library.get_book_details(title)
    nyt = NytService.new
    reviews = nyt.get_reviews(title)
    Book.new(book_info, reviews)
  end

end
