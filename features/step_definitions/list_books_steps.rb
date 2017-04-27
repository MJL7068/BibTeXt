When(/^book is created with key "(.*)", author "(.*)", title "(.*)", publisher "(.*)", year "(.*)" are given$/) do
  |ref_key, author, title, publisher, year|
  first('.new-book').click_link('Create new')
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Title", with: title
  fill_in "Publisher", with: publisher
  fill_in "Year", with: year
  click_on "Create Book"
end
