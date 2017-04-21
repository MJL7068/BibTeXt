require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :ref_key => "Ref Key",
      :author => "Author",
      :title => "Title",
      :publisher => "Publisher",
      :volume => "Volume",
      :number => "Number",
      :series => "Series",
      :address => "Address",
      :edition => "Edition",
      :year => "Year",
      :month => "Month",
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ref Key/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Volume/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Series/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Edition/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Month/)
    expect(rendered).to match(/Note/)
  end
end
