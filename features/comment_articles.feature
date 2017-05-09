Feature: An article has comments
  As a visitor,
  when I visit the application's landing page,
  I would like to be able to comment and read comments on articles

  Background:
    Given the following article exist
      | title                | content                            | author |
      | A breaking news item | Some really breaking action        | Thomas |
      | Learn Rails 5        | Build awesome rails applications   | Amber  |

    Scenario: Viewing list of articles on application's landing page
      Given I visit "A breaking news item" article's page
      Then I should see "A breaking news item"
      And I should see "Some really breaking action"
      And I should see "Written by Thomas at 2016-12-15"
      When I click on "Add a comment"
      Then I should see "Add a comment to 'A breaking news item'"
      When I fill in "comment" with "This is a comment"
      # And I fill in "email" with "email@email.com"
      And I click on "Add Comment" button
      # Then I should see "This is a comment"
      And I should see "email@email.com"
