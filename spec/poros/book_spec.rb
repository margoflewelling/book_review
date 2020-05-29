require 'rails_helper'

describe Book do
  it "exists" do
    book_info = {
               title: "The sun is a compass",
               author: "Caroline Van Hemert",
               publisher: "Little Brown Spark"
               }
    reviews = [{
             summary: "Great adventure story, inspiration for all",
             publication_dt: "2020-05-10"
             }]
    book = Book.new(book_info, reviews)
    expect(book).to be_a Book
    expect(book.title).to eq("The sun is a compass")
    expect(book.author).to eq("Caroline Van Hemert")
    expect(book.publisher).to eq("Little Brown Spark")
    expect(book.reviews.count).to eq(1)

  end
end
