Feature: AdvanceSearch
  As a user of our web page
  I want to search college by multiple conditions

  Scenario: Search by college name
    Given I have set up the test databases
      And I'm on the advance search page
    When I enter a college name
      And I press the search button  
    Then I should be able to see the results match the name condition

  Scenario: Search by state
    Given I have set up the test databases
      And I'm on the advance search page
    When I select a state
      And I press the search button      
    Then I should be able to see the results match the state condition

  Scenario: Search by tuition range
    Given I have set up the test databases
      And I'm on the advance search page    
    When I select a tuition range
      And I press the search button  
    Then I should be able to see the results match the tuition condition

  Scenario: Search by institution type
    Given I have set up the test databases
      And I'm on the advance search page    
    When I select a institution type
      And I press the search button  
    Then I should be able to see the results match the institution type condition

  Scenario: Search by city setting
    Given I have set up the test databases
      And I'm on the advance search page
    When I select a city setting
      And I press the search button  
    Then I should be able to see the results match the city setting condition 

  Scenario: Search by multiple conditions
    Given I have set up the test databases
      And I'm on the advance search page     
    When I select multiple conditions
      And I press the search button  
    Then I should be able to see the results match the multiple conditions

  Scenario: Not Found
    Given I have set up the test databases
      And I'm on the advance search page
    When I enter some conditions and match nothing
      And I press the search button  
    Then I should be able to see the not found message
  

  