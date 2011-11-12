Feature: recipes

  Scenario: Creating a new recipe
    Given I am at "/recipes/new"
    When I type "cookies" into "title"
    And I type "combine sugar and butter" into "instructions"
    And I click "Create Recipe"
    Then I should see "sugar and butter"
    And I should see "Recipe was successfully created."
