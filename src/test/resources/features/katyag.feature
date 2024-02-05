@katyag_feature
  Feature: Multiple Choice Questions

    @katyag_test_scenario1
    Scenario: Verify that multiple choice question allows teacher to include “other” text area option in quiz
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I type "mclingan1985@tesqwiklosfn.shop" into element with xpath "//*[@formcontrolname='email']"
      Then I type "yomama4" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for 3 sec
      Then I click on element with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav[1]/ac-side-menu[1]/mat-list[1]/a[4]/div[1]"
      Then I wait for element with xpath "//a[@href='#/quiz-builder']" to be present
      Then I click on element with xpath "//a[@href='#/quiz-builder']"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      Then I type "Testing Quiz Kat1" into element with xpath "//input[@id='mat-input-2']"
      Then I click on element with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]"
      Then I click on element with xpath "//*[contains(text(), 'add_circle')]/.."
      Then I click on element with xpath "//*[contains(text(), 'Multiple Choice')]/.."




