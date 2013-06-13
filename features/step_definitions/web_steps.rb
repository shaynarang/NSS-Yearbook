Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create(email: email, password: password)
  refute user.new_record?
end

When(/^I go to the homepage$/) do
  visit "/"
end

When(/^I click "(.*?)"$/) do |link_with_text|
  click_link link_with_text
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |email_value, email_field|
  fill_in email_field, :with => email_value
end

When(/^I press "(.*?)"$/) do |button_with_text|
  click_button button_with_text
end

Then(/^I should see "(.*?)"$/) do |message|
  page.should have_content message
end

Then(/^I should not see "(.*?)"$/) do |link_with_text|
  page.should_not have_content link_with_text
end
