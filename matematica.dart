/**
 **  11. Clases con Metodos Estáticos: Crea una clase Matematica con metodos estáticos para realizar
 **  operaciones como suma, resta, multiplicación y división. Implementa un programa principal que
 **  permita al usuario hacer operaciones matematicas sin tener que crear una instancia de la clase
 **/

import 'dart:io';

class Matematica {
	static int suma(int a, int b) {
		return a + b;
	}
	
	static int resta(int a, int b) {
		return a - b;
	}
	
	static int multiplicacion(int a, int b) {
		return a * b;
	}
	
	static double division(int a, int b) {
		return a / b;
	}
}

void main() {
	int a, b;
	String? num;
	
	print("Introduce el primer numero: ");
	num = stdin.readLineSync();
	if (num == null) {
		print("No se introdujo un numero");
		return;
	}
	a = int.parse(num);
	
	print("Introduce el segundo numero: ");
	num = stdin.readLineSync();
	if (num == null) {
		print("No se introdujo un numero");
		return;
	}
	b = int.parse(num);
	
	print("Suma: ${Matematica.suma(a, b)}");
	print("Resta: ${Matematica.resta(a, b)}");
	print("Multiplicacion: ${Matematica.multiplicacion(a, b)}");
	print("Division: ${Matematica.division(a, b)}");
}
