@AK_ask_stage_portnov
Feature: AK_ask_stage_portnov

    @AK_RegistrationGroupCode
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
