@av_textual_questions_points_testSet_textual_not_textual_can_not_graded_automatically
Feature: AV Textual questions - points test set: Verify quiz with textual and non-textual questions is not fully graded automatically

  @av_textual_not_textual_can_not_graded_automatically_teacher
  Scenario Outline: AV Verify textual questions can not be graded automatically (teacher part)
    Given AV I navigate to "login" page
    Then I should see page title contains "Assessment Control @ Portnov"
    When AV I login into teacher account
    Then AV I verify user name "Anastasia Vladimirova" and role "TEACHER"
    And AV I navigate to "Quizzes" page
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]//ancestor::button"
    And I wait for element with xpath "//button[./span[contains(text(),'Back To Quizzes List')]]" to be present
    And I type "<quizName>" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//button[./span[contains(normalize-space(), 'Add Question')]]"
    And AV I wait for element with xpath "//*[contains(text(),'Q1')]//ancestor::mat-expansion-panel" to be visible
    And AV I choose "textual" question type for question 1
    And AV I wait for element with xpath "//*[contains(text(), 'Q1')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']" to be visible
    And AV I enter question text "What is functional testing type?" for question number 1
    And I click on element with xpath "//button[./span[contains(normalize-space(), 'Add Question')]]"
    And AV I wait for element with xpath "//*[contains(text(),'Q2')]//ancestor::mat-expansion-panel" to be visible
    And I wait for 1 sec
    And AV I choose "single-choice" question type for question 2
    And AV I wait for element with xpath "//*[contains(text(), 'Q2')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']" to be visible
    And AV I enter question text "Who is responsible to measure the Project’s performance?" for question number 2
    And AV I enter text "Option 1: The Delivery Manager" for option number 1 in question number 2
    And AV I enter text "Option 2: The Product Owner" for option number 2 in question number 2
    And AV I choose option number 2 as correct option for "single-choice" question type for question number 2
    And I click on element with xpath "//button[./span[contains(normalize-space(), 'Add Question')]]"
    And AV I wait for element with xpath "//*[contains(text(),'Q3')]//ancestor::mat-expansion-panel" to be visible
    And I wait for 1 sec
    And AV I choose "multiple-choice" question type for question 3
    And AV I wait for element with xpath "//*[contains(text(), 'Q3')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']" to be visible
    And AV I enter question text "Name 3 levels of bug priority?" for question number 3
    And AV I add 1 options for question 3
    And AV I enter text "1. High, Medium, Low" for option number 1 in question number 3
    And AV I enter text "2. Severity Low, Priority Medium" for option number 2 in question number 3
    And AV I enter text "3. Blocker, critical, minor" for option number 3 in question number 3
    And AV I choose option number 1 as correct option for "multiple-choice" question type for question number 3
    And I click on element with xpath "//button[./span[contains(text(),'Save')]]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then element with xpath "//*[contains(text(),'<quizName>')]" should be displayed
    And AV I navigate to "Assignments" page
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    Then element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    And I click on element with xpath "//button[./span[contains(text(),'Create New Assignment')]]"
    And AV I select value "11.16" for Group Filter drop down
    And AV I select quiz "<quizName>" for Select Quiz to Assign drop down
    And I click on element with xpath "//div[@class='mat-list-text' and contains(normalize-space(),'Ava Stud')]"
    And I click on element with xpath "//button[./span[contains(text(),'Give Assignment')]]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    Then AV assignment with quiz name "<quizName>" should be displayed
    And AV I log out of teacher's account

    Examples:
      | quizName |
      | Ava autom text and not text |

  @av_textual_not_textual_can_not_graded_automatically_student
  Scenario Outline: AV Verify textual questions can not be graded automatically (student part)
    Given AV I navigate to "login" page
    And AV I login into Ava Stud student account
    Then AV I verify user name "Ava Stud" and role "STUDENT"
    And AV I navigate to "My Assignments" page
    And AV I wait for element with xpath "//table" to be visible
    And I wait for 2 sec
    And I click on element with xpath "//td[contains(text(),'<quizName>')]//following-sibling::td//child::button"
    And AV I wait for element with xpath "//h4[contains(text(),'<quizName>')]" to be visible
    Then element with xpath "//h4[contains(text(),'<quizName>')]" should be displayed
    And I type "Is a testing type for testing the functional aspects of the app" into element with xpath "//mat-card[./h5[contains(text(),'Question 1')]]//child::textarea"
    And I click on element with xpath "//div[contains(text(),'2')]//ancestor::mat-radio-button//child::div[@class='mat-radio-container']"
    And I click on element with xpath "//span[contains(text(),'3')]//ancestor::mat-checkbox//child::div[@class='mat-checkbox-inner-container']"
    And I click on element with xpath "//button[./span[contains(text(),'Submit')]]"
    And AV I wait for element with xpath "//h1[contains(text(),'Success!')]" to be visible
    And I click on element with xpath "//button[./span[contains(text(),'Ok')]]"
    And AV I navigate to "My Grades" page
    And AV I wait for element with xpath "//h4[contains(text(),'My Grades')]" to be visible
    And I wait for element with xpath "//td[contains(text(),'<quizName>')]//ancestor::tr//child::td[@class='result']" to be present
    And I scroll to the element with xpath "//td[contains(text(),'<quizName>')]//ancestor::tr" with offset 500
    Then AV assignment with quiz name "<quizName>" should have result "PENDING"
    Then AV assignment with quiz name "<quizName>" should have score "-"


    Examples:
      | quizName |
      | Ava autom text and not text |

