Feature: greeter says hello
  In order to teste Cucumber
  As a developer
  I want a greeter to say hello

  Scenario: greeter says hello
    Given a greeter
    When I send it the greet message
    Then I should see "Hello Cucumber"
