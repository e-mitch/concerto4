Feature: welcome
  As the site owner
  I want users to be greeted when they visit the site
  So they know what site they are on
  
  Scenario: view welcome page
    When I go to the home page
    Then I should see the name of the site
    Then I should see the site description