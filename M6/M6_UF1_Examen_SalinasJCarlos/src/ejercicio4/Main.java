package ejercicio4;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Scanner;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class Main {
	static SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
	static HashMap<Integer, Config> config = new HashMap<Integer, Config>();

	public static void main(String[] args) throws FileNotFoundException {

		Scanner lector = new Scanner(new File("examConfig.conf"));

		lector.nextLine();
		String[] version = lector.nextLine().split("=");
		String[] lang = lector.nextLine().split("=");
		Date date = parseFecha(lector.nextLine().split("="));
		int questions = sacarQuestions(lector.nextLine().split("="));
		ArrayList<String> students = sacarAlumnos(lector.nextLine().split("="));

		lector.close();

		config.put(1, new Config(version[1], lang[1], date, questions, students));

		for (Integer key : config.keySet()) {
			System.out.println(
					config.get(key).getVersion() + "\n" + config.get(key).getLang() + "\n" + config.get(key).getFecha()
							+ "\n" + config.get(key).getQuestions() + "\n" + config.get(key).getStudents());
		}

		crearFicheroXML();
	}

	private static void crearFicheroXML() {
		try {
			File archivoXML = new File("examConfig.xml");// Ruta fichero .xml

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.newDocument();

			Element raiz = doc.createElement("Configurations");
			doc.appendChild(raiz);// Creacion del elemento raiz

			for (Integer key : config.keySet()) {
				Element version = doc.createElement("app_Version");
				version.appendChild(doc.createTextNode(config.get(key).getVersion()));
				raiz.appendChild(version);
				Element lang = doc.createElement("language");
				lang.appendChild(doc.createTextNode("" + config.get(key).getLang()));
				raiz.appendChild(lang);
				Element date = doc.createElement("date");
				date.appendChild(doc.createTextNode("" + config.get(key).getFecha()));
				raiz.appendChild(date);
				Element quest = doc.createElement("num_of_questions");
				quest.appendChild(doc.createTextNode("" + config.get(key).getQuestions()));
				raiz.appendChild(quest);
				Element studen = doc.createElement("students_names");
				studen.appendChild(doc.createTextNode("" + config.get(key).getStudents()));
				raiz.appendChild(studen);
			}

			TransformerFactory tf = TransformerFactory.newInstance();
			Transformer t = tf.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult sResult = new StreamResult(archivoXML);

			t.transform(source, sResult);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static ArrayList<String> sacarAlumnos(String[] split) {
		ArrayList<String> nombreAlumnos = new ArrayList<String>();
		String[] alumnos = split[1].split(",");
		for (int i = 0; i < alumnos.length; i++) {
			nombreAlumnos.add(alumnos[i]);
		}
		return nombreAlumnos;
	}

	private static int sacarQuestions(String[] split) {
		return Integer.parseInt(split[1]);
	}

	public static Date parseFecha(String[] strings) {
		Date fechaDate = null;
		try {
			fechaDate = formato.parse(strings[1]);
			System.out.println(fechaDate);
		} catch (ParseException ex) {
			System.out.println(ex);
		}
		return fechaDate;
	}

}

class Config {

	String version;
	String lang;
	Date fecha;
	int questions;
	ArrayList<String> students;

	public Config(String version, String lang, Date fecha, int questions, ArrayList<String> students) {
		super();
		this.version = version;
		this.lang = lang;
		this.fecha = fecha;
		this.questions = questions;
		this.students = students;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public int getQuestions() {
		return questions;
	}

	public void setQuestions(int questions) {
		this.questions = questions;
	}

	public ArrayList<String> getStudents() {
		return students;
	}

	public void setStudents(ArrayList<String> students) {
		this.students = students;
	}

}
