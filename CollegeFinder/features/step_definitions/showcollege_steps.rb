Given(/^I'm in college_id page$/) do
  visit '/colleges/1'
end

Then(/^I should see school information$/) do 
	assert page.has_content?("University of Pennsylvania")
end


