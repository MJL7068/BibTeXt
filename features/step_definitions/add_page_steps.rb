Given(/^create page is selected$/) do
  visit "/"
  click_on "Create new bibtex document"
end

Then(/^table exists$/) do
  expect(page).to have_css 'table'
end
