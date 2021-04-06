import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
/**
* @author Ayoub BOULAHYA (boulahya.ayoub@gmail.com OR ayoub.boulahya@etu.univ-amu.fr)
*/
public class Noms_unites_enseignement {
    public static void main(String[] args) {
        try {
            File file = new File("../master.xml");
            File dir = file.getParentFile();
            File result = new File(dir, "Noms_unites_enseignement");
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document document = builder.parse(file);
            document.getDocumentElement().normalize();
            PrintStream printStream = new PrintStream(new FileOutputStream("Noms_unites_enseignement_out.txt"));
            System.setOut(printStream);
            System.out.println("Les noms des unités d'enseignement :");
            NodeList unites = document.getElementsByTagName("unite");
            int unitesLenght = unites.getLength();
            for (int i=0; i<unitesLenght; i++) {
                Node unite = unites.item(i);
                if (unite.getNodeType() == Node.ELEMENT_NODE) {
                    Element nomUnite =  (Element) ((Element) unite).getElementsByTagName("nom").item(0);
                    System.out.println("\t" + nomUnite.getTextContent());
                }
            }
        } catch (ParserConfigurationException ex) {
            Logger.getLogger(Noms_unites_enseignement.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SAXException ex) {
            Logger.getLogger(Noms_unites_enseignement.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Noms_unites_enseignement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}