class SearchController < ApplicationController

  def index
    search = SearchResults.new
    @book = search.book_info(params[:title])
  end

end
