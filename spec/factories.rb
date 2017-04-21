FactoryGirl.define do
  factory :article do
    ref_key "X"
    author "Jussi"
    journal "RailsMestarit"
    title "MitenTestataan"
    year 2017
    page
  end

  factory :page do
  end
end
