@mo_feature1
Feature: Learn_Xpath

  @mandryk1-scenario
  Scenario: Test scenario for xpath validations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "oleh.mandryk@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "!Test2023!" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//button/span[text()='Change Your Name']"
    Then element with xpath "//div[@class='cdk-overlay-pane']//form//button//span[text()='Cancel']" should be present
    Then I click on element with xpath "//div[@class='cdk-overlay-pane']//form//button//span[text()='Cancel']"
    Then element with xpath "//ac-side-menu//div//h5[text()='Log Out']" should be present
    Then I click on element with xpath "//ac-side-menu//div//h5[text()='Log Out']"
    Then element with xpath "//div[@class='cdk-overlay-pane']//button//span[text()='No, Thanks']" should be present
    Then I click on element with xpath "//div[@class='cdk-overlay-pane']//button//span[text()='No, Thanks']"
    Then I wait for 3 sec



