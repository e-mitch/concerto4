Feature: newUser
  As a user
  I want to see the create user form when I hit sign up
  So I can create an account

 Scenario: view signup page
    When I go to the signup page
    And I see the signup header
    And I see the username header
    And I set the "username" to "JohnDoe"
    And I set the "password" to "testpassword"
    Then I see should see the password header
