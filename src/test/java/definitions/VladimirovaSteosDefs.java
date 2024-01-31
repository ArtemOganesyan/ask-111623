package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
//import support.Helper;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.concurrent.TimeUnit;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class VladimirovaSteosDefs {
    @Given("AV I navigate to {string} page")
    public void avINavigateToPage(String menuItem) throws InterruptedException {
        switch (menuItem){
            case "login":
                getDriver().get("http://ask-stage.portnov.com/");
                break;
            case "Assignments":
                WebElement iTAssign = getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]//ancestor::a"));
                iTAssign.click();
                break;
            case "Quizzes":
                WebElement iTQuiz = getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]//ancestor::a"));
                iTQuiz.click();
                break;
            case "Home":
                WebElement iSHome = getDriver().findElement(By.xpath("//h5[contains(text(),'Home')]//ancestor::a"));
                iSHome.click();
                break;
            case "My Assignments":
                WebElement iSAssign = getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]//ancestor::a"));
                iSAssign.click();
                break;
            case "My Grades":
                Thread.sleep(1 * 1000);
                WebElement iSGrades = getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]//ancestor::a"));
                iSGrades.click();
                break;
            case "Settings":
                WebElement iSSettings = getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]//ancestor::a"));
                iSSettings.click();
                break;
            default:
                fail("No such menu/navigational item");
        }
    }

    @When("AV I login into teacher account")
    public void avILoginIntoTeacherAccount() {
        WebElement login = getDriver().findElement(By.xpath("//input[@formcontrolname='email']"));
        WebElement passw = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        login.sendKeys("awillimanf@kenalintah.dev");
        passw.sendKeys("passw123");
        WebElement sbutton = getDriver().findElement(By.xpath("//button[@type='submit']"));
        sbutton.click();
    }

    @Then("AV I verify user name {string} and role {string}")
    public void avIVerifyUserNameAndRole(String nameText, String roleText) {
        new WebDriverWait(getDriver(), 15, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h3[contains(text(),'"+ nameText +"')]")));
        WebElement name = getDriver().findElement(By.xpath("//h3"));
        WebElement role = getDriver().findElement(By.xpath("//p[contains(text(),'"+ roleText +"')]"));
        assertThat(name.getText()).isEqualTo(nameText);
        assertThat(role.getText()).isEqualTo(roleText);
    }

    @And("AV I wait for element with xpath {string} to be visible")
    public void avIWaitForElementWithXpathToBeVisible(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
    }

    @And("AV I choose {string} question type for question {int}")
    public void avIChooseQuestionTypeForQuestion(String questType, int questNum) {
        switch (questType){
            case "textual":
                WebElement text = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ questNum +"')]//ancestor::mat-expansion-panel//child::div[contains(text(),'Textual')]"));
                text.click();
                break;
            case "single-choice":
                WebElement single = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ questNum +"')]//ancestor::mat-expansion-panel//child::div[contains(text(),'Single-Choice')]"));
                single.click();
                break;
            case "multiple-choice":
                WebElement multiple = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ questNum +"')]//ancestor::mat-expansion-panel//child::div[contains(text(),'Multiple-Choice')]"));
                multiple.click();
                break;
            default:
                fail("Wrong question type");
        }
    }

    @And("AV I enter question text {string} for question number {int}")
    public void avIEnterQuestionTextForQuestionNumber(String questText, int questNum) {
        WebElement textField = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ questNum +"')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='question']"));
        textField.sendKeys(questText);
    }

    @And("AV I select value {string} for Group Filter drop down")
    public void avISelectValueForGroupFilterDropDown(String grFilVal) {
        new WebDriverWait(getDriver(), 15, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'All')]//ancestor::div[@class='mat-select-trigger']")));
        WebElement grFil = getDriver().findElement(By.xpath("//span[contains(text(),'All')]//ancestor::div[@class='mat-select-trigger']"));
        grFil.click();
        new WebDriverWait(getDriver(), 15, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-option[@role='option']/span[contains(text(),'"+ grFilVal +"')]")));
        WebElement val = getDriver().findElement(By.xpath("//mat-option[@role='option']/span[contains(text(),'"+ grFilVal +"')]"));
        val.click();
    }

    @And("AV I select quiz {string} for Select Quiz to Assign drop down")
    public void avISelectQuizForSelectQuizToAssignDropDown(String quizName) {
        new WebDriverWait(getDriver(), 15, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'Select Quiz To Assign')]//ancestor::div[@class='mat-select-value']")));
        WebElement quizDD = getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]//ancestor::div[@class='mat-select-value']"));
        quizDD.click();
        new WebDriverWait(getDriver(), 15, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-option[@role='option']/span[contains(text(),'"+ quizName +"')]")));
        WebElement quizVal = getDriver().findElement(By.xpath("//mat-option[@role='option']/span[contains(text(),'"+ quizName +"')]"));
        quizVal.click();
    }

    @Then("AV assignment with quiz name {string} should be displayed")
    public void avAssignmentWithQuizNameShouldBeDisplayed(String qName) {
        LocalDate myDate = LocalDate.now();
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yy");
        String currDate = myDate.format(dateFormat);
        WebElement assignment = getDriver().findElement(By.xpath("//*[contains(text(),'" + currDate + "')]//ancestor::span//child::span[contains(text(),'" + qName + "')]"));
        assertThat(assignment.isDisplayed()).isTrue();
    }

    @And("AV I log out of teacher's account")
    public void avILogOutOfTeacherSAccount() {
        WebElement logOutButton = getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]//ancestor::div[@class='mat-list-item-content']"));
        logOutButton.click();
        WebElement logOutConBut = getDriver().findElement(By.xpath("//button[./span[contains(text(),'Log Out')]]"));
        logOutConBut.click();
    }

    @And("AV I login into Ava Stud student account")
    public void avILoginIntoAvaStudStudentAccount() {
        WebElement login = getDriver().findElement(By.xpath("//input[@formcontrolname='email']"));
        WebElement passw = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        login.sendKeys("avstud@vaievem.tk");
        passw.sendKeys("passw123");
        WebElement sbutton = getDriver().findElement(By.xpath("//button[@type='submit']"));
        sbutton.click();
    }

    @And("AV I enter text {string} for option number {int} in question number {int}")
    public void avIEnterTextForOptionNumberInQuestionNumber(String optText, int optNum, int questNum) {
        WebElement optTitle = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questNum + "')]//ancestor::mat-expansion-panel//child::textarea[@formcontrolname='option' and contains(@placeholder,'Option " + optNum + "')]"));
        optTitle.sendKeys(optText);
    }

    @And("AV I choose option number {int} as correct option for {string} question type for question number {int}")
    public void avIChooseOptionNumberAsCorrectOptionForQuestionTypeForQuestionNumber(int optNum, String questType, int questNum) {
        switch (questType){
            case "single-choice":
                WebElement corrSOpt = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questNum + "')]//ancestor::mat-expansion-panel//child::label[contains(text(),'Option " + optNum + "')]//ancestor::mat-radio-group//child::div[@class='mat-radio-container']"));
                corrSOpt.click();
                break;
            case "multiple-choice":
                WebElement corrMOpt = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questNum + "')]//ancestor::mat-expansion-panel//child::label[contains(text(),'Option " + optNum + "')]//ancestor::div[contains(@class,'option-row')]//child::div[contains(@class,'mat-checkbox-inner-container')]"));
                corrMOpt.click();
                break;
            default:
                fail("Wrong question type");
        }
    }

    @And("AV I add {int} options for question {int}")
    public void avIAddOptionsForQuestion(int optNum, int questNum) {
        for (int i = 0; i < optNum; i++){
            WebElement addOptionButton = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questNum + "')]//ancestor::mat-expansion-panel//child::button[./span[contains(text(),'Add Option')]]"));
            addOptionButton.click();
        }
    }

    @Then("AV assignment with quiz name {string} should have result {string}")
    public void avAssignmentWithQuizNameShouldHaveResult(String quizName, String res) {
        LocalDate myDate = LocalDate.now();
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yy");
        String currDate = myDate.format(dateFormat);
        WebElement quiz = getDriver().findElement(By.xpath("//td[contains(text(),'" + currDate + "')]//ancestor::tr//child::td[contains(text(),'" + quizName + "')]//ancestor::tr//child::td[@class='result']"));
        String actualText = quiz.getText();
        assertThat(actualText).containsIgnoringCase(res);
    }

    @Then("AV assignment with quiz name {string} should have score {string}")
    public void avAssignmentWithQuizNameShouldHaveScore(String quizName, String score) {
        LocalDate myDate = LocalDate.now();
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yy");
        String currDate = myDate.format(dateFormat);
        WebElement quiz = getDriver().findElement(By.xpath("//td[contains(text(),'" + currDate + "')]//ancestor::tr//child::td[contains(text(),'" + quizName + "')]//ancestor::tr//child::td[@class='ng-star-inserted']"));
        String actualText = quiz.getText();
        assertThat(actualText).containsIgnoringCase(score);
    }

    @And("AV I mark question number {int} as Show-Stopper question")
    public void avIMarkQuestionNumberAsShowStopperQuestion(int questNum) {
        WebElement check = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questNum + "')]//ancestor::mat-expansion-panel//child::span[contains(text(),'Show-Stopper')]//ancestor::label//child::div[@class='mat-checkbox-inner-container']"));
        check.click();
    }

    @And("AV I mark option {int} as my answer for question number {int}")
    public void avIMarkOptionAsMyAnswerForQuestionNumber(int optNum, int questNum) {
        WebElement corrOpt = getDriver().findElement(By.xpath("//h5[contains(text(),'Question " + questNum + "')]//ancestor::mat-card//child::div[contains(text(),'Option " + optNum + "')]//ancestor::mat-radio-button//child::div[@class='mat-radio-container']"));
        corrOpt.click();
    }

    @And("AV I click on Details button for assignment with quiz name  {string}")
    public void avIClickOnDetailsButtonForAssignmentWithQuizName(String quizName) {
        LocalDate myDate = LocalDate.now();
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yy");
        String currDate = myDate.format(dateFormat);
        WebElement bDetails = getDriver().findElement(By.xpath("//td[contains(text(),'" + currDate + "')]//ancestor::tr//child::td[contains(text(),'" + quizName + "')]//ancestor::tr//child::button"));
        bDetails.click();
    }

    @Then("AV Actual score points amount should be {string} than Passing score points amount")
    public void avActualScorePointsAmountShouldBeThanPassingScorePointsAmount(String compOp) {
        WebElement passP = getDriver().findElement(By.xpath("//td[contains(text(),'Passing points / percentage:')]//following-sibling::td"));
        WebElement actP = getDriver().findElement(By.xpath("//td[contains(text(),'Actual points / percentage:')]//following-sibling::td"));
        String passPS =  passP.getText();
        String actPS = actP.getText();
        String[] passPArr = passPS.split(" ", 0);
        String[] actPArr = actPS.split(" ", 0);
        int passScore = Integer.parseInt(passPArr[0]);
        int actScore = Integer.parseInt(actPArr[0]);

        switch (compOp){
            case "greater":
                assertThat(actScore).isGreaterThan(passScore);
                System.out.println(actScore + " > " + passScore);
                break;
            case "less":
                assertThat(actScore).isLessThan(passScore);
                System.out.println(actScore + " < " + passScore);
                break;
            case "equal":
                assertThat(actScore).isEqualTo(passScore);
                System.out.println(actScore + " = " + passScore);
                break;
            default:
                fail("Wrong comparison operator");
        }
    }

    @Then("AV Actual percentage amount should be {string} than Passing percentage points amount")
    public void avActualPercentageAmountShouldBeThanPassingPercentagePointsAmount(String compOp) {
        WebElement passP = getDriver().findElement(By.xpath("//td[contains(text(),'Passing points / percentage:')]//following-sibling::td"));
        WebElement actP = getDriver().findElement(By.xpath("//td[contains(text(),'Actual points / percentage:')]//following-sibling::td"));
        String passPS =  passP.getText();
        String actPS = actP.getText();
        String[] passPArr = passPS.split(" ", 0);
        String[] actPArr = actPS.split(" ", 0);
        int passPercent = Integer.parseInt(passPArr[4].replace("%", ""));
        int actPercent = Integer.parseInt(actPArr[4].replace("%", ""));

        switch (compOp){
            case "greater":
                assertThat(actPercent).isGreaterThan(passPercent);
                System.out.println(actPercent + " > " + passPercent);
                break;
            case "less":
                assertThat(actPercent).isLessThan(passPercent);
                System.out.println(actPercent + " < " + passPercent);
                break;
            case "equal":
                assertThat(actPercent).isEqualTo(passPercent);
                System.out.println(actPercent + " = " + passPercent);
                break;
            default:
                fail("Wrong comparison operator");
        }
    }
}
