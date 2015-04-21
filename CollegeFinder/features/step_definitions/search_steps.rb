Given(/^I'm on the search page$/) do
	visit(colleges_search_path)
end

When(/^I search a school name not exist$/) do
	fill_in('Search for', :with => "Xiamen University")
end

Then(/^I should see a notice say not found$/) do 
	assert page.has_content?("Not Found!")
end


When(/^I fill the search field$/) do
	fill_in('Search for', :with => "university")
end