Given(/^new page is created$/) do
  visit "/"
  within("Articles") do
    click_on "Create new bibtex document"
  end
end

When(/^article is created with key "(.*)", author "(.*)", journal "(.*)", title "(.*)", year "(.*)" are given$/) do
  |ref_key, author, journal, title, year|
  click_on "Create new article reference"
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Journal", with: journal
  fill_in "Title", with: title
  fill_in "Year", with: year
  click_on "Create Article"
end

Then(/^table exists$/) do
  expect(page).to have_css 'table'
end
