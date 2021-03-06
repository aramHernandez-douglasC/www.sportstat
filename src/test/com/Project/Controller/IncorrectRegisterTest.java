package test.com.Project.Controller;
// Generated by Selenium IDE
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
public class IncorrectRegisterTest {
  private WebDriver driver;
  JavascriptExecutor js;
  @Before
  public void setUp() {
	System.setProperty("webdriver.chrome.driver", "C:\\temp\\chromedriver.exe");
    driver = new ChromeDriver();
    js = (JavascriptExecutor) driver;
  }
  @After
  public void tearDown() {
    driver.quit();
  }
  @Test
  public void incorrectRegister() {
    driver.get("http://localhost:8080/DisneyPrincessProjectIteration3/Register.jsp");
    driver.manage().window().setSize(new Dimension(654, 767));
    driver.findElement(By.cssSelector("td:nth-child(1) > input")).click();
    driver.findElement(By.linkText("Sign in")).click();
    driver.findElement(By.id("sub")).click();
  }
}
