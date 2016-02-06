Feature: Merge Articles - User
  As a blog user
  I am not able to merge articles

  Background:
    Given the blog is set up

  Scenario: Merge option does not exist for admin
    Given I am logged into the publisher panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    And I follow "Foobar"
    Then I should not see "Merge Articles"

  Scenario: Admin can merge articles
    Given I am logged into the admin panel

    When I am on the new article page
    And I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"

    When I am on the new article page
    And I fill in "article_title" with "Second Foobar"
    And I fill in "article__body_and_extended_editor" with "Second Text"
    And I press "Publish"

    When I click on "Foobar"
    Then I should see "Merge Articles"
    When I merge in article with title "Second Foobar"
    And I follow "Foobar"
    Then I should see "Lorem Ipsum" and "Second Text" in merged article
