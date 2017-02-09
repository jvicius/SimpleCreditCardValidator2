Feature: Credit card validation.
  Credit card numbers must be exactly 16 characters.

  Scenario: Credit card number is too long
    Given I wait for the "MainActivity" screen to appear
    When I enter "99999999999999999" into input field number 1
    Then I wait
    Then I press "validateButton"
    Then I wait
    Then I should see "Credit card number is too long."
    Then I wait