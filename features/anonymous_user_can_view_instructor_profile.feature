Feature: Anonymous user can view instructor profile
  In order to acquire instructor information
  As a former instructor or curious individual
  I want to view instructor profiles

  Scenario: Happy Path
    Given the instructor "John Wark"
    When I go to the home page
    And I click on "Instructors"
    And I click on "John Wark"
    Then I should see "This is a quote from John Wark"