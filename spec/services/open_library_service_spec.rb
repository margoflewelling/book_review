require 'rails_helper'

describe OpenLibraryService do
  it 'returns book info hash' do
    library = OpenLibraryService.new
    info = library.get_book_details("Normal People")
    expect(info).to be_a Hash
    expect(info).to have_key :title
    expect(info).to have_key :author
    expect(info).to have_key :publisher

  end
end
