Feature: Search page

	As user want to search a school with the keywords of the school name
	I want to find the school info from college database and show it to user

	Scenario: Search a school not exist in the database
	Given I'm on the search page
	When I search a school name not exist
	Then I should see a notice say not found
