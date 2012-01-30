Feature: Pages
  As a potential user of the site, I want to see some informational pages

  Scenario: User can visit home page
    Given I am on the homepage
    Then I should see "Peculiarity"
    And I should see a short description
    And I should see the beta sign up form
