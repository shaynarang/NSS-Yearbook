@wip
Feature: User can vote for superlatives
  In order to voice my opinion
  As a user
  I want to vote for superlatives

  Scenario: Happy Path
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Vote"
    Then I should see "Vote for Superlatives"
    And I should see "Most likely to"
    When I press "Vote"
    Then I should see "Your vote has been cast!"

  Scenario: Anonymous User
    Given an anonymous user
    When I go to the homepage
    And I click "Vote"
    Then I should see "You must be logged in"
    And I should see "Sign in" 