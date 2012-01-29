Feature: Pages
  In order to get some information about the site
  As a user
  I want to see informational content on the static pages

  Scenario: User can load home page
    Given I am on the home page
    Then I should see "Peculiarity"
    And I should see a short description
    And I should see a sign up form
