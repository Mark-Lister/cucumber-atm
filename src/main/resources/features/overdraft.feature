Feature: overdraft
    As a customer
    I to choose between two accounts, normal and overdraft
    so that I can limit spending or stop transactions failing.

Scenario: Withdraw too much from non OD
    Given a customer with id 1 and pin 111 with balance 200 overdraft amount is 0
    And I login to ATM with id 1 and pin 111
    When I overdraw 250 from ATM
    Then my account balance is 200

Scenario: Withdraw from OD account
    Given a customer with id 2 and pin 222 with balance 50 overdraft amount is 200
    And I login to ATM with id 2 and pin 222
    When I withdraw 100 from ATM
    Then my account balance is -50

Scenario: Withdraw too much from OD account
    Given a customer with id 2 and pin 222 with balance 50 overdraft amount is 200
    And I login to ATM with id 2 and pin 222
    When I overdraw 300 from ATM
    Then my account balance is 50       