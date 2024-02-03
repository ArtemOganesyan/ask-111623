@Rathi2_feature
  Feature: Smoke steps

    @rathi2-test-scenario-2
    Scenario: Verify that the student settings Full Name field accepts only alphanumeric characters and special characters
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
      Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for 3 sec
      Then I click on element with xpath "//h5[contains(text(),'Settings')] "
      Then I click on element with xpath "//button[1]"
      Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
      Then I clear element with xpath "//input[@id='mat-input-2']"
      Then I type "Rathiyuvan" into element with xpath "//input[@id='mat-input-2']"
      And I click on element with xpath "//div[@class='cdk-overlay-container']//button[2]"
      Then I wait for 3 sec
