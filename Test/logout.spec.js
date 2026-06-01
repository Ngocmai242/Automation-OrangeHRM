const { test, expect } = require('@playwright/test');

const LOGIN_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login';
const DASHBOARD_URL = 'https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index';

async function loginAsAdmin(page) {
  await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });
  await page.locator('input[name="username"]').fill('Admin');
  await page.locator('input[name="password"]').fill('admin123');
  await page.locator('button[type="submit"]').click();
  await expect(page).toHaveURL(/\/dashboard/);
  await expect(page.locator('.oxd-topbar-header-breadcrumb h6')).toBeVisible();
  await expect(page.locator('.oxd-userdropdown-name')).toBeVisible();
}

async function logout(page) {
  const userDropdownTrigger = page.locator('.oxd-userdropdown-name');
  await expect(userDropdownTrigger).toBeVisible();
  await userDropdownTrigger.click();
  const logoutLink = page.locator('a[href*="/auth/logout"]').first();
  try {
    await expect(logoutLink).toBeVisible();
    await logoutLink.click();
  } catch {
    await page.getByText('Logout', { exact: true }).click();
  }
  await expect(page).toHaveURL(/\/auth\/login/);
  await expect(page.locator('input[name="username"]')).toBeVisible();
}

test.describe('OrangeHRM - Logout', () => {
  test.describe.configure({ timeout: 90000 });

  test('Successfully logged out and redirected to the login page', async ({ page }) => {
    await loginAsAdmin(page);
    await logout(page);
  });

  test('Cannot access the Dashboard after logout', async ({ page }) => {
    await loginAsAdmin(page);
    await logout(page);

    await page.goto(DASHBOARD_URL, { waitUntil: 'domcontentloaded' });
    await expect(page).toHaveURL(/\/auth\/login/);
  });
});
