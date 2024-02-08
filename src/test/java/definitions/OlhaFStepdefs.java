package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static support.TestContext.getDriver;

public class OlhaFStepdefs {

    @Then("^I click on last element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        List<WebElement> webElements = getDriver().findElements(By.xpath(xpath));
        webElements.get(webElements.size()-1).click();
    }
}
