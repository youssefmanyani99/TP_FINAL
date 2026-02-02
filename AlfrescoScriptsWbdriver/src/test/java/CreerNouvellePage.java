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

public class CreerNouvellePage {
    WebDriver driver;
    Properties locators = new Properties();
    String url = "https://35.188.55.52/share/page";  // URL Alfresco

    @BeforeClass
    public void setup() throws Exception {
        // Charger le fichier Locators.properties
        FileInputStream input = new FileInputStream("src/test/java/Locators.properties");
        locators.load(input);

        // Configurer Chrome
        ChromeOptions options = new ChromeOptions();
        driver = new ChromeDriver(options);

        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
    }

    @Test
    public void CreerPageWiki() throws InterruptedException {
        //  LOGIN
        driver.get(url);
        Thread.sleep(2000);
        driver.findElement(By.xpath(locators.getProperty("input_Username"))).sendKeys("adminEquipe3");
        driver.findElement(By.xpath(locators.getProperty("input_Password"))).sendKeys("123456789");
        driver.findElement(By.xpath(locators.getProperty("btn_Submit"))).click();
        Thread.sleep(3000);

        //  Étapes pour créer une page Wiki
        String vMonSite = "AtikaTest2";
        String vTitreWiki = "Page Wiki Test";

        // Cliquer sur "Sites"
        driver.findElement(By.xpath(locators.getProperty("btn_Sites"))).click();
        Thread.sleep(1000);

        // Cliquer sur "Mes sites"
        driver.findElement(By.xpath(locators.getProperty("btn_MesSites"))).click();
        Thread.sleep(1000);

        // Sélectionner le site par nom
        String siteXpath = locators.getProperty("btn_mon_site1") + vMonSite + locators.getProperty("btn_mon_site2");
        driver.findElement(By.xpath(siteXpath)).click();
        Thread.sleep(2000);

        // Ouvrir Wiki
        driver.findElement(By.xpath(locators.getProperty("btn_Wiki"))).click();
        Thread.sleep(2000);

        // Nouvelle page Wiki
        driver.findElement(By.xpath(locators.getProperty("btn_nouvelle_page_Wiki"))).click();
        Thread.sleep(1000);

        // Saisir le titre
        driver.findElement(By.xpath(locators.getProperty("txt_Titre_page_Wiki"))).sendKeys(vTitreWiki);
        Thread.sleep(1000);

        // Enregistrer
        driver.findElement(By.xpath(locators.getProperty("btn_Enregistrer_page_Wiki"))).click();
        Thread.sleep(3000);

        System.out.println(" Page Wiki '" + vTitreWiki + "' créée avec succès !");
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

