Feature: SignIn Feature

  Scenario: SignIn Scenario
    Given I launch amazon link page
    And I click on signIn tab
    And I entered the email
    And I click continue button
    And I entered the password
    When I click signIn button
    Then I see the home page
