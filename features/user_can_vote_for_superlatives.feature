Feature: User can vote for superlatives
  In order to voice my opinion
  As a user
  I want to vote for superlatives

  Scenario: Happy Path
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    And I click "Vote"
    Then I should see "Vote for Superlatives"
    And I should see "Most likely to"
    When I press "Submit"
    Then I should see "Your vote has been cast!"

  Scenario: User Already Voted
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    And I click "Vote"
    And I press "Submit"
    Then I should not see "Vote"