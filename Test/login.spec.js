const { test, expect } = require('@playwright/test');

const LOGIN_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login';

test.describe('OrangeHRM - Login', () => {
  test('Successful login with valid credentials', async ({ page }) => {
    await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });

    const usernameInput = page.locator('input[name="username"]');
    const passwordInput = page.locator('input[name="password"]');
    const loginButton = page.locator('button[type="submit"]');

    await expect(usernameInput).toBeVisible();
    await expect(passwordInput).toBeVisible();

    await usernameInput.fill('Admin');
    await expect(usernameInput).toHaveValue('Admin');

    await passwordInput.fill('admin123');
    await loginButton.click();

    await expect(page).toHaveURL(/\/dashboard/);
    await expect(page.locator('.oxd-topbar-header-breadcrumb h6')).toBeVisible();
    await expect(page.locator('.oxd-userdropdown-name')).toBeVisible();
  });

  test('Failed login with an incorrect password', async ({ page }) => {
    await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });

    await page.locator('input[name="username"]').fill('Admin');
    await page.locator('input[name="password"]').fill('wrong-password');
    await page.locator('button[type="submit"]').click();

    await expect(page.getByText('Invalid credentials')).toBeVisible();
    await expect(page).toHaveURL(/\/auth\/login/);
  });
});
