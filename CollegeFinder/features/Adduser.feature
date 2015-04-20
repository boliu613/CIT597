Feature: User sign up page

  As a new user of our web page
  I want to add my information to register

  Scenario: Add an username
    Given I'm on the user sign up page
    When I add a new user 
    Then I should be able to see the homepage with user signing in

 Scenario: Add an user without username
    Given I'm on the user sign up page
    When I add a new user without username
    Then I can't creat a user without username

  Scenario: Add an user without password
    Given I'm on the user sign up page
    When I add a new user without password
    Then I can't creat a user without password

  Scenario: Add an user without email
    Given I'm on the user sign up page
    When I add a new user without email
    Then I can't creat a user without email
