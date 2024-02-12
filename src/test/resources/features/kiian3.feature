@kiianDeleteUsers
  Feature:kiiandeleteUser

    @kiianDeleteCreatedUsers
      Scenario Outline: Kiian delete created Users
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
        #    Then Kiian I wait for element with xpath "//h4[contains(text(), '<FirstName> <LastName>')]" to be displayed
        Then I click on element with xpath "//h4[contains(text(),'<FirstName> <LastName>')]/.."
        Then I wait for 2 sec
        Then I click on element with xpath "//mat-icon[@role='img'][text()='settings']/../../../button"
        Then Kiian I wait for element with xpath "//mat-icon[text()='delete']/.." to be displayed
        Then I wait for 3 sec
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
        #      | Bills      | West     |
        | Billq      | West     |
        #      | Bill       | West     |
        | Billu      | West     |
        | Billd      | West     |
        | Billp      | West     |
        | Billb      | West     |