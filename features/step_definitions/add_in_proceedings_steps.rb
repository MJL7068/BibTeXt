Given(/^create new in proceeding reference is selected$/) do
  first('.new-in-proceeding').click_link('Create new')
end

When(/^no in proceeding fields are given$/) do
  click_on "Create In proceeding"
end

When(/^reference key "(.*)", author "(.*)", title "(.*)", booktitle "(.*)", year "(.*)" are given$/) do
  |ref_key, author, title, booktitle, year|
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Title", with: title
  fill_in "Booktitle", with: booktitle
  fill_in "Year", with: year
  click_on "Create In proceeding"
end

Then(/^new in proceeding reference with field "(.*)" is created$/) do |field|
  expect(page).to have_content field
end

Then(/^new in proceeding reference is not created and error message is given$/) do
  expect(page).to have_content "error"
end
