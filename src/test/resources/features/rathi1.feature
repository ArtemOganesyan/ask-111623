@rathi1_feature
Feature: Smoke steps

  @rathi_test-scenario-2
  Scenario: Verify that the student settings Full Name field accepts only alphanumeric characters and special characters
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type "Rathiyuvan" into element with xpath "//input[@id='mat-input-2']"
    And I click on element with xpath "//div[@class='cdk-overlay-container']//button[2]"
    Then I wait for 3 sec

  @ra-test-scenario-1
  Scenario: Test scenario for xpath validations1
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "fba6e7657a9e74@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi321" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec


  @ra-test-scenario-3
  Scenario: [S]Ensure that the Full Name field is mandatory and cannot be left empty.
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type " " into element with xpath "//input[@id='mat-input-2']"
#    Then element with xpath "//mat-error[@id='mat-error-25']/../../../../.." should be present
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I wait for 3 sec

  @ra-test-scenario-4
  Scenario: [S]Validate the full name filed in Max 256 characters including 1 space between two words
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type "cefr326eg7eek6wy2csxu87ilfl10lz1i1s6dgvtfmucatmiv15luzoif0dsjuon6tv6o7pz9uxredfqa9tcvx6bbyi4p04286j20ctinqez6mhkp0fu2sueptqiwnlmo60y3vs4xsti2pkm7qkyic61axetoazj3dpa9fhnp2gu9n7z9q15i59sbfqe44q0xm83fg6odpa3lt1y7oz6veb4047kwkitusma9q24s04rh fkdavhzw6psah3jpmo4cmmjlap0eq28diqlrzd2ozaygdza7lh7cosdnmazar0gvqfa3egdlmu8wd6b8qcgpnfj4rkad1n1j1z2qf2qp0izaq48jmzg4iqoqrpor8srrt90a6edpl9zcemeg68b2lhj9trztxzhp4bin1ovm7qvl0qk53uiewwsqivmgn2fvwwpa10k9jcg07vqns0yptnyig92vbolerlnjf5qpk0nh " into element with xpath "//input[@id='mat-input-2']"
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I wait for 3 sec


  @ra-test-scenario-5
  Scenario: [S]Validate the length constraints of the Full Name field , Min 2 characters plus 1 space between two words.
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type "r r" into element with xpath "//input[@id='mat-input-2']"
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I wait for 3 sec

  @ra-test-scenario-6
  Scenario: [S]Validate the Trailing and leading spaces are not allowed
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type "Rathi 2   " into element with xpath "//input[@id='mat-input-2']"
    And I take screenshot
    Then I wait for 2 sec
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I wait for 3 sec
    And I take screenshot
    Then I wait for 2 sec
    Then I type "    Rathi 2" into element with xpath "//input[@id='mat-input-2']"
    And I take screenshot
    Then I wait for 2 sec
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I wait for 3 sec
    And I take screenshot
    Then I wait for 2 sec

  @ra-test-scenario-7
  Scenario:[S]Validate the white spaces are not allowed in full name field.
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "540f71657a9cfe@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')] "
    Then I click on element with xpath "//button[1]"
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be present
    Then I clear element with xpath "//input[@id='mat-input-2']"
    Then I type "R a t h i  2" into element with xpath "//input[@id='mat-input-2']"
    Then element with xpath " //body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]" should be present
    Then element with xpath "/html/body/div[2]/div[2]/div/mat-dialog-container/ac-modal-adjust-user/form/div[2]/button[2]" should be disabled
    Then I wait for 3 sec
    And I take screenshot
    Then I wait for 2 sec

  @ra-test-scenario-8
  Scenario: Test scenario for xpath validations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "fba6e7657a9e74@crankymonkey.info" into element with xpath "//*[@formcontrolname='email']"
    Then I type "rathi321" into element with xpath "//*[@formcontrolname='password']"
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

  @ra-registration
  Scenario: Registration tests
    Given I open url "http://ask-stage.portnov.com/#/registration"
#    Then I click on element with xpath "//button[@class='mat-button mat-primary']"
    Then I type "Nivedha" into element with xpath "//input[@placeholder='First Name']"
    Then I type "Yuvan" into element with xpath "//input[@placeholder='Last Name']"
    Then I type "shiv.rathibala1@gmail.com" into element with xpath "//input[@placeholder='Email']"
    Then I type "AA1234" into element with xpath "//input[@placeholder='Group Code']"
    Then I type "A1234567" into element with xpath "//input[@placeholder='Password']"
    Then I type "A1234567" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
#    Then I confirm user account with email "shiv.rathibala1@gmail.com"
    Then I wait for 3 sec