Given(/^the student "(.*?)"$/) do |name|
  Student.create(:name => name)
end

When(/^I go to the home page$/) do
  visit "/"
end

When(/^I click on "(.*?)"$/) do |link|
  click_link link
end