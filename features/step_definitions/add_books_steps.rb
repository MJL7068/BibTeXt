Given(/^create new book reference is selected$/) do
  first('.new-book').click_link('Create new')
end

When(/^no book fields are given$/) do
  click_on "Create Book"
end

When(/^reference key "(.*)", author "(.*)", title "(.*)", publisher "(.*)", year "(.*)" are given$/) do
  |ref_key, author, title, publisher, year|
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Title", with: title
  fill_in "Publisher", with: publisher
  fill_in "Year", with: year
  click_on "Create Book"
end

Then(/^new book reference with field "(.*)" is created$/) do |field|
  expect(page).to have_content field
end

Then(/^new book reference is not created and error message is given$/) do
  expect(page).to have_content "error"
end
