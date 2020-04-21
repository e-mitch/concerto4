Feature: newProfile
  As a user
  I want to create a profile after I sign up
  So I can give my interests, etc.

 Scenario: view profile create page
    When I go to the create profile page
    And I see the create profile header
    And I see the name header
    And I see the email header
    And I see the bio header
    And I see the interests header
    And I see the soundcloud header
    And I see the youtube header
    Then I see the spotify header