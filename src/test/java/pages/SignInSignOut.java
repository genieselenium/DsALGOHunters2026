package pages;

import java.time.Duration;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import utils.ConfigReader;

public class SignInSignOut {

    WebDriver driver;
    WebDriverWait wait;

    public SignInSignOut(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    }

    // 🔹 Home Page Elements
    @FindBy(linkText = "Sign in")
    WebElement signInLink;

    @FindBy(linkText = "Sign out")
    WebElement signOutLink;

    // 🔹 Login Page Elements
    @FindBy(id = "id_username")
    WebElement usernameField;

    @FindBy(id = "id_password")
    WebElement passwordField;

    @FindBy(xpath = "//input[@type='submit']")
    WebElement loginBtn;

    // 🔹 Message / Alert
    @FindBy(xpath = "//div[contains(@class,'alert')]")
    WebElement alertMsg;

    // ================= ACTION METHODS =================

    public void navigateToHomePage() {
        driver.get(ConfigReader.getProperty("homePageUrl"));
    }

    public void clickSignIn() {
        wait.until(ExpectedConditions.elementToBeClickable(signInLink)).click();
    }

    public void enterUsername(String username) {
        wait.until(ExpectedConditions.visibilityOf(usernameField)).clear();
        usernameField.sendKeys(username);
    }

    public void enterPassword(String password) {
        passwordField.clear();
        passwordField.sendKeys(password);
    }

    public void clickLogin() {
        wait.until(ExpectedConditions.elementToBeClickable(loginBtn)).click();
    }

    public void login(String username, String password) {
        clickSignIn();
        enterUsername(username);
        enterPassword(password);
        clickLogin();
    }

    public String getAlertMessage() {
        try {
            return wait.until(ExpectedConditions.visibilityOf(alertMsg)).getText();
        } catch (Exception e) {
            return "";
        }
    }

    public void clickSignOut() {
        wait.until(ExpectedConditions.elementToBeClickable(signOutLink)).click();
    }

    public boolean isSignOutDisplayed() {
        try {
            return signOutLink.isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }

    public boolean isSignInDisplayed() {
        try {
            return signInLink.isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }
}