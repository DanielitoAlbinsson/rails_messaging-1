Given(/^I am on the "([^"]*)"$/) do |page|
  visit root_path
end

Then(/^I should see a registration button\.$/) do
  expect(page).to have_text(register)
end
