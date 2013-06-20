Given(/^the instructor "(.*?)"$/) do |name|
  Instructor.create(:name => name)
end