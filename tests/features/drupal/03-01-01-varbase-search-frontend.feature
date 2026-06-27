@varbase_search @frontend @search
Feature: Varbase Search - front-end search box
  As a visitor
  I want to search the site from the front-end search box
  So that I can find published content by keyword

  Scenario: A visitor finds an article using the front-end search box
    Given I am an anonymous user
    When I am on "/"
    And I fill in "Search the site" with "strawberry"
    And I press "Search the site"
    Then I should see "Findable Varbase Article"
    And I should not see "No results found"
    And I should not see "The website encountered an unexpected error"

  Scenario: The search results page returns the matching article
    Given I am an anonymous user
    When I am on "/search?search=strawberry"
    Then I should see "Findable Varbase Article"
    And I should not see "No results found"
