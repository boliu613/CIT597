Feature: Search page
	As user want to search a school with the keywords of the school name
	I want to find the school info from college database and show it to user

	Scenario: Search by college name
    	Given I have set up the test databases
      		And I'm on the search page
    	When I fill the search field
     		And I press the search button  
    	Then I should be able to see the results match the name condition

	Scenario: Search a school not exist in the database
		Given I have set up the test databases
      		And I'm on the search page
		When I search a school name not exist
			And I press the search button 
		Then I should see a notice say not found
    
