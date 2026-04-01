@tag
Feature: Linked List Module Verification As a user of DS Algo Portal
I want to verify the Linked List module functionalities
So that I can navigate, execute code, and logout correctly
@tag1
Scenario: Verify Linked List icon is visible on home page
When the home page loads successfully
Then the Linked List icon should be visible

@tag2
Scenario: Verify login required to access Linked List module
Given the user is not logged into the application
When the user clicks the Linked List icon
Then the system should display a message asking the user to login

@tag3
Scenario: Verify navigation to Linked List page after login
Given the user is logged into the application
When the user clicks the Linked List icon
Then the user should be redirected to the Linked List introduction page

@tag4
Scenario: Verify Linked List page title
Given the user is on the Linked List page
When the page loads successfully
Then the page title should contain "Linked List"
@tag4
Scenario: Verify Linked List topics are displayed
Given the user is on the Linked List page
When the page loads
Then the list of Linked List topics should be displayed

@tag5
Scenario: Verify navigation to 'Introduction to Linked List'
Given the user is on the Linked List page
When the user clicks "Introduction to Linked List"
Then the Introduction to Linked List page should open

@tag6
Scenario: Verify navigation to 'Creating Linked List'
Given the user is on the Linked List page
When the user clicks "Creating Linked List"
Then the Creating Linked List page should open

@tag7
Scenario: Verify navigation to 'Types of Linked List'
Given the user is on the Linked List page
When the user clicks "Types of Linked List"
Then the Types of Linked List page should open

@tag8
Scenario: Verify navigation to "Implement Linked List in Python"
Given the user is on the Linked List page
When the user clicks "Implement Linked List in Python"
Then the user should navigate to the implementation page

@tag9
Scenario: Verify navigation to "Traversal"
Given the user is on the Linked List page
When the user clicks "Traversal"
Then the Traversal page should open

@tag10
Scenario: Verify navigation to "Insertion"
Given the user is on the Linked List page
When the user clicks "Insertion"
Then the Insertion page should open
@tag11
Scenario: Verify navigation to "Deletion"
Given the user is on the Linked List page
When the user clicks "Deletion"
Then the Deletion page should open

@tag12
Scenario: Verify Try Here button functionality
Given the user is on any Linked List topic page
When the user clicks the "Try Here" button
Then the user should be redirected to the code editor page

@tag13
Scenario: Verify valid code execution
Given the user is on the code editor page
When the user enters valid Python code and clicks Run
Then the output should be displayed

@tag14
Scenario: Verify invalid code execution
Given the user is on the code editor page
When the user enters invalid Python code and clicks Run
Then an error message should be displayed

@tag15
Scenario: Verify navigation back to Linked List page
Given the user is on a Linked List topic page
When the user clicks the back button
Then the user should return to the Linked List page

@tag16
Scenario: Verify navigation from Linked List page to Home
Given the user is on the Linked List page
When the user clicks the Home link
Then the user should be redirected to the home page

@tag17
Scenario: Verify logout from Linked List page
Given the user is logged into the application and on the Linked List page
When the user clicks the logout button
Then the user should be redirected to the login page
