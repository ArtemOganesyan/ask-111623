@pikuza-E2E-test
  Feature: Pikuza E2E Tests

    @pikuza-e2e-student-change-password
    Scenario Outline: E2E Pikuza Student change password
      Given I open url "http://ask-stage.portnov.com"
      Then I type "o.pikuza88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "<oldPassword>" into element with xpath "//*[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//h3[contains(text(),'Pikuza (API)')]" to be present
      And I click on element with xpath "//h5[text()='Settings']"
      And I click on element with xpath "//button[span='Change Your Password']"
      Then I wait for element with xpath "//h1[@class='mat-dialog-title' and contains(text(), 'Changing Password')]" to be present
      And I type "<oldPassword>" into element with xpath "//input[@formcontrolname='password' and @matinput and @placeholder='Password' ]"
      And I type "<newPassword>" into element with xpath "//input[@formcontrolname='newPassword']"
      And I type "<newPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='button' and contains(span[@class='mat-button-wrapper'], 'Change')]"
      And I click on element with xpath "//h5[text()='Log Out']"
      And I click on element with xpath "//button[@type='button' and contains(span[@class='mat-button-wrapper'], 'Log Out')]"
      Then I wait for element with xpath "//h5[contains(text(), 'Portnov')]" to be present
      Then I type "o.pikuza88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "<newPassword>" into element with xpath "//*[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//h3[contains(text(),'Pikuza (API)')]" to be present
      And I click on element with xpath "//h5[text()='Settings']"
      And I click on element with xpath "//button[span='Change Your Password']  "
      And I type "<newPassword>" into element with xpath "//input[@formcontrolname='password' and @matinput and @placeholder='Password' ]"
      And I type "<oldPassword>" into element with xpath "//input[@formcontrolname='newPassword']"
      And I type "<oldPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='button' and contains(span[@class='mat-button-wrapper'], 'Change')]"
      And I click on element with xpath "//h5[text()='Log Out']"
      And I click on element with xpath "//button[@type='button' and contains(span[@class='mat-button-wrapper'], 'Log Out')]"

      Examples:
        | oldPassword  | newPassword  |
        | Abc234555    | 234555       |
