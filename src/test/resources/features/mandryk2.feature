@mo_feature2
Feature: Group_Code

  @mandryk2.1-scenario
  Scenario: Registration - Group Code Validation - Field is Required
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//button/span[text()='Register Now']"
    Then I type "Tom" into element with xpath "//form//input[@formcontrolname='firstName']"
    Then I type "Boyd" into element with xpath "//form//input[@formcontrolname='lastName']"
    Then I type "tom.boyd+2323@gmail.com" into element with xpath "//form//input[@formcontrolname='email']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='password']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='confirmPassword']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button/span[text()='Register Me']"
    Then I wait for 3 sec

  @mandryk2.2-scenario
  Scenario: Registration - Group Code Validation - Type with alphanumeric characters and special characters within the allowed range
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//button/span[text()='Register Now']"
    Then I type "Tom" into element with xpath "//form//input[@formcontrolname='firstName']"
    Then I type "Boyd" into element with xpath "//form//input[@formcontrolname='lastName']"
    Then I type "tom.boyd+2323@gmail.com" into element with xpath "//form//input[@formcontrolname='email']"
    Then I type "KR?1015" into element with xpath "//form//input[@formcontrolname='group']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='password']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='confirmPassword']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button/span[text()='Register Me']"
    Then I wait for 3 sec

  @mandryk2.3-scenario
  Scenario Outline: Registration - Group Code Validation - Outline
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//button/span[text()='Register Now']"
    Then I type "Tom" into element with xpath "//form//input[@formcontrolname='firstName']"
    Then I type "Boyd" into element with xpath "//form//input[@formcontrolname='lastName']"
    Then I type "tom.boyd+2323@gmail.com" into element with xpath "//form//input[@formcontrolname='email']"
    Then I type "<groupCode>" into element with xpath "//form//input[@formcontrolname='group']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='password']"
    Then I type "qwerty" into element with xpath "//form//input[@formcontrolname='confirmPassword']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button/span[text()='Register Me']"
    Then I wait for 3 sec

    Examples:
      | groupCode |
      | KR?1015 |
      | KRMN1000981 |
      | KRMN10009!  |
      | KRM!2234?   |
      | KR M 1      |


