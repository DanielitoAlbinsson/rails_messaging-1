Given(/^I am on the "([^"]*)"$/) do |page|
  visit '/'
end

Then(/^I should see a registration button\.$/) do
  expect(page).to have_text(register)
end
