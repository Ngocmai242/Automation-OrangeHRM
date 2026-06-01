# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\pim.spec.js >> OrangeHRM - PIM Module (Employee Management) >> Delete Employee >> Scenario: Delete employee successfully, cancel deletion, and verify search
- Location: Test\pim.spec.js:447:5

# Error details

```
Error: expect(locator).toBeVisible() failed

Locator: getByText('No Records Found', { exact: true }).first()
Expected: visible
Timeout: 5000ms
Error: element(s) not found

Call log:
  - Expect "toBeVisible" with timeout 5000ms
  - waiting for getByText('No Records Found', { exact: true }).first()

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
              - textbox [ref=e173]: "94046141"
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
            - button "Search" [active] [ref=e225] [cursor=pointer]
      - generic [ref=e226]:
        - button " Add" [ref=e228] [cursor=pointer]:
          - generic [ref=e229]: 
          - text: Add
        - generic [ref=e230]:
          - separator [ref=e231]
          - generic [ref=e233]: (1) Record Found
        - table [ref=e235]:
          - rowgroup [ref=e236]:
            - row " Id  First (& Middle) Name  Last Name  Job Title  Employment Status  Sub Unit  Supervisor  Actions" [ref=e237]:
              - columnheader "" [ref=e238]:
                - generic [ref=e240] [cursor=pointer]:
                  - checkbox "" [ref=e241]
                  - generic [ref=e243]: 
              - columnheader "Id " [ref=e244]:
                - text: Id
                - generic [ref=e245]:
                  - generic [ref=e246] [cursor=pointer]: 
                  - text:  
              - columnheader "First (& Middle) Name " [ref=e247]:
                - text: First (& Middle) Name
                - generic [ref=e248]:
                  - generic [ref=e249] [cursor=pointer]: 
                  - text:  
              - columnheader "Last Name " [ref=e250]:
                - text: Last Name
                - generic [ref=e251]:
                  - generic [ref=e252] [cursor=pointer]: 
                  - text:  
              - columnheader "Job Title " [ref=e253]:
                - text: Job Title
                - generic [ref=e254]:
                  - generic [ref=e255] [cursor=pointer]: 
                  - text:  
              - columnheader "Employment Status " [ref=e256]:
                - text: Employment Status
                - generic [ref=e257]:
                  - generic [ref=e258] [cursor=pointer]: 
                  - text:  
              - columnheader "Sub Unit " [ref=e259]:
                - text: Sub Unit
                - generic [ref=e260]:
                  - generic [ref=e261] [cursor=pointer]: 
                  - text:  
              - columnheader "Supervisor " [ref=e262]:
                - text: Supervisor
                - generic [ref=e263]:
                  - generic [ref=e264] [cursor=pointer]: 
                  - text:  
              - columnheader "Actions" [ref=e265]
          - rowgroup [ref=e266]:
            - row " 94046141 DeleteMe Test046141  " [ref=e268] [cursor=pointer]:
              - cell "" [ref=e269]:
                - generic [ref=e272]:
                  - checkbox "" [ref=e273]
                  - generic [ref=e275]: 
              - cell "94046141" [ref=e276]:
                - generic [ref=e277]: "94046141"
              - cell "DeleteMe" [ref=e278]:
                - generic [ref=e279]: DeleteMe
              - cell "Test046141" [ref=e280]:
                - generic [ref=e281]: Test046141
              - cell [ref=e282]
              - cell [ref=e283]
              - cell [ref=e284]
              - cell [ref=e285]
              - cell " " [ref=e286]:
                - generic [ref=e287]:
                  - button "" [ref=e288]:
                    - generic [ref=e289]: 
                  - button "" [ref=e290]:
                    - generic [ref=e291]: 
    - generic [ref=e293]:
      - paragraph [ref=e294]: OrangeHRM OS 5.8
      - paragraph [ref=e295]:
        - text: © 2005 - 2026
        - link "OrangeHRM, Inc" [ref=e296] [cursor=pointer]:
          - /url: http://www.orangehrm.com
        - text: . All rights reserved.
```

# Test source

