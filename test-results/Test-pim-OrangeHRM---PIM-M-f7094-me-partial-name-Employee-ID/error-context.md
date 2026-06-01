# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\pim.spec.js >> OrangeHRM - PIM Module (Employee Management) >> Search Employee >> Scenario: Search employee by exact name & partial name & Employee ID
- Location: Test\pim.spec.js:522:5

# Error details

```
"beforeAll" hook timeout of 30000ms exceeded.
```

# Test source

```ts
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
  490 |       await expect(page.getByText('No Records Found', { exact: true }).first()).toBeVisible();
  491 |     });
  492 |   });
  493 | 
  494 |   test.describe('Search Employee', () => {
  495 |     let createdEmpId;
  496 |     let createdFirstName;
  497 |     let createdLastName;
  498 | 
> 499 |     test.beforeAll(async ({ browser }) => {
      |          ^ "beforeAll" hook timeout of 30000ms exceeded.
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
  591 |       const group = page.locator('.oxd-input-group').filter({ has: page.locator('input[name="firstName"]') }).first();
  592 |       await expect(group).toBeVisible();
  593 |       const groupHtml = await group.innerHTML();
  594 |       const hasAsterisk = groupHtml.includes('*') || groupHtml.includes('required') || groupHtml.includes('oxd-label-required');
  595 |       expect(hasAsterisk).toBeTruthy();
  596 | 
  597 |       // 4. Verify delete confirmation modal displays correctly
  598 |       await openPim(page);
  599 |       await clickEmployeeSearch(page);
```