package Practica2;

import java.util.Scanner;

public class Ejercicio3 {

	public static void main(String[] args) {
		Ejercicio3 programa = new Ejercicio3();
		programa.inici();
	}

	public void inici() {
		System.out.print("Escriu el valor a: ");
		int a = llegirEnterTeclat();
		System.out.print("Escriu el valor b: ");
		int b = llegirEnterTeclat();
		// Recordar que un m�tode s'avalua com una expressi�
		System.out.println("L'MCD de " + a + " i " + b + " �s " + mcd(a, b));
	}

	public int llegirEnterTeclat() {
		Scanner lector = new Scanner(System.in);
		int enterLlegit = 0;
		boolean llegit = false;
		while (!llegit) {
			llegit = lector.hasNextInt();
			if (llegit) {
				enterLlegit = lector.nextInt();
			} else {
				System.out.println("Aix� no �s un enter.");
				lector.next();
			}
		}
		lector.nextLine();
		return enterLlegit;
	}

	public int mcd(int a, int b) {
		if (b == 0) {
			return a;
		} else {
			return mcd(b, a % b);
		}
	}

}
