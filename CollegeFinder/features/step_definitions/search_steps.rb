Given(/^I'm on the search page$/) do
  visit(colleges_hello_path)
end

When(/^I search a school name not exist$/) do
  fill_in('q', :with => "Xiamen University")
  click_button 'Search'
end

Then(/^I should see a notice say not found$/) do 
	assert page.has_content?("Not Found!")
  #BROWSER.html.should include("Not Found!")
end

