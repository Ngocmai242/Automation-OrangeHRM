# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\pim.spec.js >> OrangeHRM - PIM Module (Employee Management) >> Add Employee >> Scenario: Add employee successfully with full information
- Location: Test\pim.spec.js:175:5

# Error details

```
Error: expect(locator).toHaveValue(expected) failed

Locator:  locator('input[name="firstName"]')
Expected: "Mai"
Received: ""
Timeout:  5000ms

Call log:
  - Expect "toHaveValue" with timeout 5000ms
  - waiting for locator('input[name="firstName"]')
    4 × locator resolved to <input name="firstName" data-v-1f99f73c="" placeholder="First Name" class="oxd-input oxd-input--active orangehrm-firstname"/>
      - unexpected value ""

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
              - paragraph [ref=e127]: Richard Johnson
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
    - generic [ref=e148]:
      - generic [ref=e149]:
        - generic [ref=e150]:
          - heading "Mai Nguyen221306" [level=6] [ref=e152]
          - img "profile picture" [ref=e155] [cursor=pointer]
        - tablist [ref=e156]:
          - tab "Personal Details" [ref=e157]:
            - link "Personal Details" [ref=e158] [cursor=pointer]:
              - /url: /web/index.php/pim/viewPersonalDetails/empNumber/375
          - tab "Contact Details" [ref=e159]:
            - link "Contact Details" [ref=e160] [cursor=pointer]:
              - /url: /web/index.php/pim/contactDetails/empNumber/375
          - tab "Emergency Contacts" [ref=e161]:
            - link "Emergency Contacts" [ref=e162] [cursor=pointer]:
              - /url: /web/index.php/pim/viewEmergencyContacts/empNumber/375
          - tab "Dependents" [ref=e163]:
            - link "Dependents" [ref=e164] [cursor=pointer]:
              - /url: /web/index.php/pim/viewDependents/empNumber/375
          - tab "Immigration" [ref=e165]:
            - link "Immigration" [ref=e166] [cursor=pointer]:
              - /url: /web/index.php/pim/viewImmigration/empNumber/375
          - tab "Job" [ref=e167]:
            - link "Job" [ref=e168] [cursor=pointer]:
              - /url: /web/index.php/pim/viewJobDetails/empNumber/375
          - tab "Salary" [ref=e169]:
            - link "Salary" [ref=e170] [cursor=pointer]:
              - /url: /web/index.php/pim/viewSalaryList/empNumber/375
          - tab "Report-to" [ref=e171]:
            - link "Report-to" [ref=e172] [cursor=pointer]:
              - /url: /web/index.php/pim/viewReportToDetails/empNumber/375
          - tab "Qualifications" [ref=e173]:
            - link "Qualifications" [ref=e174] [cursor=pointer]:
              - /url: /web/index.php/pim/viewQualifications/empNumber/375
          - tab "Memberships" [ref=e175]:
            - link "Memberships" [ref=e176] [cursor=pointer]:
              - /url: /web/index.php/pim/viewMemberships/empNumber/375
      - generic [ref=e177]:
        - generic [ref=e178]:
          - heading "Personal Details" [level=6] [ref=e179]
          - separator [ref=e180]
          - generic [ref=e181]:
            - generic [ref=e185]:
              - generic [ref=e188]:
                - generic [ref=e190]: Employee Full Name*
                - generic [ref=e191]:
                  - textbox "First Name" [ref=e194]
                  - textbox "Middle Name" [ref=e197]
                  - textbox "Last Name" [ref=e200]
              - generic [ref=e203]:
                - generic [ref=e205]: Nickname
                - textbox [ref=e207]
            - separator [ref=e208]
            - generic [ref=e209]:
              - generic [ref=e210]:
                - generic [ref=e212]:
                  - generic [ref=e214]: Employee Id
                  - textbox [ref=e216]
                - generic [ref=e218]:
                  - generic [ref=e220]: Other Id
                  - textbox [ref=e222]
              - generic [ref=e223]:
                - generic [ref=e225]:
                  - generic [ref=e227]: Driver's License Number
                  - textbox [ref=e229]
                - generic [ref=e231]:
                  - generic [ref=e233]: License Expiry Date
                  - generic [ref=e236]:
                    - textbox "yyyy-dd-mm" [ref=e237]
                    - generic [ref=e238] [cursor=pointer]: 
              - generic [ref=e239]:
                - generic [ref=e241]:
                  - generic [ref=e243]: SSN Number
                  - textbox [ref=e245]
                - generic [ref=e247]:
                  - generic [ref=e249]: SIN Number
                  - textbox [ref=e251]
            - separator [ref=e252]
            - generic [ref=e253]:
              - generic [ref=e254]:
                - generic [ref=e256]:
                  - generic [ref=e258]: Nationality
                  - generic [ref=e261] [cursor=pointer]:
                    - generic [ref=e262]: "-- Select --"
                    - generic [ref=e264]: 
                - generic [ref=e266]:
                  - generic [ref=e268]: Marital Status
                  - generic [ref=e271] [cursor=pointer]:
                    - generic [ref=e272]: "-- Select --"
                    - generic [ref=e274]: 
              - generic [ref=e275]:
                - generic [ref=e277]:
                  - generic [ref=e279]: Date of Birth
                  - generic [ref=e282]:
                    - textbox "yyyy-dd-mm" [ref=e283]
                    - generic [ref=e284] [cursor=pointer]: 
                - generic [ref=e286]:
                  - generic [ref=e288]: Gender
                  - generic [ref=e289]:
                    - generic [ref=e293] [cursor=pointer]:
                      - radio "Male" [ref=e294]
                      - text: Male
                    - generic [ref=e299] [cursor=pointer]:
                      - radio "Female" [ref=e300]
                      - text: Female
            - separator [ref=e302]
            - generic [ref=e304]:
              - generic [ref=e306]:
                - generic [ref=e308]: Military Service
                - textbox [ref=e310]
              - generic [ref=e312]:
                - generic [ref=e314]: Smoker
                - generic [ref=e317] [cursor=pointer]:
                  - checkbox " Yes" [ref=e318]
                  - generic [ref=e320]: 
                  - text: "Yes"
            - separator [ref=e321]
            - generic [ref=e322]:
              - paragraph [ref=e323]: "* Required"
              - button "Save" [ref=e324] [cursor=pointer]
        - generic [ref=e325]:
          - separator [ref=e326]
          - generic [ref=e327]:
            - heading "Custom Fields" [level=6] [ref=e328]
            - separator [ref=e329]
            - generic [ref=e330]:
              - generic [ref=e332]:
                - generic [ref=e334]:
                  - generic [ref=e336]: Blood Type
                  - generic [ref=e339] [cursor=pointer]:
                    - generic [ref=e340]: "-- Select --"
                    - generic [ref=e342]: 
                - generic [ref=e344]:
                  - generic [ref=e346]: Test_Field
                  - textbox [ref=e348]
              - separator [ref=e349]
              - button "Save" [ref=e351] [cursor=pointer]
        - generic [ref=e352]:
          - separator [ref=e353]
          - generic [ref=e355]:
            - heading "Attachments" [level=6] [ref=e356]
            - button " Add" [ref=e357] [cursor=pointer]:
              - generic [ref=e358]: 
              - text: Add
          - generic [ref=e359]:
            - separator [ref=e360]
            - generic [ref=e362]: No Records Found
          - table [ref=e364]:
            - rowgroup [ref=e365]:
              - row " File Name Description Size Type Date Added Added By Actions" [ref=e366]:
                - columnheader "" [ref=e367]:
                  - generic [ref=e369] [cursor=pointer]:
                    - checkbox "" [ref=e370]
                    - generic [ref=e372]: 
                - columnheader "File Name" [ref=e373]
                - columnheader "Description" [ref=e374]
                - columnheader "Size" [ref=e375]
                - columnheader "Type" [ref=e376]
                - columnheader "Date Added" [ref=e377]
                - columnheader "Added By" [ref=e378]
                - columnheader "Actions" [ref=e379]
            - rowgroup
    - generic [ref=e380]:
      - paragraph [ref=e381]: OrangeHRM OS 5.8
      - paragraph [ref=e382]:
        - text: © 2005 - 2026
        - link "OrangeHRM, Inc" [ref=e383] [cursor=pointer]:
          - /url: http://www.orangehrm.com
        - text: . All rights reserved.
```

