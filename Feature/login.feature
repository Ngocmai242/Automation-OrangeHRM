Feature: Login OrangeHRM

  Scenario: Successful login with valid credentials
    Given the user is on the OrangeHRM login page
    When the user logs in with username "Admin" and password "admin123"
    Then the user should see the Dashboard page

  Scenario: Failed login with an incorrect password
    Given the user is on the OrangeHRM login page
    When the user logs in with username "Admin" and password "wrong-password"
    Then the system should display the error message "Invalid credentials"
