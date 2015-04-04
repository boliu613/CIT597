Given(/^I'm on the user registration page$/) do
  visit(new_user_path)
end

When(/^I add a new user name$/) do
  fill_in 'Name', :with => "Tom"
  fill_in 'Email', :with => "tom@gmail.com"
  fill_in 'Password', :with => "tom597"
  click_button 'Create User'
end

Then(/^I should be able to see the new user's page$/) do
  assert page.has_content?("User was successfully created")
end


When(/^I add a new user without a name$/) do
  fill_in 'Email', :with => "tom@gmail.com"
  fill_in 'Password', :with => "tom597"
  click_button 'Create User'
end

Then(/^I should see some errors on the page$/) do
  assert page.has_css?('div.field_with_errors')
end

When(/^I add a new user without password$/) do
  fill_in 'Name', :with => "Tom"
  fill_in 'Email', :with => "tom@gmail.com"
  click_button 'Create User'
end

When(/^I add a new user without email$/) do
  fill_in 'Name', :with => "Tom"
  fill_in 'Password', :with => "tom597"
  click_button 'Create User'
end

Then(/^I can't creat a user successfully$/) do
  assert page.has_css?('div.field_with_errors')
end

