/**
 **  30. Sistema de Notas (Clases y Metodos): Crea una clase Estudiante con metodos para agregar
 **  notas y calcular la media de las notas. Luego, crea una instancia de la clase y agrega varias notas,
 **  mostrando la media final.
 **/

class Estudiante {
	String nombre;
	List<double> notas = [];
	
	Estudiante(this.nombre);
	
	void agregarNota(double nota) {
		notas.add(nota);
	}
	
	double calcularMedia() {
		double suma = 0;
		for (double nota in notas) {
			suma += nota;
		}
		return suma / notas.length;
	}
}

void main() {
	Estudiante estudiante = Estudiante("Juan");
	
	estudiante.agregarNota(7.5);
	estudiante.agregarNota(8.0);
	estudiante.agregarNota(6.5);
	estudiante.agregarNota(9.0);
	
	print("La media de las notas de ${estudiante.nombre} es: ${estudiante.calcularMedia()}");
}
