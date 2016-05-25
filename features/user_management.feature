Feature:  As a visitor
    So that I can register in order to log in to the system and send and receive messages
    I would like to see a 'register' button on the home page.

Background:
    Given there is a user with email "daniel@gmail.com" and password "Password"

Scenario: Allows a visitor to see Sign up link
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

Scenario: Allows a visitor to access the login page from the sign up page
    Given I am on the "Sign up page"
    Then I should see a "Login" link

Scenario: Allows a visitor to register as a user
    Given I am on the "Home page"
    And I click on the "Sign up" button
    And I fill in "Name" with "Jenny"
    And I fill in "user_email" with "jenny@gmail.com"
    And I fill in "user_password" with "12345678"
    And I fill in "user_password_confirmation" with "12345678"
    And I click on the "Create" button
    Then I should see "Welcome! You have signed up successfully."

Scenario: As a registered user
    Given I am on the "home page"
    And I click on the "Login" button
    And I fill in "Email" with "daniel@gmail.com"
    And I fill in "Password" with "Password"
    And I click on the "Login" button
    Then I should see "Signed in successfully"

Scenario: password leangt validation
    Given I am on the "Home page"
    And I click on the "Sign up" button
    And I fill in "Name" with "Jenny"
    And I fill in "user_email" with "jenny@gmail.com"
    And I fill in "user_password" with "1234567"
    And I fill in "user_password_confirmation" with "1234567"
    And I click on the "Create" button
    Then I should see "Password is too short"

Scenario: Different passwords
    Given I am on the "Home page"
    And I click on the "Sign up" button
    And I fill in "Name" with "Jenny"
    And I fill in "user_email" with "jenny@gmail.com"
    And I fill in "user_password" with "12345678"
    And I fill in "user_password_confirmation" with "1234567"
    And I click on the "Create" button
    Then I should see "Password confirmation doesn't match Password"

Scenario: Allows a visitor see a link to the registration page, the forgotten
          password page  and a remember me button on the sign up page
    Given I am on the "Home page"
    And I click on the "Login" button
    Then I should see a "Sign up" link
    And I should see a "Forgot your password?" link
    And I should see a "Remember me" checkbox
