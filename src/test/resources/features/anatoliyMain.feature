@AK_ask_stage_portnov
Feature: AK_ask_stage_portnov

    @AK_RegistrationGroupCodePos
    Scenario Outline: Registration positive (Step1 - Registration data)
        Given I open url "http://ask-stage.portnov.com/"
        Then I wait for element with xpath "//*[text()='Register Now']" to be present
        Then I click on element with xpath "//*[text()='Register Now']"
        Then I wait for element with xpath "//*[text()='First Name']/../.." to be present
        Then I type "<FirstName>" into element with xpath "//*[text()='First Name']/../../input"
        Then I type "<LastName>" into element with xpath "//*[text()='Last Name']/../../input"
        Then I type "<Email>" into element with xpath "//*[text()='Email']/../../input"
        Then I type "<GroupCode>" into element with xpath "//*[text()='Group Code']/../../input"
        Then I type "<Password>" into element with xpath "//*[text()='Password']/../../input"
        Then I type "<ConfirmPassword>" into element with xpath "//*[text()='Confirm Password']/../../input"
        Then I click on element with xpath "//*[text()='Register Me']/.."
        Then I take screenshot
        Then I wait for 2 sec
        Then I wait for element with xpath "//h4[text()='You have been Registered.']" to be present
        Then element with xpath "//h4[text()='You have been Registered.']" should be present
    Examples:
        |FirstName|LastName                 |Email                          |GroupCode  |Password |ConfirmPassword |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |aBcDf      |a052623  |a052623         |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |1024       |a052623  |a052623         |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |!@#$%      |a052623  |a052623         |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |aBc1#!     |a052623  |a052623         |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |abcdefghij |a052623  |a052623         |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |a          |a052623  |a052623         |


    @AK_RegistrationGroupCodeNeg
    Scenario Outline: Registration negative (Step1 - Registration data)
        Given I open url "http://ask-stage.portnov.com/"
        Then I wait for element with xpath "//*[text()='Register Now']" to be present
        Then I click on element with xpath "//*[text()='Register Now']"
        Then I wait for element with xpath "//*[text()='First Name']/../.." to be present
        Then I type "<FirstName>" into element with xpath "//*[text()='First Name']/../../input"
        Then I type "<LastName>" into element with xpath "//*[text()='Last Name']/../../input"
        Then I type "<Email>" into element with xpath "//*[text()='Email']/../../input"
        Then I type "<GroupCode>" into element with xpath "//*[text()='Group Code']/../../input"
        Then I type "<Password>" into element with xpath "//*[text()='Password']/../../input"
        Then I type "<ConfirmPassword>" into element with xpath "//*[text()='Confirm Password']/../../input"
        Then I click on element with xpath "//*[text()='Register Me']/.."
        Then I take screenshot
        Then I wait for 2 sec
        Then I wait for element with xpath "<ErrorMessage>" to be present
        Then element with xpath "<ErrorMessage>" should be present

    Examples:
        |FirstName|LastName                 |Email                          |GroupCode  |Password |ConfirmPassword |ErrorMessage                                        |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |AbcD123!#$@|a052623  |a052623         |//*[contains(text(),'Too long')]                    |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |aBc Df     |a052623  |a052623         |//*[contains(text(),'Whitespaces are not allowed')] |


    @AK_RegistrationGroupCodeNeg
    Scenario Outline: Registration negative (Step1 - Registration data)
        Given I open url "http://ask-stage.portnov.com/"
        Then I wait for element with xpath "//*[text()='Register Now']" to be present
        Then I click on element with xpath "//*[text()='Register Now']"
        Then I wait for element with xpath "//*[text()='First Name']/../.." to be present
        Then I type "<FirstName>" into element with xpath "//*[text()='First Name']/../../input"
        Then I type "<LastName>" into element with xpath "//*[text()='Last Name']/../../input"
        Then I type "<Email>" into element with xpath "//*[text()='Email']/../../input"
