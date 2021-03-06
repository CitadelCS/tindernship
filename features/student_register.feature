Feature: Register a student account
    As a student
    I want to register an account
    So I can make a profile

    Scenario: Navigate to the register page
        Given I am on the splash screen
        When I follow "Student Login"
        Then I follow "Register"
        And I should see "Student Register"

    @javascript
    Scenario: Submit the register form (valid username/password)
        Given I am on the student register page
        When I fill in "username" with "testregister@citadel.edu"
        And I fill in "password" with "testregister"
        And I press "Register"
        Then I should see "New profile creation"

    @javascript
    Scenario: Submit the register form (username too short)
        Given I am on the student register page
        When I fill in "username" with "abc@citadel.edu"
        And I fill in "password" with "abc"
        And I press "Register"
        Then I should see "Username too short"

    @javascript
    Scenario: Submit the register form (password too short)
        Given I am on the student register page
        When I fill in "username" with "abcd@citadel.edu"
        And I fill in "password" with "abc"
        And I press "Register"
        Then I should see "Password too short"
       