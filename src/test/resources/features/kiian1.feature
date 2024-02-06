@kiianRegistrationPassword
Feature: Kiian reristration password

  @deleteRegisteredUser
  Scenario: delete registered user
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And element with xpath "//header/div/h3" should have text as "Alice Teacher"
    Then I click on element with xpath "//h5[text()='User's Management']"
    And element with xpath "//h4[contains(text(),'User's Management')]" should be displayed
    Then I click on element with xpath "//div[contains(text(),'Students')]"
    Then I scroll to the element with xpath "//span[contains(text(),'QuizNew1116')]" with offset 2
    


  @registerPswPositive
  Scenario Outline: registering with valid psw
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfirmPsw>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then Kiian I confirm email address "bill1.west@gmail.com"
    Then I wait for 1 sec
    Examples:
      | FirstName | LastName | Email                | Group | Password | ConfirmPsw |
      | Bill      | West     | bill1.west@gmail.com | D234  | 123Qwerty| 123Qwerty  |

  @registerPswNegative
  Scenario Outline: registering with invalid psw
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfirmPsw>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@formcontrolname='password']/../../../div/div/mat-error[@role='alert']" should be present
#    Then Kiian I confirm email address "bill1.west@gmail.com"
    Then I wait for 1 sec
    Examples:
      | FirstName | LastName | Email                | Group | Password | ConfirmPsw |
      | Bill      | West     | bill1.west@gmail.com | D234  |          |            |


#  @kiian_creatingNewQuiz
#  Scenario: Kiian Creating new single choice question quiz
#    Then I wait for element with xpath "//a[@href='/#/quizzes']" to be present
#    Then I click on element with xpath "//a[@href='/#/quizzes']"
#    Then I wait for element with xpath "//a[@href='#/quiz-builder']" to be present
#    Then I click on element with xpath "//a[@href='#/quiz-builder']"
#    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
#    Then I type "QuizNew1116" into element with xpath "//input[@formcontrolname='name']"
#    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/.."
#    Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]/../.."
#    Then I type "What is your name?" into element with xpath "//textarea[@formcontrolname='question']"
#    Then I type "Bill Le" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 1')]/../..//textarea"
#    Then I type "Bill King" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 2')]/../..//textarea"
#    Then I click on element with xpath "//*[contains(text(),'Option 1')]/../../../../../..//label"
#    And Kiian I move question slider 3 step to the "right"
#    Then I wait for 2 sec
#    Then I click on element with xpath "//*[contains(text(),'Save')]/.."
#
#  @kiian_assigningQuiz
#  Scenario: Kiian_Assigning quiz to Student
#    And I wait for element with xpath "//h5[contains(text(), 'Assignments')]" to be present
#    And I click on element with xpath "//h5[contains(text(), 'Assignments')]"
#    Then element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
#    Then I wait for 2 sec
#    Then I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
#    Then I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
#    Then I click on element with xpath "//span[contains(text(),'All')]/../../.."
#    Then I wait for element with xpath "//*[@value='ALL']/../../.." to be present
#    Then I scroll to the element with xpath "//span[contains(text(),'369')]" with offset 3
#    Then I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'369')]"
#    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
#    Then I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
#    Then I scroll to the element with xpath "//span[contains(text(),'QuizNew1116')]" with offset 2
#    Then I click on element with xpath "//span[contains(text(),'QuizNew1116')]"
#    Then I wait for 1 sec
#    Then I click on element with xpath "//div/div[contains(string(),'Flora Li')]/../mat-pseudo-checkbox"
#    Then I wait for element with xpath "//button[@type='submit']" to be present
#    Then I click on element with xpath "//button[@type='submit']"
#
#
#  @kiian_deleteQuiz
#  Scenario: Kiian_Deleting new Quiz
#    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
#    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
#    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
#    Then I wait for 2 sec
#    Then I scroll to the element with xpath "//*[contains(text(),'QuizNew1116')]/../.." with offset 2
#    Then I click on element with xpath "//*[contains(text(),'QuizNew1116')]/../.."
#    Then I wait for element with xpath "//*[contains(text(),'QuizNew1116')]/../../..//*[contains(text(),'Delete')]/.." to be present
#    Then I click on element with xpath "//*[contains(text(),'QuizNew1116')]/../../..//*[contains(text(),'Delete')]/.."
#    Then I wait for element with xpath "//mat-dialog-container" to be present
#    Then I click on element with xpath "//mat-dialog-container/..//button/span[contains(text(),'Delete')]/.."
#    Then I wait for 3 sec



