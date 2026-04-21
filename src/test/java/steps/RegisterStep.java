package steps;

import driverfactory.Driverfactory;
import io.cucumber.java.en.Given;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.RegisterPage;

public class RegisterStep {
	
	 RegisterPage registerPage = new RegisterPage(Driverfactory.getDriver());
	
	 @Given("User is on Register page")
	 public void user_is_on_the_register_page() {
	     registerPage.gotoHomePage();
	     registerPage.clickOnRegisterLink();
	 }

@Given("User clicked the Register button from Home page")
public void user_clicked_the_register_button_from_home_page() {
    // Write code here that turns the phrase above into concrete actions
    
}


@When("User views the Register page")
public void user_views_the_register_page() {
    // Write code here that turns the phrase above into concrete actions
    
}

@Then("Username, Password, Confirm Password fields and Register button should be visible")
public void username_password_confirm_password_fields_and_register_button_should_be_visible() {
    // Write code here that turns the phrase above into concrete actions
    
}



@When("User enters valid username, password and confirm password and clicks Register")
public void user_enters_valid_username_password_and_confirm_password_and_clicks_register() {
    registerPage.sendUserDetails("Dsalgohunters","numpy12345","numpy12345");
    registerPage.clickOnregisterBtn();
}

@Then("New account created successfully")
public void new_account_created_successfully() {
    System.out.println("Account created successfully"); // or add assertion

   
}

@When("User leaves username blank and clicks Register")
public void user_leaves_username_blank_and_clicks_register() {
    registerPage.sendUserDetails("", "Test@123", "Test@123");
    registerPage.clickOnregisterBtn();
}

@Then("Please fill out this field error message should be displayed")
public void please_fill_out_this_field_error_message_should_be_displayed() {
    String msg = registerPage.alertMessageForFirstInvalidField();
    System.out.println(msg);
}

@When("User leaves password blank and clicks Register")
public void user_leaves_password_blank_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User leaves confirm password blank and clicks Register")
public void user_leaves_confirm_password_blank_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
   
}

@When("User leaves all fields blank and clicks Register")
public void user_leaves_all_fields_blank_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters different password and confirm password and clicks Register")
public void user_enters_different_password_and_confirm_password_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
   
}

@Then("Password mismatch error message should be displayed")
public void password_mismatch_error_message_should_be_displayed() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters password that is similar to personal details and clicks Register")
public void user_enters_password_that_is_similar_to_personal_details_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters password that is below minimum length and clicks Register")
public void user_enters_password_that_is_below_minimum_length_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters numeric password and clicks Register")
public void user_enters_numeric_password_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters username with special characters and clicks Register")
public void user_enters_username_with_special_characters_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters username with spaces and clicks Register")
public void user_enters_username_with_spaces_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User enters password with spaces and clicks Register")
public void user_enters_password_with_spaces_and_clicks_register() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("user clicks Register button")
public void user_clicks_register_button() {
    // Write code here that turns the phrase above into concrete actions
    
}

@Then("Register button should be clickable")
public void register_button_should_be_clickable() {
    // Write code here that turns the phrase above into concrete actions
    
}

@When("User clicks login button")
public void user_clicks_login_button() {
    // Write code here that turns the phrase above into concrete actions
    
}

@Then("User should be navigated to Login page")
public void user_should_be_navigated_to_login_page() {
    // Write code here that turns the phrase above into concrete actions
    
}
}
