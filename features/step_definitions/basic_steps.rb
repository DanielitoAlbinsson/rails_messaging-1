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
     expect(current_path).to eq "/users/sign_in"
  end
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  expect(page).to have_link("Sign up")
end

Given(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text("Craft Academy Mailboxer")
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field, with: value)
end

Then /^show me the page$/ do
  save_and_open_page
end
