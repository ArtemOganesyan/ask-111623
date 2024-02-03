@arthy1_feature
Feature: Smoke steps

  @arthy_test-scenario-submission-status-e2e
  Scenario: Test scenario [T][S] E2E - Submission Status
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h3[contains(text(),'arthy vicky')]/.." to be present
    Then element with xpath "//h3[contains(text(),'arthy vicky')]/.." should be displayed
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "(//span[contains(text(),'Select Quiz To Assign')])[1]"
    Then I click on element with xpath "//span[contains(text(),'SQA#1')]/.."
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'AA22')]/../..//*[@class='mat-pseudo-checkbox']"
    Then I click on element with xpath "(//button[@type='submit'])[1]"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Log Out')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Log Out')]/.."
    Then I wait for 1 sec
    Then I type "aarthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    And element with xpath "//h3[contains(text(),'aarthy vikram')]/.." should be displayed
    Then I click on element with xpath "//h5[contains(text(),'My Assignment')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Go To Assessment')]/.."
    Then I wait for element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.." to be present
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[3]/../."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[5]/.."
    Then I wait for element with xpath "//span[contains(text(),'Submit My Answers')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Ok')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Ok')]/.."
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Details')]/.."
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then I wait for 1 sec