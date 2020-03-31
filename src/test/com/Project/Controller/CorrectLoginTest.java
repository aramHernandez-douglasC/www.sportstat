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
public class CorrectLoginTest {
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
  public void correctLoginTest() {
    driver.get("http://localhost:8080/DisneyPrincessProjectIteration3/LoginPage.jsp");
    driver.manage().window().setSize(new Dimension(654, 767));
    driver.findElement(By.id("user")).click();
    driver.findElement(By.id("user")).sendKeys("tjermey0");
    driver.findElement(By.id("pass")).sendKeys("iWeyVltNp");
    driver.findElement(By.id("sub")).click();
    driver.findElement(By.linkText("Hello tjermey0")).click();
    driver.findElement(By.cssSelector(".accordion:nth-child(4)")).click();
    driver.findElement(By.cssSelector(".active")).click();
    driver.findElement(By.cssSelector(".accordion:nth-child(6)")).click();
    driver.findElement(By.cssSelector(".active")).click();
    driver.findElement(By.cssSelector(".accordion:nth-child(8)")).click();
    driver.findElement(By.cssSelector(".active")).click();
    driver.findElement(By.cssSelector(".accordion:nth-child(10)")).click();
    driver.findElement(By.cssSelector(".active")).click();
    driver.findElement(By.cssSelector(".accordion:nth-child(14)")).click();
    driver.findElement(By.linkText("Log Out")).click();
  }
}
