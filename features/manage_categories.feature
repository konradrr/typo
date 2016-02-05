Feature: Manage Categories
  As a blog administrator
  In order to share my thoughts with the world in structured way
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add a category
    Given I am on the new admin category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "lorem-ipsum"
    And I fill in "category_description" with "Foobar Foobar Foobar"
    And I press "Save"
    Then I should be on the new admin category page
    And I should see "Foobar"
    And I should see "Lorem Ipsum"
    And I should see "lorem-ipsum"
    And I should see "Lorem Ipsum"
    And I should see "Foobar Foobar Foobar"

  Scenario: Successfully edit a category
    Given I am on the admin categories page
    When I click on "Edit"
    And I fill in "category_keywords" with "Lorem Ipsum222"
    And I fill in "category_permalink" with "lorem-ipsum222"
    And I fill in "category_description" with "Foobar"
    And I press "Save"
    Then I should be on the new admin category page
    And I should see "Lorem Ipsum222"
    And I should see "lorem-ipsum222"
    And I should see "Lorem Ipsum"
    And I should see "Foobar"
