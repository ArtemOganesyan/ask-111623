@Vlasovfeature_2
  Feature: Vlasov_Total_questions

    @Vlasov_1question
    Scenario: Quiz 1 question
      Given I open url "http://ask-stage.portnov.com"
      Then I type "mariska118@donghuudoi.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
      And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
      And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
      And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
      And I click on element with xpath "//mat-radio-button[3]"
      And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
      And I wait for 1 sec
      And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
      And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
      And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
      And I create 5 options
      And I choose 5 as correct option
      Then I wait for 3 sec
