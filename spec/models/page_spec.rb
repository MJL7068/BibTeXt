require 'rails_helper'

RSpec.describe Page, type: :model do
    describe "export" do
      it "button exists" do
        _page = FactoryGirl.create(:page)
        article = FactoryGirl.create(:article, page_id: _page.id)
        visit "/#{_page.id.to_s}"

        expect(page).to have_selector(:css, "a")
        expect(page).to have_content('Download')
      end

      it "export format is correct" do
        _page = FactoryGirl.create(:page)
        article = FactoryGirl.create(:article, page_id: _page.id)
  
        visit "/#{_page.id.to_s}/export"
        expect(page).to have_content(article.ref_key)
        expect(page).to have_content(article.title)
        expect(page).to have_content(article.author)
        expect(page).to have_content(article.year)
      end
    end
end
