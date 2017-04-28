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

  describe "saved without ref_key" do
    it "is saved" do
      book = FactoryGirl.create(:book, ref_key: '')
      expect(book).to be_valid
    end

    it "has non-zero length ref_key" do
      book = FactoryGirl.create(:book, ref_key: '')
      expect(book.ref_key.length).to be > 0
    end
  end
end
