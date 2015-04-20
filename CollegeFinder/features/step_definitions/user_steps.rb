Given(/^I'm on the user sign up page$/) do
  visit(new_user_registration_path)
end

When(/^I add a new user$/) do
  fill_in 'Username', :with => "Tom"
  fill_in 'Email', :with => "tom@gmail.com"
  fill_in 'Password', :with => "tom597"
  fill_in 'Password confirmation', :with => 'tom597'
  click_button 'Sign up'
end

Then(/^I should be able to see the homepage with user signing in$/) do
  assert page.has_content?("Welcome! You have signed up successfully.")
end


When(/^I add a new user without username$/) do
  fill_in 'Email', :with => "tom@gmail.com"
  fill_in 'Password', :with => "tom597"
  fill_in 'Password confirmation', :with => 'tom597'
  click_button 'Sign up'
end

Then(/^I can't creat a user without username$/) do
  assert page.has_content?("Username can't be blank")
end

When(/^I add a new user without password$/) do
  fill_in 'Username', :with => "Tom"
  fill_in 'Email', :with => "tom@gmail.com"
  click_button 'Sign up'
end

Then(/^I can't creat a user without password$/) do
  assert page.has_content?("Password can't be blank")
  # assert page.has_css?('div.field_with_errors')
end

When(/^I add a new user without email$/) do
  fill_in 'Username', :with => "Tom"
  fill_in 'Password', :with => "tom597"
  fill_in 'Password confirmation', :with => 'tom597'
  click_button 'Sign up'
end

Then(/^I can't creat a user without email$/) do
  assert page.has_content?("Email can't be blank")
end
