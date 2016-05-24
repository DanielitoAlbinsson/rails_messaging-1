Given(/^I am on the "([^"]*)"$/) do |page|
  visit root_path
end

Then(/^I should see a "([^"]*)" button\.$/) do |button|
  expect(button).to have_text("Sign up")
end

Then(/^I should see a 'Login' button\.$/) do
  have_button.to ("Login")
end
