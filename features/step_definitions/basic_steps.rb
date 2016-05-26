Given(/^there is a user with name "([^"]*)", email "([^"]*)" and password "([^"]*)"$/) do |name, email, password|
  FactoryGirl.create(:user, name: name, email: email, password: password)
end

Given(/^I am on the "([^"]*)"$/) do |page|
  case page
  when "Home page" then
     visit root_path
   when "Sign up page" then
     visit new_user_registration_path
   when "Login page" then
     visit new_user_session_path
   when "Forgot password page" then
     visit new_user_password_path
   when "Inbox page" then
     visit mailbox_inbox_path
  end
end

Then(/^I should be on the "([^"]*)"$/) do |page|
  case page
  when "Home page" then
     expect(current_path).to eq root_path
   when "Sign up page" then
     expect(current_path).to eq new_user_registration_path
   when "Login page" then
     expect(current_path).to eq new_user_session_path
   when "Inbox page" then
     expect(current_path).to eq mailbox_inbox_path
  end
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  expect(page).to have_link(link)
end


Given(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I click on the "([^"]*)" link$/) do |link|
  click(link)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
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
