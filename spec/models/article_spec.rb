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
end
