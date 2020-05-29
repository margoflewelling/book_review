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

      within('.reviews') do
        expect(page).to have_content("across four years of friendship and occasional romance")
        expect(page).to have_content("Review Publication Date: 2019-04-08")
        expect(page).to have_content("also traces a young romance in Ireland.")
        expect(page).to have_content("Review Publication Date: 2019-04-15")
      end
    end
  end
