require 'rails_helper'

  describe "As a user" do
    it "can search for a book from the home page" do
      visit '/'
      fill_in :title, with: "Normal People"
      click_on('Find Book')
      expect(current_path).to eq('/search')
      within('.title') do
        expect(page).to have_content("Normal People")
      end
      within(".author") do
        expect(page).to have_content("Sally Rooney")
      end
      within('.publisher') do
        expect(page).to have_content("Faber & Faber")
        expect(page).to have_content("Hogarth")
        expect(page).to have_content("Random House Large Print")
        expect(page).to have_content("Knopf Canada")
      end
    end
  end



# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: "Rooney's second novel tracks two gifted but troubled teenagers across four years of friendship and occasional romance."
# Review Publication Date: 2019-04-08
# - Review 2: "Like "Conversations With Friends," "Normal People" also traces a young romance in Ireland."
# Review Publication Date: 2019-04-15
