@MP_User's_Management_Delete_User_test_set
Feature: MP teacher deletion of users

#    Scenario Outline: MP Teacher Can Delete a user Student
#      Given MP I open url "http://ask-stage.portnov.com/#/login"
#      Then MP I click on element with xpath "//span[contains(text(),'Register Now')]"
#
#      Then MP I type "<MPFirstName>" into element with xpath "//*[@formcontrolname='firstName']"
#      Then MP I type "<MPLastName>" into element with xpath "//*[@formcontrolname='lastName']"
#      Then MP I type "<MPEmail>" into element with xpath "//*[@formcontrolname='email']"
#      Then MP I type "<MPGroupCode>" into element with xpath "//*[@formcontrolname='group']"
#      Then MP I type "<MPPassword>" into element with xpath "//*[@formcontrolname='password']"
#      Then MP I type "<MPConfirmPassword>" into element with xpath "//*[@formcontrolname='confirmPassword']"
#      Then MP I click on element with xpath "//span[contains(text(),'Register Me')]"
#      Then MP I wait for 3 sec
#      Then MP element with xpath "//h4[text()='You have been Registered.']" should be displayed
#      Then MP I click on element with xpath "//*[contains(text(), 'Back to Login Page')]/.."
#      Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
#      Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
#      And MP I click on element with xpath "//button[@type='submit']"Then MP I wait for 1 sec
#      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
#      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
#      Then MP I wait for element with xpath "//*[contains(text(),'Students')]" to be displayed
#      Then MP I click on element with xpath "//div/div[contains(string(),'<MPFirstName> <MPLastName>')]"
#      Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
#      Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
#      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
#      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
#      Then MP I wait for 3 sec
#      Then MP element with xpath "//*[contains(text(),'Students')]" should be displayed
#
#  Examples:
#    |MPFirstName |MPLastName |MPEmail               |MPGroupCode  |MPPassword |MPConfirmPassword |
#    |Mary        |Pa         |marypa@mpmail.com     |134567       |Pa11111    |Pa11111           |
#    |Marya       |Pa1        |marypa1@mpmail.com    |234567       |Pa22222    |Pa22222           |
#    |Maryb       |Pa2        |marypa2@mpmail.com    |334567       |Pa33333    |Pa33333           |
#    |Maryc       |Pa3        |marypa3@mpmail.com    |434567       |Pa44444    |Pa44444           |
#    |Maryd       |Pa4        |marypa4@mpmail.com    |534567       |Pa55555    |Pa55555           |
#    |Marye       |Pa5        |marypa5@mpmail.com    |634567       |Pa66666    |Pa66666           |




  Scenario: MP Teacher CANNOT delete a user Student by canceling deletion
        Given MP I open url "http://ask-stage.portnov.com"
        Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
        Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
        And MP I click on element with xpath "//button[@type='submit']"
        Then MP I wait for 1 sec
        Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
        Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
        Then MP I wait for element with xpath "//*[contains(text(),'Students')]" to be displayed
        Then MP I wait for element with xpath "//div/div[contains(string(),'MaryNA Palii')]" to be displayed
        Then MP I wait for 2 sec
        Then MP I click on element with xpath "//div/div[contains(string(),'MaryNA Palii')]"
#        Then MP element with xpath "//*[contains(text(), 'STUDENT')]" should contain text "STUDENT"
#        Then MP I wait for element with xpath "//button/span/mat-icon[text()='settings']/.." to be displayed
        Then MP I wait for 10 sec
        Then MP I click on element with xpath "//button/span/mat-icon[text()='settings']/.."
        And MP I wait for 2 sec
        Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
        And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
        Then MP I wait for 2 sec
        Then MP I click on element with xpath "//*[contains(text(), 'No, Thanks')]/.."
        Then MP element with xpath "//div[contains(string(),'MaryNA Palii')]" should be displayed

    Scenario: MP Teacher CANNOT delete a user Teacher by canceling deletion
      Given MP I open url "http://ask-stage.portnov.com"
      Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
      Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
      And MP I click on element with xpath "//button[@type='submit']"
      Then MP I wait for 1 sec
      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
      Then MP I wait for element with xpath "//*[contains(text(),'Teachers')]" to be displayed
      Then MP I wait for 2 sec
      Then MP I click on element with xpath "//div[contains(text(),'Teachers')]"
      Then MP I wait for element with xpath "//div/div[contains(string(),'Maryna Palii')]" to be displayed
      Then MP I wait for 3 sec
      Then MP I click on element with xpath "//div/div[contains(string(),'Maryna Palii')]"
#      Then MP element with xpath "//*[contains(text(), 'TEACHER')]" should be displayed
#      Then MP element with xpath "//button/span/mat-icon[text()='settings']/.." should be displayed
      Then MP I wait for 10 sec
      Then MP I click on element with xpath "//button/span/mat-icon[text()='settings']/.."
      And MP I wait for 2 sec
      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
      Then MP I wait for 2 sec
      Then MP I click on element with xpath "//*[contains(text(), 'No, Thanks')]/.."
      Then MP element with xpath "//div[contains(string(),'Maryna Palii')]" should be displayed
      
    Scenario: MP teacher CANNOT delete its own account
      Given MP I open url "http://ask-stage.portnov.com"
      Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
      Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
      And MP I click on element with xpath "//button[@type='submit']"
      Then MP I wait for 1 sec
      Then MP I wait for element with xpath "//h5[contains(text(),'Management')]" to be displayed
      Then MP I click on element with xpath "//h5[contains(text(),'Management')]"
      Then MP I wait for element with xpath "//*[contains(text(),'Teachers')]" to be displayed
      Then MP I wait for 5 sec
      Then MP I click on element with xpath "//div[contains(text(),'Teachers')]"
      Then MP I wait for element with xpath "//div/div[contains(string(),'Maryna4 Palii4')]" to be displayed
      Then MP I wait for 3 sec
      Then MP I click on element with xpath "//div/div[contains(string(),'Maryna4 Palii4')]"
      Then MP element with xpath "//*[contains(text(), 'TEACHER')]" should be displayed
      Then MP element with xpath "//span/mat-icon[text()='settings']/.." should be displayed
      Then MP I wait for 10 sec
      Then MP I click on element with xpath "//span/mat-icon[text()='settings']/.."
      And MP I wait for 2 sec
      Then MP element with xpath "//button/mat-icon[text()='delete']/.." should be displayed
      And MP I click on element with xpath "//button/mat-icon[text()='delete']/.."
      Then MP I wait for 2 sec
      Then MP element with xpath "//*[contains(text(), 'Notification')]" should be displayed
      Then MP I click on element with xpath "//span[contains(text(),'Ok')]"
      Then MP element with xpath "//div[contains(string(),'Maryna4 Palii4')]" should be displayed




      
      
    

        
        

