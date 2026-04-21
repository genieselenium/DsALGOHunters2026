Feature: Register functionality in DS Algo Portal

 

  @tag1
  Scenario: Verify Register page elements
    Given User is on the Register page
    When User views the Register page
    Then Username, Password, Confirm Password fields and Register button should be visible

  @tag2
  Scenario: Verify user able to register successfully
    Given User is on Register page
    When User enters valid username, password and confirm password and clicks Register
    Then New account created successfully

  @tag3
  Scenario: Verify registration with empty username
    Given User is on Register page
    When User leaves username blank and clicks Register
    Then Please fill out this field error message should be displayed

  @tag4
  Scenario: Verify registration with empty password
    Given User is on Register page
    When User leaves password blank and clicks Register
    Then Please fill out this field error message should be displayed

  @tag5
  Scenario: Verify registration with empty confirm password
    Given User is on Register page
    When User leaves confirm password blank and clicks Register
    Then Please fill out this field error message should be displayed

  @tag6
  Scenario: Verify registration with all fields empty
    Given User is on Register page
    When User leaves all fields blank and clicks Register
    Then Please fill out this field error message should be displayed

  @tag7
  Scenario: Verify registration with mismatched password
    Given User is on Register page
    When User enters different password and confirm password and clicks Register
    Then Password mismatch error message should be displayed

  @tag8
  Scenario: Verify registration with similar password to personal details
    Given User is on Register page
    When User enters password that is similar to personal details and clicks Register
    Then Password mismatch error message should be displayed

  @tag9
  Scenario: Verify registration with short password
    Given User is on Register page
    When User enters password that is below minimum length and clicks Register
    Then Password mismatch error message should be displayed

  @tag10
  Scenario: Verify registration with numeric password
    Given User is on Register page
    When User enters numeric password and clicks Register
    Then Password mismatch error message should be displayed

  @tag11
  Scenario: Verify username with special characters
    Given User is on Register page
    When User enters username with special characters and clicks Register
    Then Password mismatch error message should be displayed

  @tag12
  Scenario: Verify username with spaces
    Given User is on Register page
    When User enters username with spaces and clicks Register
    Then Password mismatch error message should be displayed

  @tag13
  Scenario: Verify password with spaces
    Given User is on Register page
    When User enters password with spaces and clicks Register
    Then Password mismatch error message should be displayed

  @tag14
  Scenario: Verify user able to click Register button
    Given User is on Register page
    When user clicks Register button
    Then Register button should be clickable

  @tag15
  Scenario: Verify user able to navigate to Login page
    Given User is on Register page
    When User clicks login button
    Then User should be navigated to Login page
    
    