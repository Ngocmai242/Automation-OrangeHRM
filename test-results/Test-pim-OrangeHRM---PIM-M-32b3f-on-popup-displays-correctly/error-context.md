# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\pim.spec.js >> OrangeHRM - PIM Module (Employee Management) >> UI & UX Verifications >> Scenario: Verify Employee List table, pagination, required asterisk, and confirmation popup displays correctly
- Location: Test\pim.spec.js:575:5

# Error details

```
Error: expect(locator).toBeVisible() failed

Locator: locator('.oxd-table-header')
Expected: visible
Timeout: 5000ms
Error: element(s) not found

Call log:
  - Expect "toBeVisible" with timeout 5000ms
  - waiting for locator('.oxd-table-header')

```

# Page snapshot

```yaml
- generic [ref=e3]:
  - generic:
    - complementary [ref=e4]:
      - navigation "Sidepanel" [ref=e5]:
        - generic [ref=e6]:
          - link "client brand banner" [ref=e7] [cursor=pointer]:
            - /url: https://www.orangehrm.com/
            - img "client brand banner" [ref=e9]
          - text: 
        - generic [ref=e10]:
          - generic [ref=e11]:
            - generic [ref=e12]:
              - textbox "Search" [ref=e15]
              - button "" [ref=e16] [cursor=pointer]:
                - generic [ref=e17]: 
            - separator [ref=e18]
          - list [ref=e19]:
            - listitem [ref=e20]:
              - link "Admin" [ref=e21] [cursor=pointer]:
                - /url: /web/index.php/admin/viewAdminModule
                - generic [ref=e24]: Admin
            - listitem [ref=e25]:
              - link "PIM" [ref=e26] [cursor=pointer]:
                - /url: /web/index.php/pim/viewPimModule
                - generic [ref=e40]: PIM
            - listitem [ref=e41]:
              - link "Leave" [ref=e42] [cursor=pointer]:
                - /url: /web/index.php/leave/viewLeaveModule
                - generic [ref=e45]: Leave
            - listitem [ref=e46]:
              - link "Time" [ref=e47] [cursor=pointer]:
                - /url: /web/index.php/time/viewTimeModule
                - generic [ref=e53]: Time
            - listitem [ref=e54]:
              - link "Recruitment" [ref=e55] [cursor=pointer]:
                - /url: /web/index.php/recruitment/viewRecruitmentModule
                - generic [ref=e61]: Recruitment
            - listitem [ref=e62]:
              - link "My Info" [ref=e63] [cursor=pointer]:
                - /url: /web/index.php/pim/viewMyDetails
                - generic [ref=e69]: My Info
            - listitem [ref=e70]:
              - link "Performance" [ref=e71] [cursor=pointer]:
                - /url: /web/index.php/performance/viewPerformanceModule
                - generic [ref=e79]: Performance
            - listitem [ref=e80]:
              - link "Dashboard" [ref=e81] [cursor=pointer]:
                - /url: /web/index.php/dashboard/index
                - generic [ref=e84]: Dashboard
            - listitem [ref=e85]:
              - link "Directory" [ref=e86] [cursor=pointer]:
                - /url: /web/index.php/directory/viewDirectory
                - generic [ref=e89]: Directory
            - listitem [ref=e90]:
              - link "Maintenance" [ref=e91] [cursor=pointer]:
                - /url: /web/index.php/maintenance/viewMaintenanceModule
                - generic [ref=e95]: Maintenance
            - listitem [ref=e96]:
              - link "Claim" [ref=e97] [cursor=pointer]:
                - /url: /web/index.php/claim/viewClaimModule
                - img [ref=e100]
                - generic [ref=e104]: Claim
            - listitem [ref=e105]:
              - link "Buzz" [ref=e106] [cursor=pointer]:
                - /url: /web/index.php/buzz/viewBuzz
                - generic [ref=e109]: Buzz
    - banner [ref=e110]:
      - generic [ref=e111]:
        - generic [ref=e112]:
          - text: 
          - heading "PIM" [level=6] [ref=e114]
        - link "Upgrade" [ref=e116]:
          - /url: https://orangehrm.com/open-source/upgrade-to-advanced
          - button "Upgrade" [ref=e117] [cursor=pointer]: Upgrade
        - list [ref=e123]:
          - listitem [ref=e124]:
            - generic [ref=e125] [cursor=pointer]:
              - img "profile picture" [ref=e126]
              - paragraph [ref=e127]: manda user
              - generic [ref=e128]: 
      - navigation "Topbar Menu" [ref=e130]:
        - list [ref=e131]:
          - listitem [ref=e132] [cursor=pointer]:
            - generic [ref=e133]:
              - text: Configuration
              - generic [ref=e134]: 
          - listitem [ref=e135] [cursor=pointer]:
            - link "Employee List" [ref=e136]:
              - /url: "#"
          - listitem [ref=e137] [cursor=pointer]:
            - link "Add Employee" [ref=e138]:
              - /url: "#"
          - listitem [ref=e139] [cursor=pointer]:
            - link "Reports" [ref=e140]:
              - /url: "#"
          - button "" [ref=e142] [cursor=pointer]:
            - generic [ref=e143]: 
  - generic [ref=e144]:
    - generic [ref=e146]:
      - generic [ref=e147]:
        - generic [ref=e148]:
          - heading "Employee Information" [level=5] [ref=e150]
          - button "" [ref=e153] [cursor=pointer]:
            - generic [ref=e154]: 
        - separator [ref=e155]
        - generic [ref=e157]:
          - generic [ref=e159]:
            - generic [ref=e161]:
              - generic [ref=e163]: Employee Name
              - textbox "Type for hints..." [ref=e167]
            - generic [ref=e169]:
              - generic [ref=e171]: Employee Id
              - textbox [ref=e173]
            - generic [ref=e175]:
              - generic [ref=e177]: Employment Status
              - generic [ref=e180] [cursor=pointer]:
                - generic [ref=e181]: "-- Select --"
                - generic [ref=e183]: 
            - generic [ref=e185]:
              - generic [ref=e187]: Include
              - generic [ref=e190] [cursor=pointer]:
                - generic [ref=e191]: Current Employees Only
                - generic [ref=e193]: 
            - generic [ref=e195]:
              - generic [ref=e197]: Supervisor Name
              - textbox "Type for hints..." [ref=e201]
            - generic [ref=e203]:
              - generic [ref=e205]: Job Title
              - generic [ref=e208] [cursor=pointer]:
                - generic [ref=e209]: "-- Select --"
                - generic [ref=e211]: 
            - generic [ref=e213]:
              - generic [ref=e215]: Sub Unit
              - generic [ref=e218] [cursor=pointer]:
                - generic [ref=e219]: "-- Select --"
                - generic [ref=e221]: 
          - separator [ref=e222]
          - generic [ref=e223]:
            - button "Reset" [ref=e224] [cursor=pointer]
            - button "Search" [ref=e225] [cursor=pointer]
      - generic [ref=e226]:
        - button " Add" [ref=e228] [cursor=pointer]:
          - generic [ref=e229]: 
          - text: Add
        - table [ref=e231]
    - generic [ref=e236]:
      - paragraph [ref=e237]: OrangeHRM OS 5.8
      - paragraph [ref=e238]:
        - text: © 2005 - 2026
        - link "OrangeHRM, Inc" [ref=e239] [cursor=pointer]:
          - /url: http://www.orangehrm.com
        - text: . All rights reserved.
```

