require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "with required fields" do
    it "is saved" do
      book = FactoryGirl.create :book
      expect(book).to be_valid
    end
  end
  describe "with no fields" do
    it "is not saved" do
      book = Book.new
      expect(book).not_to be_valid
    end
  end
end
