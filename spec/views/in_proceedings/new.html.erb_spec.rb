require 'rails_helper'

RSpec.describe "in_proceedings/new", type: :view do
  before(:each) do
    assign(:in_proceeding, InProceeding.new(
      :ref_key => "MyString",
      :author => "MyString",
      :title => "MyString",
      :booktitle => "MyString",
      :editor => "MyString",
      :volume => "MyString",
      :number => "MyString",
      :series => "MyString",
      :pages => "MyString",
      :address => "MyString",
      :organization => "MyString",
      :publisher => "MyString",
      :year => "MyString",
      :month => "MyString",
      :note => "MyString"
    ))
  end

  it "renders new in_proceeding form" do
    render

    assert_select "form[action=?][method=?]", in_proceedings_path, "post" do

      assert_select "input#in_proceeding_ref_key[name=?]", "in_proceeding[ref_key]"

      assert_select "input#in_proceeding_author[name=?]", "in_proceeding[author]"

      assert_select "input#in_proceeding_title[name=?]", "in_proceeding[title]"

      assert_select "input#in_proceeding_booktitle[name=?]", "in_proceeding[booktitle]"

      assert_select "input#in_proceeding_editor[name=?]", "in_proceeding[editor]"

      assert_select "input#in_proceeding_volume[name=?]", "in_proceeding[volume]"

      assert_select "input#in_proceeding_number[name=?]", "in_proceeding[number]"

      assert_select "input#in_proceeding_series[name=?]", "in_proceeding[series]"

      assert_select "input#in_proceeding_pages[name=?]", "in_proceeding[pages]"

      assert_select "input#in_proceeding_address[name=?]", "in_proceeding[address]"

      assert_select "input#in_proceeding_organization[name=?]", "in_proceeding[organization]"

      assert_select "input#in_proceeding_publisher[name=?]", "in_proceeding[publisher]"

      assert_select "input#in_proceeding_year[name=?]", "in_proceeding[year]"

      assert_select "input#in_proceeding_month[name=?]", "in_proceeding[month]"

      assert_select "input#in_proceeding_note[name=?]", "in_proceeding[note]"
    end
  end
end
