Feature:  As a visitor
    So that I can register in order to log in to the system and send and receive messages
    I would like to see a 'register' button on the home page.

Scenario: Allows a visitor to access a registration page
    Given I am on the "Home page"
    Then I should see a "Sign up" link

Scenario: Allows a visitor to access a registration page
    Given I am on the "home page"
    And I click on the "Sign up" button
    Then I should be on the "Sign up page"

Scenario: Allows a visitor to see a login link
    Given I am on the "Home page"
    Then I should see a "Login" link

Scenario: Allows a visitor to access a login page
    Given I am on the "Home page"
    And I click on the "Login" button
    Then I should be on the "Login page"

Scenario: Allows a visitor to read a description of the applies
    Given I am on the "Home page"
    Then I should see "Craft Academy Mailboxer"
