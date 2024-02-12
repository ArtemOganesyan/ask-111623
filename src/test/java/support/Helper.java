package support;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.*;
public class Helper {
    static final String DB_URL = "jdbc:mysql://44.205.92.189:3307/application?autoReconnect=true&useSSL=false";
    static final String USER = "testuser";
    static final String PASS = "password";

    public static String getAccessToken(String userEmail) throws SQLException {
        String result = "No data";
        Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
        try (PreparedStatement pstmt = con.prepareStatement("SELECT id, activationCode FROM users WHERE email = ?");) {
            pstmt.setString(1, userEmail);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getString("id") + ";" + rs.getString("activationCode");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void activateUser(int userId, String activationCode) throws IOException {
        URL url = new URL("http://ask-stage.portnov.com/api/v1/activate/" + userId + "/" + activationCode);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("User-Agent", "USER_AGENT");
        int responseCode = con.getResponseCode();
        System.out.println("Activation request response code: " + responseCode);
        if (responseCode == HttpURLConnection.HTTP_OK) {
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            System.out.println(response);
        } else {
            System.out.println("Error occurred while trying to send get request");
        }
    }

    public static boolean getUserPresenceInDB(String email) throws SQLException {
        Boolean result = false;
        Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
        String sql = "SELECT id FROM users WHERE email = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                var dbResult = rs.getString("id");
                if (dbResult != null) return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void deleteUserByEmailfromDB(String email) throws IOException, SQLException {
        // 1. get user id
        var userId = getUserIdFromDB(email);

        // 2. get teacher user access token
        var accessToken = getTeacherToken();

        // 3. delete student user by id with token
        // deleteUserWithAPI(userId, accessToken);
    }


    private static Integer getUserIdFromDB(String email) throws SQLException {
        Integer result = 0;
        Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
        try (PreparedStatement pstmt = con.prepareStatement("SELECT id FROM users WHERE email = ?");) {
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


    private static String getTeacherToken() throws IOException {
        // 1. send a POST request to http://ask-stage.portnov.com/api/v1/sign-in
        // with body:
        // {
        //  "email": "Teacher1_369@fugmi.com",
        //  "password": "123Qwerty"
        // }
        // and take token from response body in the property "token"
        URL url = new URL("http://ask-stage.portnov.com/api/v1/sign-in");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("User-Agent", "USER_AGENT");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setDoOutput(true);
        String jsonInputString = "{\"email\": \"Teacher1_369@fugmi.com\",\"password\": \"123Qwerty\"}";

        try (OutputStream os = con.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        } catch (Exception e) {
            e.printStackTrace();
        }

        StringBuilder response = new StringBuilder();
        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), "utf-8"))) {

            String responseLine = null;
            if ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
                System.out.println(response.toString());
            } else {
                System.out.println("Error occurred while trying to send get request");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        JsonObject jsonObject = JsonParser.parseString(response.toString()).getAsJsonObject();
        String token = jsonObject.get("token").getAsString();

        return token;
    }

    /*
    private static void deleteUserWithAPI(Integer userId, String accessToken) throws IOException {
        URL url = new URL("http://ask-stage.portnov.com/api/v1/users/" + userId);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("DELETE");
        con.setRequestProperty("User-Agent", "USER_AGENT");
        int responseCode = con.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            System.out.println(response);
        } else {
            System.out.println("Error occurred while trying to send delete request");
        }
    }
    */
}

