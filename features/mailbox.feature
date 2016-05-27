Feature:  As a user
    I want to be able to read, write, reply and manage my messages.

Background:
Given following users exists
| name   | email             | password |
| Jenny  | jenny@ranom.com   | password |
| Daniel | daniel@random.com | password |

Scenario: Send and receive a message
    Given I am logged in as "Jenny"
    And I am on the "Home page"
    And I send a mail to "Daniel"
    Given I am logged in as "Daniel"
    And I am on the "Home page"
    Then I click on the "Inbox" button
    Then I should have "1" messages
    And I click on the "View" button
    Then I should see "vi är grymma"

Scenario: Mailbox display
    Given I am logged in as "Daniel"
    And I am on the "Inbox page"
    Then I should see a "Inbox" link
    And I should see a "Compose" link
    And I should see a "Sent" link
    And I should see a "Trash" link

Scenario: Display form for composing email
    Given I am logged in as "Daniel"
    And I am on the "Inbox page"
    And I click on the "Compose" button
    Then I should be on the "Compose page"
    And I should see "Recipients"
    And I should see "Subject"
    And I should see "Message"
    And I select "Jenny" from "conversation[recipients][]"
    And I fill in "conversation[subject]" with "Hej hej"
    And I fill in "conversation[body]" with "Här kommer texten"
    And I click on the "Send Message" button
    Then I should see "Your message was successfully sent!"
    Given I am logged in as "Jenny"
    And I am on the "Inbox page"
    And I click on the "View" button
    Then I should see "Här kommer texten"

Scenario: Display sent messages in sent messages folder
    Given I am logged in as "Daniel"
    And I am on the "Inbox page"
    And I click on the "Compose" button
    And I select "Jenny" from "conversation[recipients][]"
    And I fill in "conversation[subject]" with "Hej hej"
    And I fill in "conversation[body]" with "Här kommer texten"
    And I click on the "Send Message" button
    And I click on the "Sent" button
    Then I should see "Här kommer texten"

Scenario: Move deleted messages to the trash folder
    Given I am logged in as "Daniel"
    And I am on the "Inbox page"
    And I click on the "Compose" button
    And I select "Jenny" from "conversation[recipients][]"
    And I fill in "conversation[subject]" with "Hej hej"
    And I fill in "conversation[body]" with "Här kommer texten"
    And I click on the "Send Message" button
    Then I should see "Your message was successfully sent!"
    Given I am logged in as "Jenny"
    And I am on the "Inbox page"
    And I click on the "View" button
    Then I should see "Här kommer texten"
    And I click on the "Move to trash" button
    And I confirm popup
    And I click on the "Trash" button
    Then I should see "Här kommer texten"
