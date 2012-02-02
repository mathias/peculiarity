Feature: 404 Page
  As a discerning user of the site, I want to see customized 404 pages rather than Heroku errors

  Scenario: Requesting an invalid page
    When I go to an invalid path
    Then I should see a 404 page with a goat
