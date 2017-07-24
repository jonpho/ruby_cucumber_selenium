Feature: Test Google

  Scenario: Testing a search in google
    Given I navigate to google
    And I enter text to search
    When I click on search
    Then I should have results