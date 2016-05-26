Feature:  As a user
    I want to be able to read, write, reply and manage my messages.

Background:
Given following users exists
| name   | email             | password |
| Jenny  | jenny@ranom.com   | password |
| Daniel | daniel@random.com | password |

Scenario:I would like to send a message
Given I am logged in as "Jenny"
And I am on the "Home page"
And I send a mail to "Daniel"
Given I am logged in as "Daniel"
And I am on the "Home page"
Then I click on the "Inbox" button
Then I should have "1" messages
And I click on the "View" button
Then I should see "vi är grymma"

Scenario: Deleting a message
  Given I am logged in as "Daniel"
  And I send a mail to "Jenny"
  And I am on the "home page"
  And I click on the "Logout" link
  Given I am logged-in as "Jenny"
  And I am on the "home page"
  And I click on the "Inbox" link
  Then I should have "1" messages
  And I click on the "View" link
  And I click on the "Move to trash" link
  Then I should have "0" messages
