 @meghak1_feature1
 Feature: Smoke steps


  @mk_Test-Scenario1
  Scenario: Test Scenario for Teacher LogIn
   Given I open url "http://ask-stage.portnov.com"
  #Then I should see page title as "Assessment Control"
   Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
   Then I type "demo@123" into element with xpath "//input[@type='password']"
   Then I click on element with xpath "//button[@type='submit']"
   Then I wait for 3 sec




