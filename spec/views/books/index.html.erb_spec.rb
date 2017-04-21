require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
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
      ),
      Book.create!(
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
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Ref Key".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Series".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
