package definitions;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java8.En;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.Helper;
import java.io.IOException;
import java.sql.SQLException;

public class Kiian_StepDefs implements En {
    @And("Kiian I move question slider {int} step to the {string}")
    public void iMoveSliderStepToThe(int steps, String direction) {
        WebElement slider = getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//mat-slider"));
        for (int i = 0; i < steps; i++) {
            if (direction.equals("left")) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
            if (direction.equals("right")) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
        }
    }

    @Then("Kiian I wait for element with xpath {string} to be displayed")
    public void iWaitForElementWithXpathToBeDisplayed(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
    }

    @Then("Kiian the entered data into elements with xpath {string} and {string} should match")
    public void kiianTheEnteredDataIntoElementsWithXpathAndShouldMatch(String xpath1, String xpath2) {
        var actualText1 = getDriver().findElement(By.xpath(xpath1)).getAttribute("value");
        var actualText2 = getDriver().findElement(By.xpath(xpath2)).getAttribute("value");
        assertThat(actualText1).isEqualTo(actualText2);

    }

    @Then("Kiian the entered data into elements with xpath {string} and {string} should not match")
    public void kiianTheEnteredDataIntoElementsWithXpathAndShouldNotMatch(String xpath1, String xpath2) {
        var actualText1 = getDriver().findElement(By.xpath(xpath1)).getAttribute("value");
        var actualText2 = getDriver().findElement(By.xpath(xpath2)).getAttribute("value");
        assertThat(actualText1).isNotEqualTo(actualText2);
    }
}