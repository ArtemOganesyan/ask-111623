@bagyregis
Feature: bagysmoke-step
  @bagyRegistration
  Scenario: bagyRegistration
    Given I open url "http://ask-stage.portnov.com"
    Then I wait for 3 sec
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 3 sec
    Then I type "Riana" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "gi" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "Riana1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "RRR" into element with xpath "//input[@formcontrolname='group']"
    Then I type "rianag" into element with xpath "//input[@formcontrolname='password']"
    Then I type "rianag" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec

