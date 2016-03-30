Feature: Create and edit categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Adding a new category
    When I go to the categories page
    And I fill in "category_name" with "Test"
    And I fill in "category_description" with "This is a description"
    And I press "Save"
    Then I should be on the categories page
    Then I should see "Test"
    Then I should see "This is a description"

  Scenario: Editing an existing category
    Given I am on the edit category page
    When I fill in "category_name" with "Different Name"
    And I press "Save"
    Then I should be on the categories page
    Then I should see "Different Name"
    And I should not see "General"
