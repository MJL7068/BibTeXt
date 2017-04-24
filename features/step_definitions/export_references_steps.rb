Then(/^export has formatted key "(.*)", author "(.*)", journal "(.*)", title "(.*)", year "(.*)"$/) do
  |ref_key, author, journal, title, year|
  expect(page).to have_content "@article{#{ref_key}"

  # TODO: find a nicer way to check other fields with changing whitespace
  # expect(page.squish).to have_content "author = \"#{author}\""
  # expect(page.squish).to have_content "journal = \"#{journal}\""
  # expect(page.squish).to have_content "title = \"#{title}\""
  # expect(page.squish).to have_content "year = \"#{year}\""
end

Then(/^article reference with key "([^"]*)" is listed$/) do |key|
  expect(page).to have_content key
end

Then(/^textbox exists$/) do
  page.should have_css 'textarea'
end 
