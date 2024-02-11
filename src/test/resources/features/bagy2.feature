@bagy_groupcode
Feature: bagy_groupcdoe

 Background:bagy_loginteacher
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher79@enoiv.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Roseb1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"

   @Assigngroupcode
   Scenario: assigngrpcode_toallstudents
     And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
     Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
     And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
     Then I wait for 4 sec
     Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
     Then I wait for 4 sec
   And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
   Then I wait for 2 sec
   And I scroll to the element with xpath "//mat-option/span[text()='555']" with offset 2
   And I click on element with xpath "//mat-option/span[text()='555']"
   Then I wait for 2 sec
   Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
   And I scroll to the element with xpath "//span[contains(text(),'newscq1')]" with offset 2
   And I click on element with xpath "//span[contains(text(),'newscq1')]"
   And I click on element with xpath "//span[contains(text(),'Select All')]"
   And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
   And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
   And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present


  @Assign_gcode_onestu
  Scenario: assigngrpcode_toonestudents
    And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
    Then I wait for 4 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I wait for 4 sec
    And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
    Then I wait for 2 sec
    And I scroll to the element with xpath "//mat-option/span[text()='555']" with offset 2
    And I click on element with xpath "//mat-option/span[text()='555']"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I scroll to the element with xpath "//span[contains(text(),'newscq1')]" with offset 2
    And I click on element with xpath "//span[contains(text(),'newscq1')]"
    Then I click on element with xpath "//div/div[contains(string(),'Surya flower')]/../mat-pseudo-checkbox"
    And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
    And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present

  @Assign_gcode_nostu
  Scenario: assigngrpcode_tonostudents
    And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
    Then I wait for 4 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I wait for 4 sec
    And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
    Then I wait for 2 sec
    And I scroll to the element with xpath "//mat-option/span[text()='555']" with offset 2
    And I click on element with xpath "//mat-option/span[text()='555']"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I scroll to the element with xpath "//span[contains(text(),'newscq1')]" with offset 2
   And I click on element with xpath "//span[contains(text(),'newscq1')]"
#    And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
    And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
   Then element with xpath "//mat-error[@role='alert']" should be displayed
    Then element with xpath "//mat-error[@role='alert']" should contain text "Select at least one Student"

  @assign_gcodeall
  Scenario: assigngrpcode_all_toallstudents
    And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
    Then I wait for 4 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I wait for 4 sec
    And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
    Then I wait for 2 sec
    And I scroll to the element with xpath "//mat-option/span[text()='All']" with offset 2
    And I click on element with xpath "//mat-option/span[text()='All']"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I scroll to the element with xpath "//span[contains(text(),'newscq1')]" with offset 2
    And I click on element with xpath "//span[contains(text(),'newscq1')]"
    And I click on element with xpath "//span[contains(text(),'Select All')]"
    And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
    And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present

  @assign_noquiz
  Scenario: assigngrpcode_toallstudents_noquiz
    And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
    Then I wait for 4 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I wait for 4 sec
    And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
    Then I wait for 2 sec
    And I scroll to the element with xpath "//mat-option/span[text()='555']" with offset 2
    And I click on element with xpath "//mat-option/span[text()='555']"
    Then I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Select All')]"
    And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
    And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
    Then element with xpath "//mat-error[@role='alert']" should be displayed
    Then element with xpath "//mat-error[@role='alert']" should contain text "This field is required"

  @Assign_gcode_fewstu
 Scenario Outline: assigngrpcode_tofewstudents
    And AV I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be visible
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And AV I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be visible
    Then I wait for 4 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I wait for 4 sec
    And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
    Then I wait for 2 sec
    And I scroll to the element with xpath "//mat-option/span[text()='<groupcode>']" with offset 2
    And I click on element with xpath "//mat-option/span[text()='<groupcode>']"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I scroll to the element with xpath "//span[contains(text(),'<quizname>')]" with offset 2
    And I click on element with xpath "//span[contains(text(),'<quizname>')]"
    Then I click on element with xpath "//div/div[contains(string(),'<stu_name>')]/../mat-pseudo-checkbox"
    And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
    And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present

    Examples:
    |groupcode|quizname|stu_name|
    |555      |newscq1 |Surya flower|
    |444      |newscq1 | wwwww kfkfk|
    |glitch   |newscq1 |First Student|