# Test source

```ts
  478 |       await expect(firstRow).toBeVisible();
  479 | 
  480 |       // Step 3: Delete employee successfully
  481 |       await deleteButton.click();
  482 |       await confirmDialog(page, true);
  483 | 
  484 |       // Verify success toast
  485 |       await expect(page.locator('.oxd-toast')).toBeVisible({ timeout: 15000 });
  486 | 
  487 |       // Step 4: Verify deleted employee no longer appears in Employee List
  488 |       await openPim(page);
  489 |       await searchEmployee(page, { id: tempEmpId });
  490 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
  491 |     });
  492 |   });
  493 | 
  494 |   test.describe('Search Employee', () => {
  495 |     let createdEmpId;
  496 |     let createdFirstName;
  497 |     let createdLastName;
  498 | 
  499 |     test.beforeAll(async ({ browser }) => {
  500 |       // Create a temporary employee to guarantee search results match perfectly
  501 |       const context = await browser.newContext();
  502 |       const page = await context.newPage();
  503 |       await loginAsAdmin(page);
  504 |       await openPim(page);
  505 |       await startAddEmployee(page);
  506 | 
  507 |       const uniqueSuffix = Date.now().toString().slice(-6);
  508 |       createdFirstName = 'Linda';
  509 |       createdLastName = `Anderson${uniqueSuffix}`;
  510 |       createdEmpId = `95${uniqueSuffix}`;
  511 | 
  512 |       await page.locator('input[name="firstName"]').fill(createdFirstName);
  513 |       await page.locator('input[name="lastName"]').fill(createdLastName);
  514 |       
  515 |       const idInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  516 |       await idInput.fill(createdEmpId);
  517 |       await page.locator('button[type="submit"]').click();
  518 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
  519 |       await context.close();
  520 |     }, 120000);
  521 | 
  522 |     test('Scenario: Search employee by exact name & partial name & Employee ID', async ({ page }) => {
  523 |       // 1. Search employee by exact name
  524 |       await searchEmployee(page, { name: `${createdFirstName} ${createdLastName}` });
  525 |       await expect(page.locator('.oxd-table-body .oxd-table-row').first()).toBeVisible();
  526 | 
  527 |       // 2. Search employee by partial name
  528 |       await openPim(page);
  529 |       await searchEmployee(page, { name: createdFirstName });
  530 |       await expect(page.locator('.oxd-table-body .oxd-table-row').first()).toBeVisible();
  531 | 
  532 |       // 3. Search employee by Employee ID
  533 |       await openPim(page);
  534 |       await searchEmployee(page, { id: createdEmpId });
  535 |       await expect(page.locator('.oxd-table-body .oxd-table-row').first()).toBeVisible();
  536 |       await expect(page.locator('.oxd-table-body .oxd-table-row').first().locator('.oxd-table-cell').nth(1)).toHaveText(createdEmpId);
  537 |     });
  538 | 
  539 |     test('Scenario: Search non-existing employee', async ({ page }) => {
  540 |       await searchEmployee(page, { name: 'abcxyz' });
  541 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
  542 |     });
  543 | 
  544 |     test('Scenario: Reset employee search filters', async ({ page }) => {
  545 |       const employeeNameInput = page.locator('input[placeholder="Type for hints..."]').first();
  546 |       const employeeIdInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  547 | 
  548 |       await employeeNameInput.fill('Linda');
  549 |       await employeeIdInput.fill('1234');
  550 | 
  551 |       await clickEmployeeReset(page);
  552 | 
  553 |       await expect(employeeNameInput).toHaveValue('');
  554 |       await expect(employeeIdInput).toHaveValue('');
  555 |     });
  556 | 
  557 |     test('Scenario: Search employee with multiple filters', async ({ page }) => {
  558 |       await searchEmployee(page, { name: createdFirstName, id: createdEmpId });
  559 |       await expect(page.locator('.oxd-table-body .oxd-table-row').first()).toBeVisible();
  560 |     });
  561 | 
  562 |     test('Scenario: Reject SQL Injection & XSS in search field', async ({ page }) => {
  563 |       // SQL Injection
  564 |       await searchEmployee(page, { name: "' OR 1=1 --" });
  565 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
  566 | 
  567 |       // XSS script
  568 |       await openPim(page);
  569 |       await searchEmployee(page, { name: '<script>alert(1)</script>' });
  570 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
  571 |     });
  572 |   });
  573 | 
  574 |   test.describe('UI & UX Verifications', () => {
  575 |     test('Scenario: Verify Employee List table, pagination, required asterisk, and confirmation popup displays correctly', async ({ page }) => {
  576 |       // 1. Verify Employee List table displays correctly
  577 |       const tableHeaders = page.locator('.oxd-table-header');
> 578 |       await expect(tableHeaders).toBeVisible();
      |                                  ^ Error: expect(locator).toBeVisible() failed
  579 |       await expect(tableHeaders.locator('.oxd-table-header-cell')).toHaveCount(9); // OrangeHRM standard has 9 header cells including checkbox, actions, etc.
  580 | 
  581 |       // 2. Verify pagination works correctly
  582 |       const pagination = page.locator('.oxd-pagination');
  583 |       if (await pagination.count()) {
  584 |         await expect(pagination).toBeVisible();
  585 |       } else {
  586 |         console.log('Skipping pagination tests as the employee count is insufficient to trigger pagination elements.');
  587 |       }
  588 | 
  589 |       // 3. Verify Required field indicator displays correctly
  590 |       await startAddEmployee(page);
  591 |       const group = page.locator('.oxd-input-group').filter({ has: page.locator('input[name="firstName"]') }).first();
  592 |       await expect(group).toBeVisible();
  593 |       const groupHtml = await group.innerHTML();
  594 |       const hasAsterisk = groupHtml.includes('*') || groupHtml.includes('required') || groupHtml.includes('oxd-label-required');
  595 |       expect(hasAsterisk).toBeTruthy();
  596 | 
  597 |       // 4. Verify delete confirmation modal displays correctly
  598 |       await openPim(page);
  599 |       await clickEmployeeSearch(page);
  600 |       const firstRow = page.locator('.oxd-table-body .oxd-table-row').first();
  601 |       await expect(firstRow).toBeVisible();
  602 | 
  603 |       const deleteButton = firstRow.locator('.oxd-table-cell-actions button').nth(1);
  604 |       await deleteButton.click();
  605 | 
  606 |       const modal = page.locator('.oxd-dialog-sheet:visible, .oxd-dialog-container:visible, [role="dialog"]:visible').first();
  607 |       await expect(modal).toBeVisible();
  608 |       await expect(modal).toContainText(/Are you sure?/i);
  609 | 
  610 |       // Close modal
  611 |       await modal.locator('button.oxd-button--ghost, button:has-text("No, Cancel")').click();
  612 |       await expect(modal).toBeHidden();
  613 |     });
  614 | 
  615 |     test('Scenario: Verify employee records persist after browser refresh', async ({ page }) => {
  616 |       await searchEmployee(page, { name: 'Linda' });
  617 |       const firstRow = page.locator('.oxd-table-body .oxd-table-row').first();
  618 |       await expect(firstRow).toBeVisible();
  619 | 
  620 |       const cellText = await firstRow.locator('.oxd-table-cell').nth(2).innerText();
  621 | 
  622 |       await page.reload({ waitUntil: 'domcontentloaded' });
  623 |       await openPim(page);
  624 |       await searchEmployee(page, { name: 'Linda' });
  625 |       await expect(firstRow).toBeVisible();
  626 |       await expect(firstRow.locator('.oxd-table-cell').nth(2)).toHaveText(cellText);
  627 |     });
  628 |   });
  629 | });
  630 | 
```