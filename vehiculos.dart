/**
 **  7. Clases y Herencia en un Sistema de Vehículos: Crea una clase base Vehiculo con propiedades
 **  como marca y modelo. Luego, crea subclases como Coche, Camion y Motocicleta, cada una con
 **  propiedades y metodos específicos. Usa un método mostrarDatos para imprimir los datos de cada
 **  vehículo.
 **/

class Vehiculo {
	String marca;
	String modelo;
	
	Vehiculo(this.marca, this.modelo);
	
	void mostrarDatos() {
		print("Marca: $marca");
		print("Modelo: $modelo");
	}
}

class Coche extends Vehiculo {
	int puertas;
	
	Coche(String marca, String modelo, this.puertas) : super(marca, modelo);
	
	@override
	void mostrarDatos() {
		super.mostrarDatos();
		print("Puertas: $puertas");
	}
}

class Camion extends Vehiculo {
	double carga;
	
	Camion(String marca, String modelo, this.carga) : super(marca, modelo);
	
	@override
	void mostrarDatos() {
		super.mostrarDatos();
		print("Carga: $carga");
	}
}

class Motocicleta extends Vehiculo {
	int cilindrada;
	
	Motocicleta(String marca, String modelo, this.cilindrada) : super(marca, modelo);
	
	@override
	void mostrarDatos() {
		super.mostrarDatos();
		print("Cilindrada: $cilindrada");
	}
}

void main() {
	Coche coche = Coche("Ford", "Fiesta", 5);
	Camion camion = Camion("Mercedes", "Actros", 20000);
	Motocicleta moto = Motocicleta("Honda", "CBR", 1000);
	
	coche.mostrarDatos();
	print("");
	camion.mostrarDatos();
	print("");
	moto.mostrarDatos();
}
