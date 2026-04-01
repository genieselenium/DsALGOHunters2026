package testrunner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

// Tell JUnit to run with Cucumber
@RunWith(Cucumber.class)

// Configure Cucumber
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "stepDefinitions",
        plugin = {"pretty", "html:target/cucumber-report.html"},
        monochrome = true
)
public class Runner {
    // No code is needed here. Cucumber will automatically run the scenarios.
}
