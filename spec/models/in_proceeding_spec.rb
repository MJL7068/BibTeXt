require 'rails_helper'

RSpec.describe InProceeding, type: :model do
  describe "with required fields" do
    it "is saved" do
      in_proceeding = FactoryGirl.create :in_proceeding
      expect(in_proceeding).to be_valid
    end
  end

  describe "with no fields" do
    it "is not saved" do
      in_proceeding = InProceeding.new
      expect(in_proceeding).not_to be_valid
    end
  end

  describe "saved without ref_key" do
    it "is saved" do
      in_proceeding = FactoryGirl.create(:in_proceeding, ref_key: '')
      expect(in_proceeding).to be_valid
    end

    it "has non-zero length ref_key" do
      in_proceeding = FactoryGirl.create(:in_proceeding, ref_key: '')
      expect(in_proceeding.ref_key.length).to be > 0
    end
  end
end
