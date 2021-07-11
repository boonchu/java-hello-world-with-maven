package info.maigo.lab.hello;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.json.*;
import com.mashape.unirest.http.*;

// 
// https://www.baeldung.com/java-system-out-println-vs-loggers
//
public class App {

  public static void main(String[] args) throws Exception {
    for (String name: args) {
      // System.out.println("name: " + name);
      logger.info("name: " + name);
      String jsonString = new App(name).getUserInfoJSON();
      JSONObject json = new JSONObject(jsonString);
      // System.out.println(json.toString(2));
      logger.info(json.toString(2));
    }
  }

  private final String name;

  public App(String name) {
    this.name = name;
  }

  public String getUserInfoURL() {
    // Users | GitHub Developer Guide: https://developer.github.com/v3/users/
    return "https://api.github.com/users/" + name;
  }

  public String getUserInfoJSON() throws Exception {
    String url = getUserInfoURL();
    HttpResponse<JsonNode> res = Unirest.get(url).asJson();
    return res.getBody().toString();
  }
}

