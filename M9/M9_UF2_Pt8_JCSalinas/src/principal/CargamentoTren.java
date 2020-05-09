package principal;

public class CargamentoTren implements Runnable {

	public void run() {
		while (true) {
			try {
				Thread.sleep(Main.tren.getVelocidad());// Tiempo que tarda el tren para volver
				
				synchronized (Main.almacenHerramientas) {
					if (Main.almacenHerramientas.getUnidades() < Main.tren.getCapacidadTren()) {
						Main.almacenHerramientas.wait();// Si no hay las herramientas suficientes(5) el tren se queda esperando
					} else {
						Main.almacenHerramientas.restarUnidad();// Si hay 5 o m�s coge las herramientas y se las lleva
						Main.almacenHerramientas.notify();// Se reanuda la producci�n de herramientas por si se hab�a parado

						System.out.println("El tren a cogido el cargamento.");
					}
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
