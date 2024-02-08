@MP_User's_Management_Delete_User_test_set
Feature: MP teacher deletion of users

  Background: MP Teacher Login
    Given MP I open url "http://ask-stage.portnov.com"
    Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
    Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
    And MP I click on element with xpath "//button[@type='submit']"

#    Scenario Outline: MP Teacher Can Delete a user Student
#      Then MP I wait for 1 sec
#      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
#      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
#      Then MP I wait for element with xpath "//*[contains(text(),'Students')]" to be displayed
#      Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
#      Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
#      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
#      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
#      Then MP I wait for 3 sec
#
#      Examples:
#        |StudentName|
#        |MarynA Palii|
#        |MaryNa Palii|
#        |MaryNA Palii|

    Scenario: MP Teacher CANNOT delete a user Student by canceling deletion
        Then MP I wait for 1 sec
        Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
        Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
        Then MP I wait for element with xpath "//*[contains(text(),'Students')]" to be displayed
        Then MP I wait for element with xpath "//div/div[contains(string(),'Maryna1 Palii1')]" to be displayed
        Then MP I wait for 3 sec
        Then MP I click on element with xpath "//div/div[contains(string(),'Maryna1 Palii1')]"
        Then MP element with xpath "//*[contains(text(), 'STUDENT')]" should be displayed
        Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
        Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
        And MP I wait for 2 sec
        Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
        And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
        Then MP I wait for 2 sec
        Then MP I click on element with xpath "//*[contains(text(), 'No, Thanks')]/.."
        Then MP I wait for element with xpath "//div[contains(string(),'Maryna1 Palii1')]" to be displayed
        And MP I wait for 3 sec

    Scenario: MP Teacher CANNOT delete a user Teacher by canceling deletion
      Then MP I wait for 1 sec
      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
      Then MP I wait for element with xpath "//*[contains(text(),'Teachers')]" to be displayed
      Then MP I wait for 2 sec
      Then MP I click on element with xpath "//div[contains(text(),'Teachers')]"
      Then MP I wait for element with xpath "//div/div[contains(string(),'Maryna Palii')]" to be displayed
      Then MP I wait for 3 sec
      Then MP I click on element with xpath "//div/div[contains(string(),'Maryna Palii')]"
      Then MP element with xpath "//*[contains(text(), 'TEACHER')]" should be displayed
      Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
      Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
      And MP I wait for 2 sec
      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
      Then MP I wait for 2 sec
      Then MP I click on element with xpath "//*[contains(text(), 'No, Thanks')]/.."
      Then MP I wait for element with xpath "//div[contains(string(),'Maryna Palii')]" to be displayed
      And MP I wait for 3 sec
      
    Scenario: MP teacher CANNOT delete its own account
      Then MP I wait for 1 sec
      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
      Then MP I wait for element with xpath "//*[contains(text(),'Teachers')]" to be displayed
      Then MP I wait for 2 sec
      Then MP I click on element with xpath "//div[contains(text(),'Teachers')]"
      Then MP I wait for element with xpath "//div/div[contains(string(),'Maryna4 Palii4')]" to be displayed
      Then MP I wait for 3 sec
      Then MP I click on element with xpath "//div/div[contains(string(),'Maryna4 Palii4')]"
      Then MP element with xpath "//*[contains(text(), 'TEACHER')]" should be displayed
      Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
      Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
      And MP I wait for 2 sec
      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
      Then MP I wait for 2 sec
      Then MP element with xpath "//*[contains(text(), 'Notification')]" should be displayed
      Then MP I click on element with xpath "//span[contains(text(),'Ok')]"
      Then MP I wait for element with xpath "//div[contains(string(),'Maryna Palii')]" to be displayed
      And MP I wait for 3 sec


      
      
    

        
        

