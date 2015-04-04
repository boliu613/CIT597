Feature: User page

  As a new user of our web page
  I want to add my information to register

  Scenario: Add an user name
    Given I'm on the user registration page
    When I add a new user name
    Then I should be able to see the new user's page

  Scenario: Add an user without name
    Given I'm on the user registration page
    When I add a new user without a name
    Then I should see some errors on the page

  Scenario: Add an user without password
    Given I'm on the user registration page
    When I add a new user without password
    Then I can't creat a user successfully

  Scenario: Add an user without email
    Given I'm on the user registration page
    When I add a new user without email
    Then I can't creat a user successfully