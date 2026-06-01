# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\pim.spec.js >> OrangeHRM - PIM Module (Employee Management) >> Update Employee >> Scenario: Update employee successfully & Reject invalid Employee Name during update
- Location: Test\pim.spec.js:404:5

# Error details

```
Test timeout of 120000ms exceeded while running "beforeEach" hook.
```

```
Error: expect(page).toHaveURL(expected) failed

Expected pattern: /\/pim\/viewEmployeeList/
Received string:  "https://opensource-demo.orangehrmlive.com/web/index.php/pim/viewPimModule"

Call log:
  - Expect "toHaveURL" with timeout 30000ms
    30 × unexpected value "https://opensource-demo.orangehrmlive.com/web/index.php/pim/viewPimModule"

```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - heading "504 Gateway Time-out" [level=1] [ref=e3]
  - separator [ref=e4]
  - generic [ref=e5]: nginx/1.18.0 (Ubuntu)
```

# Test source

```ts
  1   | const { test, expect } = require('@playwright/test');
  2   | 
  3   | const LOGIN_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login';
  4   | const DASHBOARD_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index';
  5   | const PIM_EMPLOYEE_LIST_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/pim/viewEmployeeList';
  6   | 
  7   | // Helper to log in as Admin
  8   | async function loginAsAdmin(page) {
  9   |   await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });
  10  |   await page.locator('input[name="username"]').fill('Admin');
  11  |   await page.locator('input[name="password"]').fill('admin123');
  12  |   await page.locator('button[type="submit"]').click();
  13  | 
  14  |   await expect(page).toHaveURL(/\/dashboard(\/index)?/, { timeout: 30000 });
  15  |   await expect(page.locator('.oxd-userdropdown-name')).toBeVisible({ timeout: 30000 });
  16  | }
  17  | 
  18  | // Helper to open PIM module
  19  | async function openPim(page) {
  20  |   const pimNavLink = page.locator('a[href*="/pim/viewPimModule"]').first();
  21  |   if (await pimNavLink.count()) {
  22  |     await pimNavLink.click();
  23  |   } else {
  24  |     await page.goto(PIM_EMPLOYEE_LIST_URL, { waitUntil: 'domcontentloaded' });
  25  |   }
  26  | 
> 27  |   await expect(page).toHaveURL(/\/pim\/viewEmployeeList/, { timeout: 30000 });
      |                      ^ Error: expect(page).toHaveURL(expected) failed
  28  |   const employeeNameInput = page.locator('input[placeholder="Type for hints..."]').first();
  29  |   await expect(employeeNameInput).toBeVisible({ timeout: 30000 });
  30  | }
  31  | 
  32  | // Helper to wait for form load
  33  | async function waitForFormLoader(page) {
  34  |   const loader = page.locator('.oxd-form-loader').first();
  35  |   if (await loader.count()) {
  36  |     try {
  37  |       await expect(loader).toBeHidden({ timeout: 15000 });
  38  |     } catch {}
  39  |   }
  40  | }
  41  | 
  42  | // Get Search Action buttons (Reset, Search)
  43  | async function employeeSearchActionButtons(page) {
  44  |   const searchForm = page.locator('.oxd-table-filter form').first();
  45  |   const actionButtons = searchForm.locator('.oxd-form-actions button');
  46  |   await expect(actionButtons.first()).toBeVisible({ timeout: 30000 });
  47  |   return actionButtons;
  48  | }
  49  | 
  50  | // Click Search button
  51  | async function clickEmployeeSearch(page) {
  52  |   const actionButtons = await employeeSearchActionButtons(page);
  53  |   // The Search button is typically the last button in oxd-form-actions (Reset is first, Search is second)
  54  |   await actionButtons.last().click();
  55  | }
  56  | 
  57  | // Click Reset button
  58  | async function clickEmployeeReset(page) {
  59  |   const actionButtons = await employeeSearchActionButtons(page);
  60  |   await actionButtons.first().click();
  61  | }
  62  | 
  63  | // Search Employee by name or/and id
  64  | async function searchEmployee(page, { name = '', id = '' } = {}) {
  65  |   if (name) {
  66  |     const employeeNameInput = page.locator('input[placeholder="Type for hints..."]').first();
  67  |     await expect(employeeNameInput).toBeVisible();
  68  |     await employeeNameInput.fill(name);
  69  |     // Allow auto-complete suggestion to pop up and click it if visible
  70  |     const firstSuggestion = page.locator('.oxd-autocomplete-option').first();
  71  |     try {
  72  |       await expect(firstSuggestion).toBeVisible({ timeout: 4000 });
  73  |       await firstSuggestion.click();
  74  |     } catch {}
  75  |   }
  76  | 
  77  |   if (id) {
  78  |     const employeeIdInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  79  |     await expect(employeeIdInput).toBeVisible();
  80  |     await employeeIdInput.fill(id);
  81  |   }
  82  | 
  83  |   await clickEmployeeSearch(page);
  84  | 
  85  |   const table = page.locator('.oxd-table').first();
  86  |   await expect(table).toBeVisible();
  87  | 
  88  |   const rows = page.locator('.oxd-table-body .oxd-table-row');
  89  |   const noRecords = page.getByText('No Records Found', { exact: true }).first();
  90  | 
  91  |   await expect
  92  |     .poll(async () => {
  93  |       const rowCount = await rows.count();
  94  |       if (rowCount > 0) return 'rows';
  95  |       if (await noRecords.isVisible().catch(() => false)) return 'no-records';
  96  |       return 'loading';
  97  |     }, { timeout: 15000 })
  98  |     .not.toBe('loading');
  99  | }
  100 | 
  101 | // Start adding a new employee
  102 | async function startAddEmployee(page) {
  103 |   const addButton = page.locator('a[href*="/pim/addEmployee"], button:has(i.bi-plus), button:has(i.oxd-icon.bi-plus)').first();
  104 |   await expect(addButton).toBeVisible();
  105 |   await addButton.click();
  106 |   await expect(page).toHaveURL(/\/pim\/addEmployee/);
  107 |   await expect(page.locator('input[name="firstName"]')).toBeVisible();
  108 |   await expect(page.locator('input[name="lastName"]')).toBeVisible();
  109 | }
  110 | 
  111 | // Confirm dialog (Delete confirmation modal)
  112 | async function confirmDialog(page, shouldConfirm) {
  113 |   const modal = page
  114 |     .locator('.oxd-dialog-sheet:visible, .oxd-dialog-container:visible, [role="dialog"]:visible')
  115 |     .first();
  116 |   await expect(modal).toBeVisible({ timeout: 10000 });
  117 | 
  118 |   const confirmButton = modal.locator('button.oxd-button--label-danger, button:has-text("Yes, Delete")').first();
  119 |   const cancelButton = modal.locator('button.oxd-button--text, button.oxd-button--ghost, button:has-text("No, Cancel")').first();
  120 | 
  121 |   if (shouldConfirm) {
  122 |     await confirmButton.click();
  123 |   } else {
  124 |     await cancelButton.click();
  125 |   }
  126 | 
  127 |   await expect(modal).toBeHidden();
```