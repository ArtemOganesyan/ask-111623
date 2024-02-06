@katyag_feature
Feature: Multiple Choice Questions

  @katyag_test_scenario1
  Scenario: Verify that the student can subit quiz after inputing text into text area
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "mclingan1985@tesqwiklosfn.shop" into element with xpath "//*[@formcontrolname='email']"
    Then I type "yomama4" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec