When(/^I am on the landing pages$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content
end
