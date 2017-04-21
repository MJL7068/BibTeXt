require 'rails_helper'

RSpec.describe "in_proceedings/index", type: :view do
  before(:each) do
    assign(:in_proceedings, [
      InProceeding.create!(
        :ref_key => "Ref Key",
        :author => "Author",
        :title => "Title",
        :booktitle => "Booktitle",
        :editor => "Editor",
        :volume => "Volume",
        :number => "Number",
        :series => "Series",
        :pages => "Pages",
        :address => "Address",
        :organization => "Organization",
        :publisher => "Publisher",
        :year => "Year",
        :month => "Month",
        :note => "Note"
      ),
      InProceeding.create!(
        :ref_key => "Ref Key",
        :author => "Author",
        :title => "Title",
        :booktitle => "Booktitle",
        :editor => "Editor",
        :volume => "Volume",
        :number => "Number",
        :series => "Series",
        :pages => "Pages",
        :address => "Address",
        :organization => "Organization",
        :publisher => "Publisher",
        :year => "Year",
        :month => "Month",
        :note => "Note"
      )
    ])
  end

  it "renders a list of in_proceedings" do
    render
    assert_select "tr>td", :text => "Ref Key".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Booktitle".to_s, :count => 2
    assert_select "tr>td", :text => "Editor".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Series".to_s, :count => 2
    assert_select "tr>td", :text => "Pages".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
