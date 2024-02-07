@kiianRegistrationPassword
Feature: Kiian registration password

  @deleteRegisteredUser
  Scenario Outline: delete registered user
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then Kiian I wait for element with xpath "//header/div/h3[text()='Alice Teacher']" to be displayed
    And element with xpath "//header/div/h3" should have text as "Alice Teacher"
    Then I click on element with xpath "//h5[contains(text(), 'Management')]"
    Then Kiian I wait for element with xpath "//h4[contains(text(),'Management')]" to be displayed
    Then I wait for 4 sec
    Then I scroll to the element with xpath "//h4[contains(text(), '<FirstName> <LastName>')]" with offset 2
    Then I wait for 6 sec
    Then Kiian I wait for element with xpath "//h4[contains(text(), '<FirstName> <LastName>')]" to be displayed
    Then I click on element with xpath "//h4[contains(text(),'<FirstName> <LastName>')]/.."
    Then I click on element with xpath "//mat-icon[@role='img'][text()='settings']/../../../button"
    Then Kiian I wait for element with xpath "//mat-icon[text()='delete']/.." to be displayed
    Then I click on element with xpath "//mat-icon[text()='delete']/.."
    Then Kiian I wait for element with xpath "//mat-dialog-container[@id='mat-dialog-0']" to be displayed
    Then I click on element with xpath "//span[text()='Delete']"
    Then I wait for 2 sec

    Examples:
      | FirstName  | LastName |
      | Billy      | West     |
      | Billi      | West     |
      | Bille      | West     |
      | Billa      | West     |
    
  @registerPswPositive
  Scenario Outline: registering with valid psw
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfirmPsw>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then  Kiian I wait for element with xpath "//mat-card/h4[text()='You have been Registered.']" to be displayed
#    Then Kiian I confirm email address "bill1.west@gmail.com"
    Then I click on element with xpath "//button/span[text()='Back to Login Page']"
    Then I type "<Email>" into element with xpath "//*[@formcontrolname='email']"
    Then I type "<Password>" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And element with xpath "//header/div/h3" should have text as "<FirstName> <LastName>"
    Then I wait for 3 sec
    Examples:
      | FirstName  | LastName | Email                | Group | Password                         | ConfirmPsw                       |
      | Billy      | West     | bill1.west@gmail.com | D234  | 123Qwerty                        | 123Qwerty                        |
      | Billi      | West     | bill2.west@gmail.com | D234  | 12345                            | 12345                            |
      | Bille      | West     | bill3.west@gmail.com | D234  | Qwertyy                          | Qwertyy                          |
      | Billa      | West     | bill3.west@gmail.com | D234  | 12Ert678901234567890123456789!@# | 12Ert678901234567890123456789!@# |


  @registerPswNegative
  Scenario Outline: registering with invalid psw
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type <Password> into element with xpath "//input[@formcontrolname='password']"
    Then I type <ConfirmPsw> into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@formcontrolname='password']/../../../div/div/mat-error[@role='alert']" should contain text "<MyMessage>"
    Then I wait for 3 sec
    Then  element with xpath "//mat-card/h4[text()='You have been Registered.']" should not be present
    
    Examples:
      | FirstName | LastName | Email                | Group | Password                            | ConfirmPsw | MyMessage                                        |
      | Bill      | West     | bill1.west@gmail.com | D234  | ""                                  | ""         | This field is required                           |
      | Bill      | West     | bill1.west@gmail.com | D234  | "        "                          | ""         | Whitespaces are not allowed                      |
      | Bill      | West     | bill1.west@gmail.com | D234  | "12345W "                           | ""         | Whitespaces are not allowed                      |
      | Bill      | West     | bill1.west@gmail.com | D234  | " 12345W"                           | ""         | Whitespaces are not allowed                      |
      | Bill      | West     | bill1.west@gmail.com | D234  | "Qwe2"                              | ""         | Too short. Should be at least 5 to 32 characters |
      | Bill      | West     | bill1.west@gmail.com | D234  | "12Ert678901234567890123456789!@##" | ""         | Too long. Should be at least 5 to 32 characters  |

