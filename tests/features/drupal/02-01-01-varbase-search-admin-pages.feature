@varbase_search @search-api
Feature: Varbase Search - Search API database server
  As a site administrator
  I want Varbase Search to provide a ready Search API database server
  So that content can be indexed and searched out of the box

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Varbase Search provides an enabled database Search API server
    When I go to "/admin/config/search/search-api"
    Then I should see "Database server"
    And I should see "Enabled"
    And I should not see "Access denied"
    And I should not see "The website encountered an unexpected error"

  Scenario: The database server uses the Database backend
    When I go to "/admin/config/search/search-api/server/database_server"
    Then I should see "Database server"
    And I should see "Database"
    And I should not see "Page not found"
    And I should not see "The website encountered an unexpected error"
