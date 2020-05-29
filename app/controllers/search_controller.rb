class SearchController < ApplicationController

  def index
    library = OpenLibraryService.new
    @book = library.get_book_details(params[:title])
  end

end
