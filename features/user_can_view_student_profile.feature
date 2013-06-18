Feature: User can view student profile
  In order to acquire student information
  As a former student or curious individual
  I want to view student profiles

  Scenario: Happy Path
    Given the student "Shay Narang"
    When I go to the home page
    And I click on "Shay Narang"
    Then I should see "This is a quote from Shay Narang"
    And I should see "This is a bio for Shay Narang. Blah. Blah. Blah."