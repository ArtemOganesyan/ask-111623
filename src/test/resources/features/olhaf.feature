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