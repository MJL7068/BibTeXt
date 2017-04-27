require 'rails_helper'

RSpec.describe Page, type: :model do
    describe "export" do
      it "button exists" do
        _page = FactoryGirl.create(:page)
        article = FactoryGirl.create(:article, page_id: _page.id)
        book = FactoryGirl.create(:book, page_id: _page.id)
        in_proceeding = FactoryGirl.create(:in_proceeding, page_id: _page.id)
        visit "/#{_page.id.to_s}"

        expect(page).to have_selector(:css, "a")
        expect(page).to have_content('Download')
      end

      it "export format is correct" do
        _page = FactoryGirl.create(:page)
        article = FactoryGirl.create(:article, page_id: _page.id)
        book = FactoryGirl.create(:book, page_id: _page.id)
        in_proceeding = FactoryGirl.create(:in_proceeding, page_id: _page.id)
  
        visit "/#{_page.id.to_s}/export"
        expect(page).to have_content(article.ref_key)
        expect(page).to have_content(article.title)
        expect(page).to have_content(article.author)
        expect(page).to have_content(article.year)
        expect(page).to have_content(book.ref_key)
        expect(page).to have_content(book.title)
        expect(page).to have_content(book.author)
        expect(page).to have_content(book.year)
        expect(page).to have_content(in_proceeding.ref_key)
        expect(page).to have_content(in_proceeding.title)
        expect(page).to have_content(in_proceeding.author)
        expect(page).to have_content(in_proceeding.year)
      end
    end
end
