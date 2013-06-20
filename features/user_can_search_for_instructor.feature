Feature: User can search for instructor
  In order to view a instructor profile
  As a user who desires ease of use
  I want to search for a instructor

  Scenario: Happy Path
  Given the instructor "John Wark"
  When I go to the homepage
  And I click on "Instructors"
  And I fill in "John" for "search"
  And I press "Find Instructor"
  And I click on "John Wark"
  Then I should see "This is a quote from John Wark"
  And I should see "This is a bio for John Wark. Blah. Blah. Blah."