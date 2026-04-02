@tag
Feature: Data Structures Home Page

@tag1
Scenario: Verify Data Structures icon is visible on Home Page
Given the user opens the DS Portal home page
When the home page loads successfully
Then the Data Structures icon should be visible on the page

@tag2
Scenario: User views the "Data Structures" dropdown options
Given the user is on the Home page
When the user clicks the "Data Structures" dropdown on the Home page
Then the user should see the following options in the dropdown menu
| Arrays |
| Linked List |
| Stack |
| Queue |
| Tree |
| Graph |

@tag3
Scenario: Error message is displayed when selecting "Data Structures" from the dropdown
Given the user is on the Home page
When the user selects "Data Structures" from the dropdown
Then the user should see a warning message "You are not logged in"

@tag4
Scenario: Verify navigation when clicking Data Structures icon
Given the user is on the Home page
When the user clicks the Data Structures icon
Then the user should be redirected to the Data Structures Introduction page

@tag5
Scenario: Verify user must be logged in to access Data Structures content
Given the user is not logged into the application
When the user clicks the Data Structures icon
Then the system should display a message asking the user to log in

@tag6
Scenario: Verify logged-in user can access Data Structures page
Given the user is logged into the application and on the Home page
When the user clicks the Data Structures icon
Then the user should be navigated to the Data Structures page

@tag7
Scenario: Verify page title after clicking Data Structures icon
Given the user is logged in and on the Home page
When the user clicks the Data Structures icon
Then the page title should be "Data Structures - Introduction"

@tag8
Scenario: Verify Data Structures page contains learning topics
Given the user navigates to the Data Structures page
When the page loads successfully
Then the page should display Data Structures learning topics

@tag9
Scenario: Verify Time Complexity link on Data Structures page
Given the user navigates to the Data Structures page
When the user clicks the Time Complexity link
Then the Time Complexity page should be displayed

@tag10
Scenario: Verify Try Here editor link on Data Structures page
Given the user is on the Data Structures page
When the user clicks the "Try Here" button
Then the user should be redirected to the code editor page

@tag11
Scenario: Verify code execution in Try Here editor
Given the user is on the Try Here code editor page
When the user enters valid Python code and clicks the Run button
Then the system should display the execution result

@tag12
Scenario: Verify error message for invalid code
Given the user is on the Try Here editor page
When the user enters invalid code and clicks the Run button
Then the system should display an error message