package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class MeghaStepDef {

    @Then("I confirm user account with email {string}")
    public void iConfirmUserAccountWithEmail(String email) throws SQLException, IOException {
        String activationString = Helper.getAccessToken(email);
        String[] str = activationString.split(";");
        int userId = Integer.parseInt(str[0]);
        String activationCode = str[1];
        Helper.activateUser(userId, activationCode);
    }

    @And("I create {int} options")
    public void iCreateOptions(int numberOfOptions) {
        for (int i = 0; i < numberOfOptions; i++) {
            WebElement addOptionButton = getDriver().findElement(By.xpath("//button/span[contains(text(), 'Add Option')]"));
            addOptionButton.click();
            WebElement optionTitle = getDriver().findElement(By.xpath("(//textarea[@formcontrolname='option'])["+(i+3)+"]"));
            optionTitle.sendKeys("Option " + (i+3));
        }
    }

    @And("I choose {int} as correct option")
    public void iChooseAsCorrectOption(int correctOption) {
//        List<WebElement> optionsList = getDriver().findElements(By.xpath("//textarea[@formcontrolname='option']"));
//
//        for (WebElement option : optionsList) {
//            var x = option;
//        }
        String xpath = "(//textarea[@formcontrolname='option'])["+correctOption+"]/../../../../..//input[@type='checkbox']/..";
        WebElement we = getDriver().findElement(By.xpath(xpath));
        we.click();
    }
}
