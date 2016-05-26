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

Scenario: I would like to see my mailbox display
    Given I am logged in as "Daniel"
    And I am on the "Inbox page"
    Then I should see a "Inbox" link
    And I should see a "Compose" link
    And I should see a "Sent" link
    And I should see a "Trash" link
