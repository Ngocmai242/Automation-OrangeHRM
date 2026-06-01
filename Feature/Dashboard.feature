Feature: Dashboard

  Background:
    Given the user is logged in as "Admin" with password "admin123"

  Scenario: Redirect to login when accessing Dashboard without authentication
    Given the user is not logged in
    When the user accesses the Dashboard page URL directly
    Then the user should be redirected to the login page

  Scenario: Dashboard loads successfully after login
    Given the user is on the dashboard page
    When the user opens the Dashboard page
    Then the user should see the Dashboard page

  Scenario: Session persists after refreshing the Dashboard page
    Given the user is on the dashboard page
    When the user refreshes the page
    Then the user should still see the Dashboard page

  Scenario: Logout from Dashboard
    Given the user is on the dashboard page
    When the user logs out
    Then the user should be redirected to the login page

  Scenario: Cannot access Dashboard after logout
    Given the user has logged out
    When the user navigates to the Dashboard page
    Then the user should be redirected to the login page
