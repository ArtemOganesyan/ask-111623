@kiianRegistrationPswConfirmPsw
Feature: Kiian registration Psw_confirmPsw

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
    Then I confirm user account with email "<Email>"
    Then  Kiian I wait for element with xpath "//mat-card/h4[text()='You have been Registered.']" to be displayed
    Then I wait for 2 sec
    Then I click on element with xpath "//button/span[text()='Back to Login Page']"
    Then I type "<Email>" into element with xpath "//*[@formcontrolname='email']"
    Then I type "<Password>" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    And element with xpath "//header/div/h3" should have text as "<FirstName> <LastName>"

    Examples:
      | FirstName  | LastName | Email                | Group | Password                         | ConfirmPsw                       |
      | Billy      | West     | bill1.west@gmail.com | D234  | 123Qwerty                        | 123Qwerty                        |
      | Billi      | West     | bill2.west@gmail.com | D234  | 12345                            | 12345                            |
      | Bille      | West     | bill3.west@gmail.com | D234  | Qwertyy                          | Qwertyy                          |
      | Billa      | West     | bill4.west@gmail.com | D234  | 12Ert678901234567890123456789!@# | 12Ert678901234567890123456789!@# |
#      | Bills      | West     | bill5.west@gmail.com | D234  | !"#$%&'()*+,-./:;<=>?@[]^_`{\|}~ | !"#$%&'()*+,-./:;<=>?@[]^_`{\|}~ |
      | Billq      | West     | bill6.west@gmail.com | D234  | МійПасворд                       | МійПасворд                       |

  @deleteUser
  Scenario Outline: delete User
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then Kiian I wait for element with xpath "//header/div/h3[text()='Alice Teacher']" to be displayed
    And element with xpath "//header/div/h3" should have text as "Alice Teacher"
    Then I click on element with xpath "//h5[contains(text(), 'Management')]"
    Then Kiian I wait for element with xpath "//h4[contains(text(),'Management')]" to be displayed
    Then I wait for 2 sec
    Then I scroll to the element with xpath "//h4[contains(text(), '<FirstName> <LastName>')]" with offset 2
    Then I wait for 2 sec
    Then Kiian I wait for element with xpath "//h4[contains(text(), '<FirstName> <LastName>')]" to be displayed
    Then I click on element with xpath "//h4[contains(text(),'<FirstName> <LastName>')]/.."
    Then I click on element with xpath "//mat-icon[@role='img'][text()='settings']/../../../button"
    Then Kiian I wait for element with xpath "//mat-icon[text()='delete']/.." to be displayed
    Then Kiian I wait for element with xpath "//mat-icon[text()='delete']/.." to be displayed
    Then I click on element with xpath "//mat-icon[text()='delete']/.."
    Then Kiian I wait for element with xpath "//mat-dialog-container[@id='mat-dialog-0']" to be displayed
    Then Kiian I wait for element with xpath "//span[text()='Delete']" to be displayed
    Then I click on element with xpath "//span[text()='Delete']"
    Then I wait for 2 sec

    Examples:
      | FirstName  | LastName |
      | Billy      | West     |
      | Billi      | West     |
      | Bille      | West     |
      | Billa      | West     |
      | Bills      | West     |
      | Billq      | West     |
      | Bill       | West     |


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

  @registerPswNegCaseSensitivity
  Scenario Outline: registering Psw Case Sensitivity
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
    Then I confirm user account with email "<Email>"
    Then I click on element with xpath "//button/span[text()='Back to Login Page']"
    Then I type "<Email>" into element with xpath "//*[@formcontrolname='email']"
    Then I type "<Password1>" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And element with xpath "//header/div/h3" should have text as "<FirstName> <LastName>"
    Then I wait for 3 sec

    Examples:
      | FirstName  | LastName | Email                | Group | Password   | ConfirmPsw | Password1 |
      | Billy      | West     | bill1.west@gmail.com | D234  | 123Qwerty  | 123Qwerty  | 123qwerty |
      | Billi      | West     | bill2.west@gmail.com | D234  | E12345     | E12345     | e12345    |
      | Bille      | West     | bill3.west@gmail.com | D234  | Qwertyy    | Qwertyy    | QWERTYY   |


  @registerPswConfPswMatch
  Scenario Outline: Psw and ConfPsw Match
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<ConfirmPsw>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then Kiian the entered data into elements with xpath "//input[@formcontrolname='password']" and "//input[@formcontrolname='confirmPassword']" should match
    Then I click on element with xpath "//button[@type='submit']"
    Then  Kiian I wait for element with xpath "//mat-card/h4[text()='You have been Registered.']" to be displayed
    Then I wait for 3 sec
    Examples:
      | FirstName | LastName | Email                 | Group | Password         | ConfirmPsw   |
      | Bill      | West     | bill11.west@gmail.com | D234  | 123Qwerty        | 123Qwerty    |

  @registerPswConfPswDoNotMatch_bothError
  Scenario Outline: Psw and ConfPsw don't Match_bothError
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type <Password> into element with xpath "//input[@formcontrolname='password']"
    Then I type <ConfirmPsw> into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I wait for 2 sec
    Then Kiian the entered data into elements with xpath "//input[@formcontrolname='password']" and "//input[@formcontrolname='confirmPassword']" should not match
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@formcontrolname='password']/../../../div/div/mat-error[@role='alert']" should contain text "<MyMessage1>"
    Then element with xpath "//input[@formcontrolname='confirmPassword']/../../../div/div/mat-error[@role='alert']" should contain text "<MyMessage2>"
    Then I wait for 3 sec
    Then  element with xpath "//mat-card/h4[text()='You have been Registered.']" should not be present

    Examples:
      | FirstName | LastName | Email                | Group | Password     | ConfirmPsw | MyMessage1                  | MyMessage2                     |
      | Bill      | West     | bill1.west@gmail.com | D234  | ""           | "R@123!"   | This field is required      | Entered passwords should match |
      | Bill      | West     | bill1.west@gmail.com | D234  | "  "         | "R@123!"   | Whitespaces are not allowed | Entered passwords should match |
      | Bill      | West     | bill1.west@gmail.com | D234  | "R@12"       | "R@1"      | Too short. Should be at least 5 to 32 characters | Too short. Should be at least 5 to 32 characters |
      | Bill      | West     | bill1.west@gmail.com | D234  | "R@12"       | "R@123!"   | Too short. Should be at least 5 to 32 characters | Entered passwords should match |


  @registerPswConfPswDoNotMatch_ConfirmPswError
  Scenario Outline: Psw and ConfPsw don't Match_ConfirmPswError
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "<FirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<LastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<Group>" into element with xpath "//input[@formcontrolname='group']"
    Then I type <Password> into element with xpath "//input[@formcontrolname='password']"
    Then I type <ConfirmPsw> into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then Kiian the entered data into elements with xpath "//input[@formcontrolname='password']" and "//input[@formcontrolname='confirmPassword']" should not match
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@formcontrolname='password']/../../../div/div/mat-error[@role='alert']" should not be present
    Then element with xpath "//input[@formcontrolname='confirmPassword']/../../../div/div/mat-error[@role='alert']" should contain text "<MyMessage2>"
    Then I wait for 3 sec
    Then  element with xpath "//mat-card/h4[text()='You have been Registered.']" should not be present

    Examples:
      | FirstName | LastName | Email                | Group | Password     | ConfirmPsw | MyMessage2                     |
      | Bill      | West     | bill1.west@gmail.com | D234  | "123Qwerty"  | "123Qwert" | Entered passwords should match |
      | Bill      | West     | bill1.west@gmail.com | D234  | "123Qwert"   | "123Qwerty"| Entered passwords should match |
      | Bill      | West     | bill1.west@gmail.com | D234  | "R@123!"     | ""         | This field is required         |
      | Bill      | West     | bill1.west@gmail.com | D234  | "R@123!"     | "  "       | Whitespaces are not allowed    |



