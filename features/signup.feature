Feature: Sign up Feature
As a user I should be able to signup if I am not registered


Scenario: As a user I  should be able to register on site
  Given I am on signup page
  When I register user with email "jalendra@weboniselab.com" and password "12345678"
  Then I should see "Welcome! You have signed up successfully."

Scenario: As a user I  should get error if i enter email of invalid format
  Given I am on signup page
  When I register user with email "jalendra@webonisem" and password "12345678"
  Then I should see "Email is invalid"