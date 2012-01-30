Feature: Sign up for beta
  As a potential user of the site, I want to sign up to be notified when the app launches

  Scenario: User can sign up for the beta with a valid email address
    Given I am on the homepage
    When I fill in the beta sign up form
    And I submit the beta sign up form
    Then I should be on the beta sign up confirmation page

  Scenario: Bots cannot spam the sign up form
    Given I am on the homepage
    When I fill in the beta sign up form with an invalid email address
    And I submit the beta sign up form
    Then I should see an email validation error

  Scenario: User can spread the word about Peculiarity
    Given I am on the beta sign up confirmation page
    Then I should see Twitter and Facebook links
