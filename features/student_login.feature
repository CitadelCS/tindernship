Feature: Login to student account
    As a student
    I want to login into my account
    So I can edit my information

    Background: Student Test Account Exists
        Given the student test account is created

    Scenario: Navigate to the login page
        Given I am on the splash screen
        When I follow "Student Login"
        Then I should see "Student Login"
        And I should see "Username"

    @javascript
    Scenario: Submit the login form (valid username/password)
        Given I am on the student login page
        When I fill in "username" with "testaccount@citadel.edu"
        And I fill in "password" with "testaccount"
        And I press "Login"
        Then I should see "Profile for"

    @javascript
    Scenario: Submit the login form (invalid username/password)
        Given I am on the student login page
        When I fill in "username" with "abc@citadel.edu"
        And I fill in "password" with "abc"
        And I press "Login"
        Then I should see "Invalid username or password"
    
    