#    Then I type "<GroupCode>" into element with xpath "//*[text()='Group Code']/../../input"
        Then I type "<Password>" into element with xpath "//*[text()='Password']/../../input"
        Then I type "<ConfirmPassword>" into element with xpath "//*[text()='Confirm Password']/../../input"
        Then I click on element with xpath "//*[text()='Register Me']/.."
        Then I take screenshot
        Then I wait for 2 sec
        Then I wait for element with xpath "<ErrorMessage>" to be present
        Then element with xpath "<ErrorMessage>" should be present
    Examples:
        |FirstName|LastName                 |Email                          |GroupCode  |Password |ConfirmPassword |ErrorMessage                                        |
        |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |AbcD123!#$@|a052623  |a052623         |//*[contains(text(),'This field is required')]                    |

    @AK_RegistrationGroupCodeNeg
    Scenario Outline: Registration negative (Step1 - Registration data)
        Given I open url "http://ask-stage.portnov.com/"
        Then I wait for element with xpath "//*[text()='Register Now']" to be present
        Then I click on element with xpath "//*[text()='Register Now']"
        Then I wait for element with xpath "//*[text()='First Name']/../.." to be present
        Then I type "<FirstName>" into element with xpath "//*[text()='First Name']/../../input"
        Then I type "<LastName>" into element with xpath "//*[text()='Last Name']/../../input"
        Then I type "<Email>" into element with xpath "//*[text()='Email']/../../input"
    Then I type " " into element with xpath "//*[text()='Group Code']/../../input"
        Then I type "<Password>" into element with xpath "//*[text()='Password']/../../input"
        Then I type "<ConfirmPassword>" into element with xpath "//*[text()='Confirm Password']/../../input"
        Then I click on element with xpath "//*[text()='Register Me']/.."
        Then I take screenshot
        Then I wait for 2 sec
        Then I wait for element with xpath "<ErrorMessage>" to be present
        Then element with xpath "<ErrorMessage>" should be present
        Examples:
            |FirstName|LastName                 |Email                          |GroupCode  |Password |ConfirmPassword |ErrorMessage                                        |
            |Anatoliy |KolesnikAutoTestGroupCode|anatoliyGroupCode@fakeMail.com |AbcD123!#$@|a052623  |a052623         |//*[contains(text(),'Whitespaces are not allowed')] |


    @AK_@TotalQuiz
    Scenario Outline: Total Quiz:
        Given I open url "http://ask-stage.portnov.com/"
        Then I wait for element with xpath "//*[text()='Sign In']/.." to be present
        Then I type "<Email>" into element with xpath "//*[text()='Email *']/../../input"
        Then I type "<Password>" into element with xpath "//*[text()='Password *']/../../input"
        Then I click on element with xpath "//*[text()='Sign In']/.."
        Then I wait for element with xpath "//*[text()='Settings']/.." to be present
        Then I wait for element with xpath "//*[contains(text(), 'Management')]/.." to be present
        Then I wait for element with xpath "//*[text()='Quizzes']" to be present
        Then I click on element with xpath "//*[text()='Quizzes']"
        Then I wait for element with xpath "//*[text()='Create New Quiz']/.." to be present
        Then I click on element with xpath "//*[text()='Create New Quiz']/.."
        Then I wait for element with xpath "//*[contains(text(), 'Title Of The Quiz')]" to be present
        Then I wait for element with xpath "//*[contains(text(), 'Title Of The Quiz')]/../../input" to be present
        Then I type "Anatoliy Test Automation Quiz" into element with xpath "//*[contains(text(), 'Title Of The Quiz')]/../../input"
        Then I add Quiz <NumberOfQuestions> questions
        Then I click on element with xpath "//*[contains(text(), 'Save')]/.."
        Then I wait for element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../.." to be present
        Then I click on element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../.."
        Then I wait for element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../../../div/div/div/div/button[1]" to be present
        Then I wait for 3 sec
        Then I scroll to the element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../../../div/div/div/div/button[1]" with offset 5
        Then I wait for 3 sec
        Then I click on element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../../../div/div/div/div/button[1]"
        Then I wait for 1 sec
        Then I take screenshot
        Then I click on element with xpath "//*[text()='Close']//.."
        Then I wait for 1 sec
        Then I click on element with xpath "//*[contains(text(), 'Anatoliy Test Automation Quiz')]/../../../div/div/div/div/button[2]"
        Then I wait for 1 sec
        Then I click on element with xpath "//*[text()='Confirmation']/..//*[text()='Delete']"
        Then I wait for 3 sec
        Examples:
            |FirstName|LastName               |Email                       |GroupCode|Password |ConfirmPassword |AdminEmail       |AdminPassword|NumberOfQuestions  |
            |Anatoliy |KolesnikAutoTestTeacher|qa1@test.com                |052623   |12345Abc |a052623         |teacher@gmail.com|12345Abc     |1                  |
            |Anatoliy |KolesnikAutoTestTeacher|qa1@test.com                |052623   |12345Abc  |a052623        |teacher@gmail.com|12345Abc     |50                 |
            |Anatoliy |KolesnikAutoTestTeacher|qa1@test.com                |052623   |12345Abc  |a052623        |teacher@gmail.com|12345Abc     |51                 |

