require 'JSON'
class NytService

  def get_reviews(title)
    json = JSON.parse(conn(title).body, symbolize_names: true)
    reviews = []
    json[:results].each do |result|
      reviews << {publication_dt: result[:publication_dt], summary: result[:summary]}
    end
    reviews
  end

  def conn(title)
    Faraday.get("https://api.nytimes.com/svc/books/v3/reviews.json?title=#{title}") do |f|
      f.params['api-key'] = ENV['NYT_API_KEY']
    end
  end

end
