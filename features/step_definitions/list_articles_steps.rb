When(/^article is created with key "(.*)", author "(.*)", journal "(.*)", title "(.*)", year "(.*)" are given$/) do
  |ref_key, author, journal, title, year|
  first('.new-article').click_link('Create new')
  fill_in "Ref key", with: ref_key
  fill_in "Author", with: author
  fill_in "Journal", with: journal
  fill_in "Title", with: title
  fill_in "Year", with: year
  click_on "Create Article"
end
