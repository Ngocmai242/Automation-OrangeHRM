Feature: PIM (Employee Management)

  Background:
    Given the user is logged in as "Admin" with password "admin123"

  Scenario: Open PIM module successfully
    Given the user is on the dashboard page
    When the user opens the PIM page
    Then the user should see the PIM page

  Scenario: Add employee successfully with mandatory fields
    Given user navigates to "Add Employee" page
    When user enters valid mandatory employee information
    And user clicks "Save" button
    Then system should create employee successfully

    Test Data

    | First Name | Last Name | Employee ID |
    | ---------- | --------- | ----------- |
    | Mai        | Nguyen    | EMP001      |

  Scenario: Add employee successfully with full information
    Given user navigates to "Add Employee" page
    When user enters full valid employee information
    And user clicks "Save" button
    Then system should save employee successfully

    Test Data

    | First Name | Middle Name | Last Name | Employee ID |
    | ---------- | ----------- | --------- | ----------- |
    | Mai        | Thi         | Nguyen    | EMP002      |

  Scenario: Add employee with empty mandatory fields
    Given user navigates to "Add Employee" page
    When user leaves mandatory fields empty
    And user clicks "Save" button
    Then system should display Required message

    Test Data

    | First Name | Last Name |
    | ---------- | --------- |
    | ""         | ""        |

  Scenario: Add employee with duplicate Employee ID
    Given Employee ID already exists in system
    When user enters duplicate Employee ID
    Then system should display duplicate validation error

    Test Data

    | Employee ID |
    | ----------- |
    | EMP001      |

  Scenario: Upload valid avatar image successfully
    Given user navigates to "Add Employee" page
    When user uploads valid avatar image
    Then system should upload avatar successfully

    Test Data

    | File Name  |
    | ---------- |
    | avatar.png |

  Scenario: Upload unsupported file format
    Given user navigates to "Add Employee" page
    When user uploads unsupported file format
    Then system should reject file upload

    Test Data

    | File Name |
    | --------- |
    | virus.exe |

  Scenario: Accept valid Employee Name
    Given user navigates to "Add Employee" page
    When user enters valid Employee Name
    Then system should accept the input

    Test Data

    | Employee Name |
    | ------------- |
    | Nguyễn Mai    |

  Scenario: Accept Employee Name with minimum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee Name with minimum allowed length
    Then system should accept the input

    Test Data

    | Employee Name |
    | ------------- |
    | A             |

  Scenario: Accept Employee Name with maximum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee Name with maximum allowed length
    Then system should accept the input

    Test Data

    | Employee Name            |
    | ------------------------ |
    | NguyenVanAnhTranThiMaiAB |

  Scenario: Reject spaces-only Employee Name
    Given user navigates to "Add Employee" page
    When user enters spaces only into Employee Name field
    Then system should reject the input

    Test Data

    | Employee Name |
    | ------------- |
    | "   "         |

  Scenario: Reject numeric Employee Name
    Given user navigates to "Add Employee" page
    When user enters numeric characters into Employee Name field
    Then system should reject the input

    Test Data

    | Employee Name |
    | ------------- |
    | 123456        |

  Scenario: Reject alphanumeric Employee Name
    Given user navigates to "Add Employee" page
    When user enters alphabet and numeric characters into Employee Name field
    Then system should reject the input

    Test Data

    | Employee Name |
    | ------------- |
    | Mai123        |

  Scenario: Reject special characters in Employee Name
    Given user navigates to "Add Employee" page
    When user enters special characters into Employee Name field
    Then system should reject the input

    Test Data

    | Employee Name |
    | ------------- |
    | @#$%          |

  Scenario: Reject Employee Name exceeding maximum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee Name exceeding maximum allowed length
    Then system should reject the input

    Test Data

    | Employee Name             |
    | ------------------------- |
    | NguyenVanAnhTranThiMaiABC |

  Scenario: Reject XSS script input in Employee Name
    Given user navigates to "Add Employee" page
    When user enters script code into Employee Name field
    Then system should not execute the script

    Test Data

    | Employee Name             |
    | ------------------------- |
    | <script>alert(1)</script> |

  Scenario: Accept valid Employee ID
    Given user navigates to "Add Employee" page
    When user enters valid Employee ID
    Then system should accept Employee ID

    Test Data

    | Employee ID |
    | ----------- |
    | EMP001      |

  Scenario: Accept Employee ID with minimum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee ID with minimum allowed length
    Then system should accept Employee ID

    Test Data

    | Employee ID |
    | ----------- |
    | A           |

  Scenario: Accept Employee ID with maximum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee ID with maximum allowed length
    Then system should accept Employee ID

    Test Data

    | Employee ID |
    | ----------- |
    | EMP0000001  |

  Scenario: Reject special characters in Employee ID
    Given user navigates to "Add Employee" page
    When user enters special characters into Employee ID field
    Then system should reject Employee ID

    Test Data

    | Employee ID |
    | ----------- |
    | EMP@01      |

  Scenario: Reject Employee ID exceeding maximum allowed length
    Given user navigates to "Add Employee" page
    When user enters Employee ID exceeding maximum allowed length
    Then system should reject Employee ID

    Test Data

    | Employee ID |
    | ----------- |
    | EMP00000001 |

  Scenario: Update employee successfully
    Given employee exists in system
    When user updates employee information
    And user clicks "Save" button
    Then system should update employee successfully

    Test Data

    | First Name | Last Name |
    | ---------- | --------- |
    | Mai Anh    | Nguyen    |

  Scenario: Reject invalid Employee Name during update
    Given employee exists in system
    When user enters invalid Employee Name
    And user clicks "Save" button
    Then system should display validation error

    Test Data

    | Employee Name |
    | ------------- |
    | 123456        |

  Scenario: Delete employee successfully
    Given employee exists in Employee List
    When user selects employee
    And user clicks "Delete" button
    And user confirms deletion
    Then system should delete employee successfully

  Scenario: Cancel employee deletion
    Given delete confirmation popup is displayed
    When user clicks "Cancel" button
    Then system should not delete employee

  Scenario: Verify deleted employee no longer appears in Employee List
    Given employee was deleted successfully
    When user searches deleted employee
    Then system should display No Records Found message

  Scenario: Search employee by exact name
    Given employee exists in system
    When user searches employee by exact name
    Then system should display matching employee

    Test Data

    | Keyword        |
    | -------------- |
    | Linda Anderson |

  Scenario: Search employee by partial name
    Given employee exists in system
    When user searches employee by partial name
    Then system should display related employees

    Test Data

    | Keyword |
    | ------- |
    | Linda   |

  Scenario: Search employee by Employee ID
    Given employee exists in system
    When user searches employee by Employee ID
    Then system should display correct employee

    Test Data

    | Keyword |
    | ------- |
    | EMP001  |

  Scenario: Search non-existing employee
    Given employee does not exist in system
    When user searches non-existing employee
    Then system should display No Records Found message

    Test Data

    | Keyword |
    | ------- |
    | abcxyz  |

  Scenario: Reset employee search filters
    Given user entered search conditions
    When user clicks "Reset" button
    Then system should clear all search conditions

  Scenario: Search employee with multiple filters
    Given employee exists in system
    When user searches employee using multiple filters
    Then system should display matching result

    Test Data

    | Employee Name  | Employee ID |
    | -------------- | ----------- |
    | Linda Anderson | EMP001      |

  Scenario: Reject SQL Injection input in search field
    Given user navigates to Employee Search page
    When user enters SQL Injection string
    Then system should not bypass validation

    Test Data

    | Keyword     |
    | ----------- |
    | ' OR 1=1 -- |

  Scenario: Reject XSS script input in search field
    Given user navigates to Employee Search page
    When user enters XSS script into search field
    Then system should not execute the script

    Test Data

    | Keyword                   |
    | ------------------------- |
    | <script>alert(1)</script> |

  Scenario: Verify Employee List table displays correctly
    Given user navigates to Employee List page
    When page loads successfully
    Then Employee List table should display correctly

  Scenario: Verify pagination works correctly
    Given Employee List contains multiple pages
    When user navigates between pages
    Then system should display correct employee records

  Scenario: Verify employee records persist after browser refresh
    Given employee record exists in system
    When user refreshes browser
    Then employee data should remain unchanged

  Scenario: Verify Required field indicator displays correctly
    Given user navigates to Add Employee page
    Then mandatory fields should display "*" symbol

  Scenario: Verify success toast message displays after adding employee
    Given employee is added successfully
    When save operation completes
    Then system should display success toast message

  Scenario: Verify delete confirmation modal displays correctly
    Given user clicks Delete button
    Then system should display delete confirmation modal
