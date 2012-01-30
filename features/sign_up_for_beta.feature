Feature: Sign up for beta
  As a potential user of the site, I want to sign up to be notified when the app launches

  @javascript
  Scenario: User can sign up for the beta with a valid email address
    Given I am on the homepage
    When I fill in the beta sign up form
    And I submit the beta sign up form
    Then I should be on the beta sign up confirmation page
