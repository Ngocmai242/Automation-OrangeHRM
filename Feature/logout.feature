Feature: Logout

  Background:
    Given the user is logged in as "Admin" with password "admin123"

  Scenario: Successfully logged out and redirected to the login page
    Given the user is on the Dashboard page
    When the user logs out
    Then the user should be redirected to the login page

  Scenario: Cannot access the Dashboard after logout
    Given the user has logged out
    When the user accesses the Dashboard page URL directly
    Then the user should be redirected to the login page
