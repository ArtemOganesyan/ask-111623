 @meghak1_feature1
 Feature: Smoke steps


  @mk_Test-Scenario1
  Scenario: mk Test Scenario for Teacher LogIn
   Given I open url "http://ask-stage.portnov.com"
  #Then I should see page title as "Assessment Control"
   Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
   Then I type "demo@123" into element with xpath "//input[@type='password']"
   Then I click on element with xpath "//button[@type='submit']"
   Then I wait for 3 sec


   @mk_Test-Scenario2
   Scenario: mk Test Scenario for change password
    Given I open url "http://ask-stage.portnov.com"
    Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
    Then I type "demo@123" into element with xpath "//input[@type='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I wait for element with xpath "//*[contains(text(),'Settings')]" to be present
    Then I click on element with xpath "//*[contains(text(),'Settings')]"
    Then I wait for element with xpath "//span[contains(text(),'Change Your Password')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    Then I type "demo@123" into element with xpath "//input[@placeholder='Password']"
    Then I type "welcome@90" into element with xpath "//input[@placeholder='New Password']"
    Then I type "welcome@90" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//button[@class='mat-button']"
    Then I wait for 3 sec

 @mk_Test-Scenario3
 Scenario: mk Test Scenario for error handling
  Given I open url "http://ask-stage.portnov.com"
  Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
  Then I type "demo@123" into element with xpath "//input[@type='password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for 2 sec
  Then I wait for element with xpath "//*[contains(text(),'Settings')]" to be present
  Then I click on element with xpath "//*[contains(text(),'Settings')]"
  Then I wait for element with xpath "//span[contains(text(),'Change Your Password')]" to be present
  Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
  Then I click on element with xpath "//input[@placeholder='New Password']"
  Then I wait for element with xpath "//mat-error[contains(text(),'This field is required')]" to be present


 @mk_Test-Scenario3
 Scenario: mk Test Scenario for password dose not match message
  Given I open url "http://ask-stage.portnov.com"
  Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
  Then I type "demo@123" into element with xpath "//input[@type='password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for 2 sec
  Then I wait for element with xpath "//*[contains(text(),'Settings')]" to be present
  Then I click on element with xpath "//*[contains(text(),'Settings')]"
  Then I wait for element with xpath "//span[contains(text(),'Change Your Password')]" to be present
  Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
  Then I type "demo@123" into element with xpath "//input[@placeholder='Password']"
  Then I type "welcome@90" into element with xpath "//input[@placeholder='New Password']"
  Then I type "welcome@65" into element with xpath "//input[@placeholder='Confirm New Password']"
  Then I click on element with xpath "(//span[contains(text(),'Change')])[3]"
  Then I wait for element with xpath "//mat-error[contains(text(),'Entered passwords should match')]" to be present
  Then I wait for 1 sec

