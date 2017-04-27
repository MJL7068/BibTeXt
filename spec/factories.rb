FactoryGirl.define do
  factory :article do
    ref_key "X"
    author "Jussi"
    journal "RailsMestarit"
    title "MitenTestataan"
    year 2017
    page
  end

  factory :book do
    ref_key "X"
    author "Jussi"
    title "MitenTestataan"
    publisher "RailsMestarit"
    year 2017
    page
  end

  factory :in_proceeding do
    ref_key "X"
    author "Jussi"
    title "MitenTestataan"
    booktitle "RailsOpus"
    year 2017
    page
  end

  factory :page do
  end
end
