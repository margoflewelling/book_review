require 'rails_helper'

describe SearchResults do
  describe 'class methods' do
    it "returns book object" do
      search = SearchResults.new
      book = search.book_info("Normal People")
      expect(book).to be_a Book
    end
end
end
