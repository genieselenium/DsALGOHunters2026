package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Array {

    WebDriver driver;

    
    public Array(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

   

    // Array icon on Home page (Data Structures dropdown / icon section)
    @FindBy(xpath = "//a[@href='array']")
    WebElement arrayIcon;

    // Title or header on Array page (for verification)
    @FindBy(xpath = "//h4[text()='Array']")
    WebElement arrayPageHeader;

    // Try buttons inside Array page (if present)
    @FindBy(xpath = "//a[text()='Try here>>>']")
    WebElement tryHereBtn;

   

    // Click Array icon from home page
    public void clickArrayIcon() {
        arrayIcon.click();
    }

    // Get page title/header text
    public String getArrayPageHeader() {
        return arrayPageHeader.getText();
    }

    // Click Try Here button
    public void clickTryHere() {
        tryHereBtn.click();
    }

    // Validate if Array page is displayed
    public boolean isArrayPageDisplayed() {
        return arrayPageHeader.isDisplayed();
    }
}