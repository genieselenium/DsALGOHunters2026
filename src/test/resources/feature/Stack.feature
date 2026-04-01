@tag
Feature: Stack Module Verification
As a user of DS Algo Portal
I want to verify the Stack module functionalities
So that I can navigate, execute code, and logout correctly
@tag1
Scenario: Verify Stack icon is visible on the home page
When the page loads successfully
Then the Stack icon should be visible

@tag2
Scenario: Verify login required to access Stack module
Given the user is not logged into the application
When the user clicks the Stack icon
Then the system should display a message asking the user to login

@tag3
Scenario: Verify Stack icon is visible
Given the user is on DS Portal home page
When the home page loads
Then the Stack icon should be visible

@tag4
Scenario: Login required to access Stack
Given the user is on home page and not logged in
When the user clicks Stack icon
Then the system asks user to login

@tag5
Scenario: Navigate to Stack page after login
Given the user is logged in and on home page
When the user clicks Stack icon
Then the user is redirected to Stack introduction page

@tag6
Scenario: Verify Stack page title
Given the user is on Stack page
When the page loads
Then the title contains "Stack"

@tag5
Scenario: Verify Stack topics displayed
Given the user is on Stack page
When the page loads
Then the Stack topic links are visible

@tag6
Scenario: Navigate to Operations in Stack
Given the user is on Stack page
When the user clicks "Operations in Stack"
Then the Operations page opens

@tag7
Scenario: Navigate to Implementation
Given the user is on Stack page
When the user clicks "Implementation"
Then the Implementation page opens

@tag8
Scenario: Navigate to Applications
Given the user is on Stack page
When the user clicks "Applications"
Then the Applications page opens

@tag9
Scenario: Try Here button navigation
Given the user is on Stack topic page
When the user clicks "Try Here"
Then the Code editor page opens

@tag10
Scenario: Verify editor textarea
Given the user is on code editor page
When the editor loads
Then the Code textarea should be visible

@tag11
Scenario: Run valid code
Given the user is on editor page
When the user enters valid code and clicks Run
Then the output is displayed

@tag12
Scenario: Run invalid code
Given the user is on editor page
When the user enters invalid code and clicks Run
Then the error message appears

@tag13
Scenario: Navigate back to Stack page
Given the user is on Stack topic page
When the user clicks browser back
Then the user returns to Stack page

@tag14
Scenario: Navigate to Home page
Given the user is on Stack page
When the user clicks Home link
Then the user is redirected to home page

@tag15
Scenario: Logout from Stack page
Given the user is logged in on Stack page
When the user clicks logout
Then the user is redirected to login page
