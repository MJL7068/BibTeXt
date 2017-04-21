require 'rails_helper'

RSpec.describe "in_proceedings/show", type: :view do
  before(:each) do
    @in_proceeding = assign(:in_proceeding, InProceeding.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ref Key/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Booktitle/)
    expect(rendered).to match(/Editor/)
    expect(rendered).to match(/Volume/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Series/)
    expect(rendered).to match(/Pages/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Month/)
    expect(rendered).to match(/Note/)
  end
end
