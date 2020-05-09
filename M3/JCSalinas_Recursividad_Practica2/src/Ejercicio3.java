import java.util.Scanner;

public class Ejercicio3 {
	
	public static void main(String[] args) {
		Scanner lector=new Scanner(System.in);
		int num;
		System.out.print("Introduce un n�mero para invertir: ");
		num = lector.nextInt();
		lector.close();
		int numCifras = String.valueOf(num).length();
		System.out.printf("%nEl n�mero %d invertido es el %d", num, invertirNumero(num, numCifras - 1));
	}

	private static int invertirNumero(int num, int numDigits) {
		if (num < 10) {
			return num;
		} else {
			return num % 10 * (int) Math.pow(10, numDigits) + invertirNumero(num / 10, numDigits - 1);
		}
	}

}
