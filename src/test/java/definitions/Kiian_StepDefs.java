package definitions;
import cucumber.api.java.en.Then;
import cucumber.api.java8.En;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import static support.TestContext.getDriver;
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

    @Then("Kiian I confirm email address {string}")
    public void kiianIConfirmEmailAddress(String email) throws SQLException, IOException {
        String activationString = Helper.getAccessToken(email);
        String[] str = activationString.split(";");
        int userId = Integer.parseInt(str[0]);
        String activationCode = str[1];
        Helper.activateUser(userId, activationCode);
    }
}