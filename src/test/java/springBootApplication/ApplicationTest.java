package springBootApplication;


import static com.jayway.restassured.RestAssured.get;
import static org.hamcrest.core.IsEqual.equalTo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
@WebAppConfiguration
@IntegrationTest
public class ApplicationTest {

    @Test
    public void applicationIsUpAndRunning() {
        // get spring-boot-actuator endpoint
        get("/health")
                .then().assertThat().statusCode(200)
                .and()
                .assertThat().body("status",  equalTo("UP"));
    }
}
