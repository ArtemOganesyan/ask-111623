package definitions;

import cucumber.api.java.en.Then;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

//public class MandrykStepDefs implements En {
//
//    @Then("I confirm user account with email {string}")
//    public void iConfirmUserAccountWithEmail(String email) throws SQLException, IOException {
//        String activationString = Helper.getAccessToken(email);
//        String[] str = activationString.split(";");
//        int userId = Integer.parseInt(str[0]);
//        String activationCode = str[1];
//        Helper.activateUser(userId, activationCode);
//    }
//}
