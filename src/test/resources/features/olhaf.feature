@OF_ask_stage_portnov
Feature: OF_ask_stage_portnov


  @of_feature_change_user_name_poz
  Scenario Outline: change_user_name_poz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "fedorchuk.o.1991@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "111111" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"

    Then I wait for element with xpath "//h5[contains(text(),'s Management')]" to be present
    Then I wait for 4 sec
    Then I click on element with xpath "//h5[contains(text(),'s Management')]"

    Then I wait for element with xpath "//*[contains(text(),'<Name>')]" to be present
    Then I wait for 4 sec
    Then I click on element with xpath "//*[contains(text(),'<Name>')]"

    Then I wait for element with xpath "//span/mat-icon[text()='settings']/.." to be present
    Then I wait for 9 sec
    Then I click on element with xpath "//span/mat-icon[text()='settings']/.."

    Then I wait for element with xpath "//button/mat-icon[text()='edit']/.." to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button/mat-icon[text()='edit']/.."
    Then I wait for element with xpath "//*[@formcontrolname='name']" to be present
    Then I clear element with xpath "//*[@formcontrolname='name']"
    Then I type "<NewName>" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//*[text()='Change']/.."
    Then I wait for 5 sec

    Examples:
      |Name           |NewName        |
      |OlhaFedorchukSt|olxolx         |
      |olxolx         |OlhaFedorchukSt|




  @of_actual_points_poz
  Scenario: actual_points_poz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "fedorchuk.o.1991@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "111111" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"

    Then I wait for element with xpath "//*[text()='Quizzes']" to be present
    Then I click on element with xpath "//*[text()='Quizzes']"

    Then I wait for element with xpath "//*[text()='Create New Quiz']/.." to be present
    Then I click on element with xpath "//*[text()='Create New Quiz']/.."

    Then I wait for element with xpath "//*[contains(text(), 'Title Of The Quiz')]/../../input" to be present
    Then I type "1 Vivaldi AUTOMATION" into element with xpath "//*[contains(text(), 'Title Of The Quiz')]/../../input"

    # Q1
    Then I wait for element with xpath "//*[contains(text(), 'add_circle')]/../.." to be present
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/../.."

    Then I wait for element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]/../.." to be present
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]/../.."

    Then I wait for element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Question')]" to be present
    Then I type "Which answer is correct?(1)" into element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Question')]"

    Then I wait for element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Option 1')]/../textarea" to be present
    Then I type "1" into element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Option 1')]/../textarea"

    Then I wait for element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Option 2')]/../textarea" to be present
    Then I type "2" into element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(@placeholder,'Option 2')]/../textarea"

    Then I wait for element with xpath "//*[contains(text(),'Option 1*')]/../../../../../../mat-radio-button/label/div[1]" to be present
    Then I click on element with xpath "//*[contains(text(),'Option 1*')]/../../../../../../mat-radio-button/label/div[1]"

    # Q2
    Then I wait for element with xpath "//*[contains(text(), 'add_circle')]/../.." to be present
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/../.."


    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Multiple-Choice')]/../.." to be present
    Then I wait for 1 sec
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Multiple-Choice')]/../.."

    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Question')]" to be present
    Then I type "Which answer is correct?(1,2)" into element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Question')]"


    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 1')]/../textarea" to be present
    Then I type "1" into element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 1')]/../textarea"

    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 2')]/../textarea" to be present
    Then I type "2" into element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 2')]/../textarea"


    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Option 1')]/../../../../../../mat-checkbox" to be present
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Option 1')]/../../../../../../mat-checkbox"

    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Option 2')]/../../../../../../mat-checkbox" to be present
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Option 2')]/../../../../../../mat-checkbox"

    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Add Option')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Add Option')]/.."

    Then I wait for element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 3')]/../textarea" to be present
    Then I type "3" into element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(@placeholder,'Option 3')]/../textarea"

    Then I click on element with xpath "//*[contains(text(), 'Save')]/.."

    Then I wait for element with xpath "//*[contains(text(),'Assignments')]/../../.." to be present
    Then I click on element with xpath "//*[contains(text(),'Assignments')]/../../.."

    Then I wait for element with xpath "//*[contains(text(),'Create New Assignment')]/.." to be present
    Then I wait for 9 sec
    Then I click on element with xpath "//*[contains(text(),'Create New Assignment')]/.."


    Then I click on element with xpath "//*[contains(text(),'Select Quiz To Assign')]/../../.."
    Then I click on element with xpath "//*[contains(text(),'1 Vivaldi')]"

    Then I wait for element with xpath "//div/div[contains(string(),'Olha FedorchukSt')]/../mat-pseudo-checkbox" to be present
    Then I click on element with xpath "//div/div[contains(string(),'Olha FedorchukSt')]/../mat-pseudo-checkbox"

    Then I wait for element with xpath "//*[text()='Give Assignment']" to be present
    Then I click on element with xpath "//*[text()='Give Assignment']"

    Then I wait for element with xpath "//*[text()='Log Out']/../../.." to be present
    Then I click on element with xpath "//*[text()='Log Out']/../../.."

    Then I wait for element with xpath "//*[text()='Confirmation']/..//*[text()='Log Out']" to be present
    Then I click on element with xpath "//*[text()='Confirmation']/..//*[text()='Log Out']"

    Then I wait for element with xpath "//*[@formcontrolname='email']" to be present
    Then I wait for element with xpath "//*[@formcontrolname='password']" to be present
    Then I wait for element with xpath "//button[@type='submit']" to be present
    Then I wait for 2 sec
    Then I type "fedorchuk.o.1991.3@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "aaa111" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"

    Then I wait for element with xpath "//*[text()='Go To My Assignments']" to be present
    Then I click on element with xpath "//*[text()='Go To My Assignments']"

    Then I wait for element with xpath "//*[text()='Go To Assessment']" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//*[text()='Go To Assessment']"

    Then I wait for element with xpath "//*[contains(text(),'Question 1')]/..//div[contains(text(),'1')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Question 1')]/..//div[contains(text(),'1')]/.."

    Then I wait for element with xpath "//*[contains(text(),'Question 2')]/..//span[contains(text(),'1')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Question 2')]/..//span[contains(text(),'1')]/.."
    Then I wait for element with xpath "//*[contains(text(),'Question 2')]/..//span[contains(text(),'2')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Question 2')]/..//span[contains(text(),'2')]/.."

    Then I wait for element with xpath "//*[contains(text(),'Submit My Answers')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Submit My Answers')]/.."

    Then I wait for element with xpath "//span[text()='Ok']/.." to be present
    Then I click on element with xpath "//span[text()='Ok']/.."

    Then I wait for 4 sec
    Then I wait for element with xpath "//*[text()='My Grades']/../../.." to be present
    Then I click on element with xpath "//*[text()='My Grades']/../../.."

    Then I wait for element with xpath "//*[contains(text(),'Details')]/../../.." to be present
    Then I wait for 5 sec
    Then I click on last element with xpath "//*[contains(text(),'Details')]/../../.."

    Then I take screenshot
