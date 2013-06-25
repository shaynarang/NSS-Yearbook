@wip
Feature: Anonymous user can view vote results
  In order to find out about the students' personalities
  As a curious individual
  I want to view the results of the superlative poll

  Scenario: Happy Path
    When I go to the homepage
    And I click "Superlatives"
    Then I should see "Most likely to"