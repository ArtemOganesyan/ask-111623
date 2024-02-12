@KiianSingleChoiceQuestion_Other
Feature: Kiian Single Choice Question - Other

  Background: Teacher Login
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"

@kiian_includeOtherIntoSCQ
  Scenario Outline: Kiian Include "Other" text area option for  new empty Single Choice question
    Then I wait for element with xpath "//a[@href='/#/quizzes']" to be present
    Then I click on element with xpath "//a[@href='/#/quizzes']"
    Then I wait for element with xpath "//a[@href='#/quiz-builder']" to be present
    Then I click on element with xpath "//a[@href='#/quiz-builder']"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "<QuizName>" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/.."
    Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]/../.."
    Then I type "What is your name?" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Bill Le" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 1')]/../..//textarea"
    Then I type "Bill King" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 2')]/../..//textarea"
    Then I click on element with xpath "//*[contains(text(),'Option 1')]/../../../../../..//label"
    And Kiian I move question slider 3 step to the "right"
    Then I click on element with xpath "//span[contains(text(),' text area option for')]/../../../mat-checkbox/label/div"
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."
    Then I wait for 2 sec
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I scroll to the element with xpath "//*[contains(text(),'<QuizName>')]/../.." with offset 2
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../.."
    Then Kiian I wait for element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Preview')]/.." to be displayed
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Preview')]/.."
    Then I wait for element with xpath "//mat-dialog-container" to be present
    Then element with xpath "//div/textarea" should be displayed

  Examples:
    | QuizName    |
    | QuizNew1116 |

  @kiian_excludeOtherIntoSCQ
  Scenario Outline: Kiian Include/Exclude "Other" text area option for  new empty Single Choice question
    Then I wait for element with xpath "//a[@href='/#/quizzes']" to be present
    Then I click on element with xpath "//a[@href='/#/quizzes']"
    Then I wait for element with xpath "//a[@href='#/quiz-builder']" to be present
    Then I click on element with xpath "//a[@href='#/quiz-builder']"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "<QuizName>" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/.."
    Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]/../.."
    Then I type "What is your name?" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Bill Le" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 1')]/../..//textarea"
    Then I type "Bill King" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 2')]/../..//textarea"
    Then I click on element with xpath "//*[contains(text(),'Option 1')]/../../../../../..//label"
    And Kiian I move question slider 3 step to the "right"
    Then I click on element with xpath "//span[contains(text(),' text area option for')]/../../../mat-checkbox/label/div"
    Then I click on element with xpath "//span[contains(text(),' text area option for')]/../../../mat-checkbox/label/div"
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."
    Then I wait for 2 sec
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I scroll to the element with xpath "//*[contains(text(),'<QuizName>')]/../.." with offset 2
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../.."
    Then Kiian I wait for element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Preview')]/.." to be displayed
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Preview')]/.."
    Then I wait for element with xpath "//mat-dialog-container" to be present
    Then element with xpath "//div/textarea" should not be present

    Examples:
      | QuizName     |
      | QuizNew11161 |

  @kiian_deleteQuiz
  Scenario Outline: Kiian_Deleting new Quiz
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I wait for 2 sec
    Then I scroll to the element with xpath "//*[contains(text(),'QuizNew1116')]/../.." with offset 2
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../.."
    Then I wait for element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Delete')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Delete')]/.."
    Then I wait for element with xpath "//mat-dialog-container" to be present
    Then I click on element with xpath "//mat-dialog-container/..//button/span[contains(text(),'Delete')]/.."
    Then I wait for 3 sec

    Examples:
      | QuizName     |
      | QuizNew11161 |
      | QuizNew1116  |

