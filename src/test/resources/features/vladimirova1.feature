@av_textual_questions_points_test_set_textual_can_not_graded_automatically
Feature: AV Textual questions - points test set: Verify textual questions can not be graded automatically

  @av_textual_can_not_graded_automatically_teacher
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
    And AV I enter question text "What is Software Quality Assurance?" for question number 1
    And I click on element with xpath "//button[./span[contains(normalize-space(), 'Add Question')]]"
    And AV I wait for element with xpath "//*[contains(text(),'Q2')]//ancestor::mat-expansion-panel" to be visible
    And I wait for 1 sec
    And AV I choose "textual" question type for question 2
    And AV I wait for element with xpath "//*[contains(text(), 'Q2')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']" to be visible
    And AV I enter question text "Why QA?" for question number 2
    And I click on element with xpath "//button[./span[contains(normalize-space(), 'Add Question')]]"
    And AV I wait for element with xpath "//*[contains(text(),'Q3')]//ancestor::mat-expansion-panel" to be visible
    And I wait for 1 sec
    And AV I choose "textual" question type for question 3
    And AV I wait for element with xpath "//*[contains(text(), 'Q3')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']" to be visible
    And AV I enter question text "What is Integration Testing?" for question number 3
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
      | quizName   |
      | Ava auto text quest 1234 |


  @av_textual_can_not_graded_automatically_student
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
    And I type "SQA is a process of monitoring and improving all activities associated with software development, from requirements gathering, design and reviews to coding, testing and implementation." into element with xpath "//mat-card[./h5[contains(text(),'Question 1')]]//child::textarea"
    And I type "Because I like it" into element with xpath "//mat-card[./h5[contains(text(),'Question 2')]]//child::textarea"
    And I type "Integration testing is a phase in software testing in which individual software modules are combined and tested as a group." into element with xpath "//mat-card[./h5[contains(text(),'Question 3')]]//child::textarea"
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
      | quizName   |
      | Ava auto text quest 1234 |

  @av_if_student_can_see_graded_quiz_with_text
  Scenario Outline: AV Verify student can see graded quiz with textual question
    Given AV I navigate to "login" page
    Then I should see page title contains "Assessment Control @ Portnov"
    When AV I login into teacher account
    Then AV I verify user name "Anastasia Vladimirova" and role "TEACHER"
    And AV I navigate to "Submissions" page
    And I wait for 3 sec
    And AV I wait for element with xpath "//h4[contains(text(),'Submissions')]" to be visible
    And AV I wait for element with xpath "//div[contains(text(),'For Grade')]" to be visible
    And I click on element with xpath "//mat-menu//ancestor::th/span/mat-icon"
    And I scroll to the element with xpath "//span[contains(text(),'team5')]" with offset 1000
    And I click on element with xpath "//span[contains(text(),'11.16')]"
    And AV I click on Grade button for assignment with quiz name  "<quizName>"
    And AV I wait for element with xpath "//td[contains(text(),'<quizName>')]" to be visible
    And AV I add 5 points for question number 1
    And AV I add 5 points for question number 2
    And AV I add 5 points for question number 3
    And I click on element with xpath "//button[@type='submit']"
    And AV I log out of teacher's account
    And I wait for element with xpath "//h3[contains(text(),'Assessment Control')]" to be present
    And AV I login into Ava Stud student account
    And AV I navigate to "My Grades" page
    And I wait for element with xpath "//h4[contains(text(),'My Grades')]" to be present
    And AV I wait for element with xpath "//h4[contains(text(),'My Grades')]" to be visible
    And I wait for element with xpath "//tr[last()]//child::button" to be present
    And I scroll to the element with xpath "//tr[last()]//child::button" with offset 500
    And I click on element with xpath "//tr[last()]//child::button"
    Then element with xpath "//td[contains(text(),'<quizName>')]" should be displayed
    Then element with xpath "//div[@class='result']//child::div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then AV Actual score points amount should be "greater" than Passing score points amount
    Then AV Actual percentage amount should be "greater" than Passing percentage points amount

    Examples:
      | quizName   |
      | Ava auto text quest 1234 |




