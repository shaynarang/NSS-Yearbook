Feature: Anonymous user can search for student
  In order to view a student profile
  As a user who desires ease of use
  I want to search for a student

  Scenario: Happy Path
  Given the student "Shay Narang"
  When I go to the homepage
  And I click on "Students"
  And I fill in "Shay" for "search"
  And I press "Find Student"
  And I click on "Shay Narang"
  Then I should see "Shay Narang"