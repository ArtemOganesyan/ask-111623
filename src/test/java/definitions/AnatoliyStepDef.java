package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static support.TestContext.getDriver;

public class AnatoliyStepDef {
    @Then("I add Quiz {int} questions")
    public void iAddQuizNumberOfQuestionsQuestions(int numberOfQuestions) {

        String xpath = "//*[contains(text(), 'add_circle')]/../.."; //BUTTON ADD
        int numberOfQuestion = 0;
        var waitingTimeSec = 0.1;

        while (numberOfQuestion<numberOfQuestions) {

            // Wait and press button "Add Question
            new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
            getDriver().findElement(By.xpath(xpath)).click();

            waitForSec(waitingTimeSec);
            webElementNumber("//*[contains(text(),'Textual')]/../..", numberOfQuestion).click();
            waitForSec(waitingTimeSec);
            webElementNumber("//*[contains(@placeholder,'Question')]", numberOfQuestion).sendKeys("Questions " + (numberOfQuestion+1));

            numberOfQuestion++;
        }
    }

    public WebElement webElementNumber (String xpath, int number){
        int i = 0;
        while (getDriver().findElements(By.xpath(xpath)).size() <= number) {
            if (i==50){
                break;
            }
            waitForSec(0.25);
            i++;
        }
        return getDriver().findElements(By.xpath(xpath)).get(number);
    }

    public void waitForSec(double sek){
        try {
            Thread.sleep((int)(sek * 1000));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}

