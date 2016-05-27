Given(/^following users exists$/) do |table|
  table.hashes.each do |user|
  User.create(name: user[:name], email: user[:email], password: user[:password])
   end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

Given(/^I send a mail to "([^"]*)"$/) do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'vi är grymma!...', 'Subject')
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

Then(/^I select "([^"]*)" from "([^"]*)"$/) do |value, dropdown_box|
  select(value, from: dropdown_box)
end

When /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept
end
