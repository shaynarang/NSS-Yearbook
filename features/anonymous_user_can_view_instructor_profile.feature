Feature: Anonymous user can view instructor profile
  In order to acquire instructor information
  As a former instructor or curious individual
  I want to view instructor profiles

  Scenario: Happy Path
    Given the instructor "John Wark"
    When I go to the home page
    And I click on "Instructors"
    And I click on "John Wark"
    Then I should see "John Wark"

  Scenario: Previous Button
    Given the instructor "Eliza Brock"
    Given the instructor "John Wark"
    When I go to the home page
    And I click on "Instructors"
    And I click on "John Wark"
    And I click on "Previous"
    Then I should see "Eliza Brock"

  Scenario: Next Button
    Given the instructor "Adam Scott"
    Given the instructor "Ben Bridges"
    When I go to the home page
    And I click on "Instructors"
    And I click on "Adam Scott"
    And I click on "Next"
    Then I should see "Ben Bridges"