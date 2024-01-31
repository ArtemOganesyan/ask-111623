import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class VlasovDefs {

    @Given("^EV I open url \"([^\"]*)\"$")
    public void eviOpenUrl(String url) {
        getDriver().get(url);
    }
}
