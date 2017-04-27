require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "with required fields" do
    it "is saved" do
      article = FactoryGirl.create :article
      expect(article).to be_valid
    end
  end

  describe "with no fields" do
    it "is not saved" do
      article = Article.new
      expect(article).not_to be_valid
    end
  end

  describe "saved without ref_key" do
    it "is saved" do
      article = FactoryGirl.create(:article, ref_key: '')
      expect(article).to be_valid
    end

    it "has non-zero length ref_key" do
      article = FactoryGirl.create(:article, ref_key: '')
      expect(article.ref_key.length).to be > 0
    end
  end
end
