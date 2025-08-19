Feature: User Login
  As a registered user
  I want to log in to the application
  So that I can access my personal dashboard

  Background:
    Given the application is running
    And a user exists with email "user@example.com" and password "Password123"

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I enter email "user@example.com" and password "Password123"
    And I click the "Login" button
    Then I should be redirected to the dashboard
    And I should see a welcome message "Welcome, User!"

  Scenario: Unsuccessful login with invalid credentials
    Given I am on the login page
    When I enter email "user@example.com" and password "WrongPassword"
    And I click the "Login" button
    Then I should see an error message "Invalid email or password"

  Scenario: Login attempt with empty fields
    Given I am on the login page
    When I leave the email and password fields empty
    And I click the "Login" button
    Then I should see an error message "Email and password are required"
