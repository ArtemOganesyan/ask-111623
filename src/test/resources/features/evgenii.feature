@Vlasovfeature_1
  Feature: Vlasov Login
    @Vlasov_login_valid
    Scenario: Login with valid credentials
      Given I open url "http://ask-stage.portnov.com"
      Then I type "mariska118@donghuudoi.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for 3 sec
      Then element with xpath "//*[contains(text(),'Vlasov Teacher-2')]" should be displayed

      @Vlasov_login_invalid
      Scenario: Login with invalid credentials
        Given I open url "http://ask-stage.portnov.com"
        Then I type "mariska118@donghuudoi.com" into element with xpath "//*[@formcontrolname='email']"
        Then I type "12345Ab" into element with xpath "//*[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        Then I wait for 2 sec
        Then element with xpath "//div[contains(text(),'Authentication failed. User not found or password ')]" should be displayed

        @Vlasov_login_empty
        Scenario: Login with empty fields
          Given I open url "http://ask-stage.portnov.com"
          And I click on element with xpath "//button[@type='submit']"
          Then I wait for 3 sec
          Then element with xpath "//*[@id='mat-error-0']" should be displayed

