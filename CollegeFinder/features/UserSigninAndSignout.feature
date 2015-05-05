Feature: User sign in page
	As a registered user
	I want to sign in with my username and password

	Scenario: Sign in with username and password
    	Given I have set up the user databases
      		And I'm in the user sign in page
    	When I fill the username and password and sign in 
    	Then I should be able to sign in successfully and route to my user homepage

	Scenario: Sign in with wrong username
		Given I have set up the user databases
      		And I'm in the user sign in page
		When I fill the wrong username
		Then I should not be able to sign in
		
	Scenario: Sign in with wrong password
		Given I have set up the user databases
      		And I'm in the user sign in page
		When I fill the wrong password
		Then I should not be able to sign in
		
	Scenario: User sign out
    	Given I have set up the user databases
			And I sign in with username and password
      		And I'm in the homepage
    	When click the sign out 
    	Then I should be able to sign out and see sign in and sign up link in the page

    Scenario: User add favourite colleges
    	Given I have set up the user databases
    		And I have set up the test databases
			And I sign in with username and password
      		And I'm in college_id page
      	When click the "Add to your favorites" button
		Then I should see school information