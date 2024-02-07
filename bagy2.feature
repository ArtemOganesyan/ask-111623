@bagygroupcode
  Feature: bagygroupcode
    Background: login as teacher
      Given I open url "http://ask-stage.portnov.com"
      Then I type "Teacher79@enoiv.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "Roseb1" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"

 @quizassignedtoagroupcode