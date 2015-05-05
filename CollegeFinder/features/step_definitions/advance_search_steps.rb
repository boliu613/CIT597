Given(/^I have set up the test databases$/) do
  College.create(inst_name: "University of Pennsylvania", 
    tuition_fees: 45890,
    state: "Pennsylvania",
    control: "Private not-for-profit",
    urbanization: "City: Large",
    longitude: "-75.193618",
    latitude: "39.951002")

  College.create(inst_name: "Alabama A & M University", 
    tuition_fees: 7182,
    state: "Alabama",
    control: "Public",
    urbanization: "City: Midsize",
    longitude: "-86.568502",
    latitude: "34.783368")

  College.create(inst_name: "Bristol Community College", 
    tuition_fees: 4178,
    state: "Massachusetts",
    control: "Public",
    urbanization: "Suburb: Large",
    longitude: "-71.120263",
    latitude: "41.721337")
end


Given(/^I'm on the advance search page$/) do
visit(colleges_advance_search_path)
end

When(/^I press the search button$/) do
  click_button 'Search'
end

When(/^I enter a college name$/) do
  fill_in 'College Name', :with => "university"
end

Then(/^I should be able to see the results match the name condition$/) do 
  assert page.has_content?("University of Pennsylvania")
  assert page.has_content?("Alabama A & M University")
  assert page.has_no_content?("Bristol Community College")
end

When(/^I select a state$/) do    
  select("Alabama", :from => "state_state")
end

Then(/^I should be able to see the results match the state condition$/) do
  assert page.has_no_content?("University of Pennsylvania")
  assert page.has_content?("Alabama A & M University")
  assert page.has_no_content?("Bristol Community College")
end

When(/^I select a tuition range$/) do  
  select("$5,000", :from => 'tuition_min')
  select("$10,000", :from => 'tuition_max')
end

Then(/^I should be able to see the results match the tuition condition$/) do
  assert page.has_no_content?("University of Pennsylvania")
  assert page.has_content?("Alabama A & M University")
  assert page.has_no_content?("Bristol Community College")
end

When(/^I select a institution type$/) do
  check("Public")
end

Then(/^I should be able to see the results match the institution type condition$/) do
  assert page.has_no_content?("University of Pennsylvania")
  assert page.has_content?("Alabama A & M University")
  assert page.has_content?("Bristol Community College")
end

When(/^I select a city setting$/) do
  check("Suburb")
end

Then(/^I should be able to see the results match the city setting condition$/) do
  assert page.has_no_content?("University of Pennsylvania")
  assert page.has_no_content?("Alabama A & M University")
  assert page.has_content?("Bristol Community College")
end

When(/^I select multiple conditions$/) do
  fill_in 'College Name', :with => "university"
  select("Pennsylvania", :from => "state_state")
  select("$5,000", :from => 'tuition_min')
  select("$60,000", :from => 'tuition_max')
  check("Private not-for-profit")
  check("City")
end

Then(/^I should be able to see the results match the multiple conditions$/) do
  assert page.has_content?("University of Pennsylvania")
  assert page.has_no_content?("Alabama A & M University")
  assert page.has_no_content?("Bristol Community College")
end

When(/^I enter some conditions and match nothing$/) do  
  check("Private for-profit")
  check("Rural")
  check("Suburb")
  check("City")
  check("Town")
end

Then(/^I should be able to see the not found message$/) do
  assert page.has_content?("Not Found!")
end




