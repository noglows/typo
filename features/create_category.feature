Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully go to admin category creation page
    Given I am on the new admin category page
    When I fill in "category_name" with "Test Category"
    And I press "Save"
    Then I should be on the new admin category page
    Then I should see "Test Category"
