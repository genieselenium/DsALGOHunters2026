package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class DataStructure {
	
	WebDriver driver;
	
			
	
       public DataStructure(WebDriver driver) {
	
	this.driver = driver;
	PageFactory.initElements(driver,this);
    }
    // Locators
    By getStartedBtn = By.xpath("//button[text()='Get Started']");
    By signInLink = By.linkText("Sign in");
    By registerLink = By.linkText("Register");

    By arraysLink = By.linkText("Arrays");
    By linkedListLink = By.linkText("Linked List");
    By stackLink = By.linkText("Stack");
    By queueLink = By.linkText("Queue");
    By treeLink = By.linkText("Tree");
    By graphLink = By.linkText("Graph");

    // Actions

    public void clickGetStarted() {
        driver.findElement(getStartedBtn).click();
    }

    public void clickSignIn() {
        driver.findElement(signInLink).click();
    }

    public void clickRegister() {
        driver.findElement(registerLink).click();
    }

    public void clickArrays() {
        driver.findElement(arraysLink).click();
    }

    public void clickLinkedList() {
        driver.findElement(linkedListLink).click();
    }

    public void clickStack() {
        driver.findElement(stackLink).click();
    }

    public void clickQueue() {
        driver.findElement(queueLink).click();
    }

    public void clickTree() {
        driver.findElement(treeLink).click();
    }

    public void clickGraph() {
        driver.findElement(graphLink).click();
    }
}