# Test source

```ts
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
  128 | }
  129 | 
  130 | // Generate unique ID/Name for test cases
  131 | function generateUniqueId() {
  132 |   return Date.now().toString().slice(-6);
  133 | }
  134 | 
  135 | test.describe('OrangeHRM - PIM Module (Employee Management)', () => {
  136 |   test.describe.configure({ timeout: 120000 });
  137 | 
  138 |   test.beforeEach(async ({ page }) => {
  139 |     await loginAsAdmin(page);
  140 |     await openPim(page);
  141 |   });
  142 | 
  143 |   test.describe('PIM Module Navigation', () => {
  144 |     test('Scenario: Open PIM module successfully', async ({ page }) => {
  145 |       // Re-navigates and verifies dashboard then opens PIM
  146 |       await page.goto(DASHBOARD_URL, { waitUntil: 'domcontentloaded' });
  147 |       await openPim(page);
  148 |       await expect(page).toHaveURL(/\/pim\/viewEmployeeList/);
  149 |     });
  150 |   });
  151 | 
  152 |   test.describe('Add Employee', () => {
  153 |     test('Scenario: Add employee successfully with mandatory fields', async ({ page }) => {
  154 |       await startAddEmployee(page);
  155 | 
  156 |       const uniqueSuffix = generateUniqueId();
  157 |       const firstName = 'Mai';
  158 |       const lastName = `Nguyen${uniqueSuffix}`;
  159 |       const customEmpId = `91${uniqueSuffix}`;
  160 | 
  161 |       await page.locator('input[name="firstName"]').fill(firstName);
  162 |       await page.locator('input[name="lastName"]').fill(lastName);
  163 | 
  164 |       const idInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  165 |       await idInput.fill(customEmpId);
  166 | 
  167 |       await page.locator('button[type="submit"]').click();
  168 | 
  169 |       // System should create employee successfully and redirect to Personal Details
  170 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
  171 |       await expect(page.locator('input[name="firstName"]')).toHaveValue(firstName);
  172 |       await expect(page.locator('input[name="lastName"]')).toHaveValue(lastName);
  173 |     });
  174 | 
  175 |     test('Scenario: Add employee successfully with full information', async ({ page }) => {
  176 |       await startAddEmployee(page);
  177 | 
  178 |       const uniqueSuffix = generateUniqueId();
  179 |       const firstName = 'Mai';
  180 |       const middleName = 'Thi';
  181 |       const lastName = `Nguyen${uniqueSuffix}`;
  182 |       const customEmpId = `92${uniqueSuffix}`;
  183 | 
  184 |       await page.locator('input[name="firstName"]').fill(firstName);
  185 |       await page.locator('input[name="middleName"]').fill(middleName);
  186 |       await page.locator('input[name="lastName"]').fill(lastName);
  187 | 
  188 |       const idInput = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  189 |       await idInput.fill(customEmpId);
  190 | 
  191 |       await page.locator('button[type="submit"]').click();
  192 | 
  193 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
> 194 |       await expect(page.locator('input[name="firstName"]')).toHaveValue(firstName);
      |                                                             ^ Error: expect(locator).toHaveValue(expected) failed
  195 |       await expect(page.locator('input[name="middleName"]')).toHaveValue(middleName);
  196 |       await expect(page.locator('input[name="lastName"]')).toHaveValue(lastName);
  197 |     });
  198 | 
  199 |     test('Scenario: Add employee with empty mandatory fields', async ({ page }) => {
  200 |       await startAddEmployee(page);
  201 | 
  202 |       // Clear First Name and Last Name
  203 |       await page.locator('input[name="firstName"]').fill('');
  204 |       await page.locator('input[name="lastName"]').fill('');
  205 | 
  206 |       // Click Save
  207 |       await page.locator('button[type="submit"]').click();
  208 | 
  209 |       // Verify Required field validation error messages are displayed
  210 |       const fullNameGroup = page.locator('.oxd-input-group').filter({ has: page.locator('input[name="firstName"]') });
  211 |       const firstNameError = fullNameGroup.locator('.oxd-input-field-error-message').first();
  212 |       const lastNameError = fullNameGroup.locator('.oxd-input-field-error-message').last();
  213 | 
  214 |       await expect(firstNameError).toBeVisible();
  215 |       await expect(firstNameError).toHaveText('Required');
  216 |       await expect(lastNameError).toBeVisible();
  217 |       await expect(lastNameError).toHaveText('Required');
  218 |     });
  219 | 
  220 |     test('Scenario: Add employee with duplicate Employee ID', async ({ page }) => {
  221 |       // Step 1: Create an employee with a unique ID first to guarantee it exists
  222 |       await startAddEmployee(page);
  223 |       const uniqueSuffix = generateUniqueId();
  224 |       const duplicateEmpId = `93${uniqueSuffix}`;
  225 | 
  226 |       await page.locator('input[name="firstName"]').fill('Existing');
  227 |       await page.locator('input[name="lastName"]').fill('Employee');
  228 |       
  229 |       const idInput1 = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  230 |       await idInput1.fill(duplicateEmpId);
  231 |       await page.locator('button[type="submit"]').click();
  232 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
  233 | 
  234 |       // Step 2: Try to create another employee with the duplicate ID
  235 |       await openPim(page);
  236 |       await startAddEmployee(page);
  237 | 
  238 |       await page.locator('input[name="firstName"]').fill('Duplicate');
  239 |       await page.locator('input[name="lastName"]').fill('IDTest');
  240 | 
  241 |       const idInput2 = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' }).locator('input').first();
  242 |       await idInput2.fill(duplicateEmpId);
  243 |       await idInput2.press('Tab'); // Trigger instant validation
  244 | 
  245 |       // Check validation error
  246 |       const idGroup = page.locator('.oxd-input-group').filter({ hasText: 'Employee Id' });
  247 |       const errorMsg = idGroup.locator('.oxd-input-field-error-message');
  248 |       await expect(errorMsg).toBeVisible({ timeout: 10000 });
  249 |       await expect(errorMsg).toContainText('Employee Id already exists');
  250 |     });
  251 | 
  252 |     test('Scenario: Upload valid avatar image successfully', async ({ page }) => {
  253 |       await startAddEmployee(page);
  254 | 
  255 |       // Upload valid 1px PNG image
  256 |       const fileInput = page.locator('input[type="file"]');
  257 |       const avatarBuffer = Buffer.from('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==', 'base64');
  258 |       await fileInput.setInputFiles({
  259 |         name: 'avatar.png',
  260 |         mimeType: 'image/png',
  261 |         buffer: avatarBuffer,
  262 |       });
  263 | 
  264 |       // Fill remaining fields and save
  265 |       const uniqueSuffix = generateUniqueId();
  266 |       await page.locator('input[name="firstName"]').fill('Avatar');
  267 |       await page.locator('input[name="lastName"]').fill(`Test${uniqueSuffix}`);
  268 |       await page.locator('button[type="submit"]').click();
  269 | 
  270 |       await expect(page).toHaveURL(/\/pim\/viewPersonalDetails/, { timeout: 30000 });
  271 |     });
  272 | 
  273 |     test('Scenario: Upload unsupported file format', async ({ page }) => {
  274 |       await startAddEmployee(page);
  275 | 
  276 |       // Upload text file instead of image
  277 |       const fileInput = page.locator('input[type="file"]');
  278 |       await fileInput.setInputFiles({
  279 |         name: 'virus.exe',
  280 |         mimeType: 'application/octet-stream',
  281 |         buffer: Buffer.from('dummy-binary-code'),
  282 |       });
  283 | 
  284 |       // OrangeHRM displays a validation toast or a validation label
  285 |       const fileGroup = page.locator('.oxd-input-group').filter({ has: fileInput });
  286 |       const errorMsg = fileGroup.locator('.oxd-input-field-error-message');
  287 |       // Some versions display validation inline, others may show toast or ignore. We assert error message visibility if triggered.
  288 |       try {
  289 |         await expect(errorMsg).toBeVisible({ timeout: 5000 });
  290 |         await expect(errorMsg).toContainText(/File type not allowed|File size|Allowed file types/i);
  291 |       } catch (err) {
  292 |         // Fallback for custom configurations
  293 |         console.log('Skipping standard unsupported file format error if not explicitly blocked in UI.');
  294 |       }
```