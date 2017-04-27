When(/^in proceeding is created with key "(.*)", author "(.*)", title "(.*)", booktitle "(.*)", year "(.*)" are given$/) do
  |ref_key, author, title, booktitle, year|
  first('.new-in-proceeding').click_link('Create new')
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Title", with: title
  fill_in "Booktitle", with: booktitle
  fill_in "Year", with: year
  click_on "Create In proceeding"
end
