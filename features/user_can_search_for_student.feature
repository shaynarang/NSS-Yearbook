Feature: User can search for student
  In order to view a student profile
  As a user who desires ease of use
  I want to search for a student

  Scenario: Happy Path
  Given the student "Shay Narang"
  When I go to the homepage
  And I fill in "Shay" for "search"
  And I press "Find Student"
  Then I should see "This is a quote from Shay Narang"
  And I should see "This is a bio for Shay Narang. Blah. Blah. Blah."