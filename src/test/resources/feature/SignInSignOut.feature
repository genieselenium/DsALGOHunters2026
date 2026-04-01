@tag 
Feature: Sign In and Sign Out Functionality
As a user of DS Algo Portal
I want to log in and log out securely
So that I can access the portal and protect my session
Background:
    Given the user is on the DS Portal login page

@tag1
Scenario: User logs in with valid credentials
  When the user enters a valid username and valid password
  Then the user should be redirected to the Dsportal Home page

@tag2
Scenario: Login with valid username and invalid password
  When the user enters a valid username and invalid password and clicks the Sign In button
  Then an error message "Invalid username or password" should be displayed

@tag3
Scenario: Login with invalid username and valid password
  When the user enters an invalid username and valid password and clicks the Sign In button
  Then an error message should be displayed

@tag4
Scenario: Login with empty username
  When the user leaves the username field empty, enters a valid password, and clicks the Sign In button
  Then the system should display "Username is required"

@tag5
Scenario: Login with empty password
  When the user enters a valid username, leaves the password field empty, and clicks the Sign In button
  Then the system should display "Password is required"

@tag6
Scenario: Login with empty credentials
  When the user leaves username and password fields empty and clicks the Sign In button
  Then validation messages should be displayed for both fields

@tag7
Scenario: Password field hides typed characters
  When the user types a password
  Then the password should be displayed as masked characters (••••)

@tag8
Scenario: Login using Enter key
  When the user enters valid username and password and presses the Enter key
  Then the user should be logged in successfully

  @tag9
Scenario: User logs out successfully
  When the user clicks on the Sign Out button
  Then the user should be logged out and redirected to the login page

@tag10
Scenario: Logout from Home page
  When the user clicks the logout option from home page
  Then the system should log the user out and redirect to the login page

@tag11
Scenario: Session should end after logout
  When the user logs out
  Then the user session should be terminated

@tag12
Scenario: User should not access dashboard after logout using browser back button
  Given the user has logged out from the application
  When the user clicks the browser back button
  Then the user should not be able to access the dashboard and should be redirected to the login page

@tag13
Scenario: Prevent accessing secure pages after logout
  Given the user has logged out of the application
  When the user tries to access the dashboard URL directly
  Then the user should be prevented from accessing secure pages

@tag14
Scenario: Logout button should be visible after login
  When the dashboard page loads
  Then the logout button should be visible

@tag15
Scenario: Logout from one tab should log out all sessions
  Given the user is logged into the application in multiple browser tabs
  When the user logs out from one tab
  Then the user should be logged out from all tabs

@tag16
Scenario: Logout confirmation popup
  When the user clicks the logout button
  Then a confirmation message should appear and after confirming, the user should be logged out successfully

@tag17
Scenario: Automatic logout after inactivity
  When the user remains inactive for a defined time
  Then the system should automatically log out the user

@tag18
Scenario: Verify redirect page after logout
  When the user clicks logout
  Then the user should be redirected to the login page and a message "You have been logged out successfully" should appear
