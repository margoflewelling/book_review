require 'rails_helper'

describe NytService do
  it 'returns book reviews' do
    nyt = NytService.new
    info = nyt.get_reviews("Normal People")
    expect(info).to be_a Array
    review = info.first
    expect(review).to be_a Hash
    expect(review).to have_key :summary
    expect(review).to have_key :publication_dt
  end
end
