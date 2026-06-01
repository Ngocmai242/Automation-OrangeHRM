# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: Test\login.spec.js >> OrangeHRM - Login >> Failed login with an incorrect password
- Location: Test\login.spec.js:27:3

# Error details

```
Test timeout of 30000ms exceeded.
```

```
Error: expect(locator).toBeVisible() failed

Locator: getByText('Invalid credentials')
Expected: visible
Error: element(s) not found

Call log:
  - Expect "toBeVisible" with timeout 5000ms
  - waiting for getByText('Invalid credentials')

```

# Test source

```ts
  1  | const { test, expect } = require('@playwright/test');
  2  | 
  3  | const LOGIN_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login';
  4  | 
  5  | test.describe('OrangeHRM - Login', () => {
  6  |   test('Successful login with valid credentials', async ({ page }) => {
  7  |     await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });
  8  | 
  9  |     const usernameInput = page.locator('input[name="username"]');
  10 |     const passwordInput = page.locator('input[name="password"]');
  11 |     const loginButton = page.locator('button[type="submit"]');
  12 | 
  13 |     await expect(usernameInput).toBeVisible();
  14 |     await expect(passwordInput).toBeVisible();
  15 | 
  16 |     await usernameInput.fill('Admin');
  17 |     await expect(usernameInput).toHaveValue('Admin');
  18 | 
  19 |     await passwordInput.fill('admin123');
  20 |     await loginButton.click();
  21 | 
  22 |     await expect(page).toHaveURL(/\/dashboard/);
  23 |     await expect(page.locator('.oxd-topbar-header-breadcrumb h6')).toBeVisible();
  24 |     await expect(page.locator('.oxd-userdropdown-name')).toBeVisible();
  25 |   });
  26 | 
  27 |   test('Failed login with an incorrect password', async ({ page }) => {
  28 |     await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });
  29 | 
  30 |     await page.locator('input[name="username"]').fill('Admin');
  31 |     await page.locator('input[name="password"]').fill('wrong-password');
  32 |     await page.locator('button[type="submit"]').click();
  33 | 
> 34 |     await expect(page.getByText('Invalid credentials')).toBeVisible();
     |                                                         ^ Error: expect(locator).toBeVisible() failed
  35 |     await expect(page).toHaveURL(/\/auth\/login/);
  36 |   });
  37 | });
  38 | 
```