```ts
  390 |       if (await errorMsg.isVisible()) {
  391 |         await expect(errorMsg).toBeVisible();
  392 |       }
  393 | 
  394 |       // Exceeding maximum (11+ characters)
  395 |       await idInput.fill('EMP00000001');
  396 |       await idInput.press('Tab');
  397 |       if (await errorMsg.isVisible()) {
  398 |         await expect(errorMsg).toBeVisible();
  399 |       }
  400 |     });
  401 |   });
  402 | 
  403 |   test.describe('Update Employee', () => {
  404 |     test('Scenario: Update employee successfully & Reject invalid Employee Name during update', async ({ page }) => {
  405 |       // Step 1: Find first employee
  406 |       await clickEmployeeSearch(page);
  407 |       const firstRow = page.locator('.oxd-table-body .oxd-table-row').first();
  408 |       await expect(firstRow).toBeVisible();
  409 | 
  410 |       // Click Edit (usually the pencil icon, first button in actions)
  411 |       const editButton = firstRow.locator('.oxd-table-cell-actions button').first();
  412 |       await editButton.click();
  413 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/);
  414 | 
  415 |       await waitForFormLoader(page);
  416 | 
  417 |       // Scenario: Reject invalid Employee Name during update (empty name validation)
  418 |       const firstNameInput = page.locator('input[name="firstName"]');
  419 |       await expect(firstNameInput).toBeVisible();
  420 |       const currentFirstName = await firstNameInput.inputValue();
  421 | 
  422 |       await firstNameInput.fill('');
  423 |       // Click Save to trigger form validation
  424 |       const saveButton = page.locator('button[type="submit"]').first();
  425 |       await saveButton.click();
  426 | 
  427 |       const fullNameGroup = page.locator('.oxd-input-group').filter({ has: firstNameInput });
  428 |       const firstNameError = fullNameGroup.locator('.oxd-input-field-error-message').first();
  429 |       await expect(firstNameError).toBeVisible();
  430 |       await expect(firstNameError).toHaveText('Required');
  431 | 
  432 |       // Scenario: Update employee successfully
  433 |       const uniqueSuffix = generateUniqueId();
  434 |       const newFirstName = `Updated${uniqueSuffix}`;
  435 |       await firstNameInput.fill(newFirstName);
  436 |       
  437 |       const saveButtons = page.locator('button[type="submit"]');
  438 |       await saveButtons.first().click();
  439 | 
  440 |       // Verify success toast or value persistency
  441 |       await expect(page.locator('.oxd-toast')).toBeVisible({ timeout: 15000 });
  442 |       await expect(firstNameInput).toHaveValue(newFirstName);
  443 |     });
  444 |   });
  445 | 
  446 |   test.describe('Delete Employee', () => {
  447 |     test('Scenario: Delete employee successfully, cancel deletion, and verify search', async ({ page }) => {
  448 |       // Step 1: Create employee to safely delete
  449 |       await startAddEmployee(page);
  450 |       const uniqueSuffix = generateUniqueId();
  451 |       const tempFirstName = 'DeleteMe';
  452 |       const tempLastName = `Test${uniqueSuffix}`;
  453 |       const tempEmpId = `94${uniqueSuffix}`;
  454 | 
  455 |       await page.locator('input[name="firstName"]').fill(tempFirstName);
  456 |       await page.locator('input[name="lastName"]').fill(tempLastName);
  457 |       
  458 |       const idInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  459 |       await idInput.fill(tempEmpId);
  460 |       await page.locator('button[type="submit"]').click();
  461 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
  462 | 
  463 |       // Step 2: Cancel employee deletion
  464 |       await openPim(page);
  465 |       await searchEmployee(page, { id: tempEmpId });
  466 | 
  467 |       const firstRow = page.locator('.oxd-table-body .oxd-table-row').first();
  468 |       await expect(firstRow).toBeVisible();
  469 | 
  470 |       // Click delete icon (second button in cell actions)
  471 |       const deleteButton = firstRow.locator('.oxd-table-cell-actions button').nth(1);
  472 |       await deleteButton.click();
  473 | 
  474 |       // Cancel deletion
  475 |       await confirmDialog(page, false);
  476 | 
  477 |       // Verify still exists in list
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
> 490 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
      |                                                                                 ^ Error: expect(locator).toBeVisible() failed
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
  578 |       await expect(tableHeaders).toBeVisible();
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
```