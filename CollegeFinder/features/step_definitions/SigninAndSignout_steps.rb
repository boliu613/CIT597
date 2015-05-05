Given(/^I have set up the user databases$/) do
  User.create(username: "Tom",
  email: "tom@gmail.com",
  password: "tom597",
  password_confirmation: "tom597")
end

Given(/^I'm in the user sign in page$/) do
  visit(new_user_session_path)
end

When(/^I fill the username and password and sign in$/) do
  fill_in 'Login', :with => "Tom"
  fill_in 'Password', :with => "tom597"
  click_button 'Sign in'
end

Then(/^I should be able to sign in successfully and route to my user homepage$/) do
  assert page.has_content?("Signed in successfully.")
  assert page.has_content?("Tom 's page")
end

When(/^I fill the wrong username$/) do
  fill_in 'Login', :with => "Jerry"
  fill_in 'Password', :with => "tom597"
  click_button 'Sign in'
end

Then(/^I should not be able to sign in$/) do
  assert page.has_content?("Invalid username or password.")
end

When(/^I fill the wrong password$/) do
  fill_in 'Login', :with => "Jerry"
  fill_in 'Password', :with => "tomandjerry"
  click_button 'Sign in'
end

Given(/^I sign in with username and password$/) do
  visit(new_user_session_path)
  fill_in 'Login', :with => "Tom"
  fill_in 'Password', :with => "tom597"
  click_button 'Sign in'
end

Given(/^I'm in the homepage$/) do
  visit(homepage_path)
end

When(/^click the sign out$/) do
  click_link 'Sign out'
end

Then(/^I should be able to sign out and see sign in and sign up link in the page$/) do
  assert page.has_content?("Signed out successfully.")
  assert page.has_content?("Sign in")
  assert page.has_content?("Sign up")
end