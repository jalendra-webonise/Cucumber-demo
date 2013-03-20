Feature: Sign in Feature
As a user I should be able to log in if I am the registered user

Scenario: As a user I should not be able to log in if I am not registered user
  Given I am on home page
  When I follow "Sign In"
  When I submit wrong credential in Login form
  Then I should see "Invalid email or password."


Scenario: As a user I should be able to log in if I am registered user
  Given I am on login page
  And I have registered user with email "jalendra@weboniselab.com" and password "12345678"
  When I login with email "jalendra@weboniselab.com" and password "12345678"
  Then I should see "Signed in successfully."