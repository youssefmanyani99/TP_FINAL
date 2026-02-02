import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import java.io.FileInputStream;
import java.time.Duration;
import java.util.Properties;

public class SupprimerFichier {
    WebDriver driver;
    Properties locators = new Properties();
    String url = "https://35.188.55.52/share/page";

    @BeforeClass
    public void setup() throws Exception {
        // Charger le fichier de locators
        FileInputStream input = new FileInputStream("src/test/java/Locators.properties");
        locators.load(input);

        // Initialiser Chrome
        ChromeOptions options = new ChromeOptions();
        driver = new ChromeDriver(options);

        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
    }

    @Test
    public void loginAndDeleteFile() throws InterruptedException {
        // LOGIN
        driver.get(url);
        Thread.sleep(2000);

        driver.findElement(By.xpath(locators.getProperty("input_Username"))).sendKeys("adminEquipe3");
        driver.findElement(By.xpath(locators.getProperty("input_Password"))).sendKeys("123456789");
        driver.findElement(By.xpath(locators.getProperty("btn_Submit"))).click();
        Thread.sleep(3000);

        driver.findElement(By.xpath(locators.getProperty("link_FichiersPartages"))).click();
        Thread.sleep(2000);
        driver.findElement(By.xpath(locators.getProperty("folder_ATIKA4"))).click();
        Thread.sleep(2000);

        // SUPPRIMER UN FICHIER
        String fileName = "Dashboard_Exercices.xlsx"; // nom du fichier à supprimer
        driver.findElement(By.xpath("//a[contains(text(),'" + fileName + "')]")).click();
        Thread.sleep(1000);

        // Cliquer sur le bouton "Plus"
        driver.findElement(By.xpath(locators.getProperty("file_MoreButton"))).click();
        Thread.sleep(1000);

         // Cliquer sur "Supprimer un document"
        driver.findElement(By.xpath(locators.getProperty("file_DeleteOption"))).click();
        Thread.sleep(1000);

        // Confirmer la suppression
        driver.findElement(By.xpath(locators.getProperty("file_ConfirmDelete"))).click();
        Thread.sleep(2000);

            }

    @AfterClass
    public void logout() throws InterruptedException {
        driver.findElement(By.xpath(locators.getProperty("tcheck_user"))).click();
        Thread.sleep(1000);
        driver.findElement(By.xpath(locators.getProperty("link_Logout"))).click();
        Thread.sleep(2000);
        driver.quit();
        }
}
