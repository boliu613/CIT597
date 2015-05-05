Feature: Collegeshow page

	As I want to see the information of certain school with the school id
	I want to go to the college/id url and show it to user

	Scenario: See a school information in the database
	Given I have set up the test databases
	And I'm in college_id page
	Then I should see school information
