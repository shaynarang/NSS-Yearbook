Feature: Anonymous user can view student profile
  In order to acquire student information
  As a former student or curious individual
  I want to view student profiles

  Scenario: Happy Path
    Given the student "Shay Narang"
    When I go to the home page
    And I click on "Students"
    And I click on "Shay Narang"
    Then I should see "Shay Narang"

  Scenario: Previous Button
    Given the student "Amanda McCadams"
    Given the student "Andrew Wright"
    When I go to the home page
    And I click on "Students"
    And I click on "Andrew Wright"
    And I click on "Previous"
    Then I should see "Amanda McCadams"

  Scenario: Next Button
    Given the student "Shah Jalal"
    Given the student "Shay Narang"
    When I go to the home page
    And I click on "Students"
    And I click on "Shah Jalal"
    And I click on "Next"
    Then I should see "Shay Narang"