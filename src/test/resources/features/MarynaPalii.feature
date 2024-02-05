@MP_Teacher_can_create_assignment_test_set
Feature: MP teacher assigns a quiz

Background: MP Teacher Login
  Given MP I open url "http://ask-stage.portnov.com"
  Then MP I type "melnikovgi@finecardio.com" into element with xpath "//*[@formcontrolname='email']"
  Then MP I type "Palii4" into element with xpath "//*[@formcontrolname='password']"
  And MP I click on element with xpath "//button[@type='submit']"
  When MP I logged in as a teacher
  Then MP I verify account name "Maryna4 Palii4" and account role "TEACHER" is displayed

  Scenario: MP Teacher Can Assign a Quiz to a Student
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be present
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then MP I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then MP I wait for element with xpath "//*[@value='ALL']/../../.." to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then MP I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then MP I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//div/div[contains(string(),'Maryna1 Palii1')]/../mat-pseudo-checkbox"
    Then MP I wait for element with xpath "//button[@type='submit']" to be present
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP I wait for 3 sec
    Then MP I wait for element with xpath "//span[contains(text(),'Test Maryna Palii 4')]" to be present

  Scenario: MP Teacher Can Assign a Quiz to Multiple Students
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be displayed
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP element with xpath "//*[contains(text(), 'Create New Assignment')]/.." should be displayed
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP element with xpath "//h4[contains(text(), 'Give Assignment')]" should be displayed
    Then MP I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then MP I wait for element with xpath "//*[@value='ALL']/../../.." to be displayed
    Then MP I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then MP I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then MP I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be displayed
    Then MP I scroll to the element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//div/div[contains(string(),'Maryna1 Palii1')]/../mat-pseudo-checkbox"
    Then MP I click on element with xpath "//div/div[contains(string(),'Maryna2 Palii2')]/../mat-pseudo-checkbox"
    Then MP I wait for element with xpath "//button[@type='submit']" to be displayed
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP I wait for 3 sec
    Then MP I wait for element with xpath "//span[contains(text(),'Test Maryna Palii 4')]" to be displayed

  Scenario: MP teacher can assign a quiz to a group of students
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be present
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then MP I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then MP I wait for element with xpath "//*[@value='ALL']/../../.." to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then MP I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then MP I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select All')]"
    Then MP I wait for element with xpath "//button[@type='submit']" to be present
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP I wait for 3 sec

  Scenario: MP teacher can assign a quiz to all students
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be present
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then MP I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then MP I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select All')]"
    Then MP I wait for element with xpath "//button[@type='submit']" to be present
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP I wait for 3 sec

  Scenario: MP teacher CANNOT create an assignment with an empty field for Quiz (negative testing)
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be present
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then MP I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then MP I wait for element with xpath "//*[@value='ALL']/../../.." to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then MP I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then MP I click on element with xpath "//div/div[contains(string(),'Maryna1 Palii1')]/../mat-pseudo-checkbox"
    Then MP I wait for element with xpath "//button[@type='submit']" to be present
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP element with xpath "//*[contains(text(), 'This field is required')]/.." should be displayed
    Then MP I wait for 3 sec

  Scenario: MP teacher CANNOT create an assignment without selecting a student (negative testing)
    Then MP I wait for 1 sec
    Then MP element with xpath "//h5[contains(text(), 'Assignments')]" should be present
    Then MP I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then MP element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then MP I wait for 2 sec
    Then MP I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then MP I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then MP I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then MP I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then MP I wait for element with xpath "//*[@value='ALL']/../../.." to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then MP I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then MP I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then MP I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
    Then MP I scroll to the element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I click on element with xpath "//span[contains(text(),'Test Maryna Palii 4')]"
    Then MP I wait for element with xpath "//button[@type='submit']" to be present
    Then MP I click on element with xpath "//button[@type='submit']"
    Then MP element with xpath "//*[contains(text(), 'Select at least one Student')]/.." should be displayed
    Then MP I wait for 3 sec






