Feature: SignUp Feature

  Scenario: SignUp Scenario
    Given I launch amazon link pages
    And I click on signIn tabs
    And I click create your Amazon account buttons
    And I entered the names
    And I entered the emails
    And I entered the passwords
    And I re-entered the passwords
    When I click create your amazon button agains
    Then I entered validation number sent by emails
    And I click verify buttons