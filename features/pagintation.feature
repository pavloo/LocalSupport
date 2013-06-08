Feature: A member of public can choose the page with organizations to be displayed
         As a member of public
         So that I can view organizations page by page ordered by update date
         I wanna be able to select a page with organizations
         Pivotal link: https://www.pivotaltracker.com/story/show/50078927

Background: organizations have been added to database
  Given "50" organizations exist

Scenario: The first page is displayed correctly
  Given I am on the home page
  Then I should be on page "1" of "10"

Scenario: The fourth page is displayed correctly
  Given I am on the home page
  When I navigate to page "4"
  Then I should be on page "4" of "10"

