Given(/^the following article exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end

When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in(field, with: content)
end

Given(/^I click on "([^"]*)" button$/) do |comment_button|
  click_button(comment_button)
end
