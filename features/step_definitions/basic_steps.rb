Given(/^there is a user with email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  FactoryGirl.create(:user, email: email, password: password)
end

Given(/^I am on the "([^"]*)"$/) do |page|
  visit root_path
end

Then(/^I should be on the "([^"]*)"$/) do |page|
  case page
  when "Home page" then
     expect(current_path).to eq root_path
   when "Sign up page" then
     expect(current_path).to eq new_user_registration_path
   when "Login page" then
     expect(current_path).to eq new_user_session_path
  end
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  expect(page).to have_link(link)
end


Given(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text()
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field, with: value)
end

Then(/^I should see a "([^"]*)" checkbox$/) do |checkbox|
    find("input[type='checkbox']")
end

Then /^show me the page$/ do
  save_and_open_page
end

When(/^I pry$/) do
 binding.pry
end
