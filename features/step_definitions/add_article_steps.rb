Given(/^create page is selected$/) do
  visit "/"
  click_on "Create new bibtex document"
end

Given(/^create new article reference is selected$/) do
  click_on "Create new"
end

When(/^no fields are given$/) do
  click_on "Create Article"
end

When(/^reference key "(.*)", author "(.*)", journal "(.*)", title "(.*)", year "(.*)" are given$/) do
  |ref_key, author, journal, title, year|
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Journal", with: journal
  fill_in "Title", with: title
  fill_in "Year", with: year
  click_on "Create Article"
end

Then(/^new article reference with field "(.*)" is created$/) do |field|
  #expect(page).to have_content "Article was successfully created"
  expect(page).to have_content field
end

Then(/^new article reference is not created and error message is given$/) do
  expect(page).to have_content "error"
end
