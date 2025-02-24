/**  1. Calculo de Factorial con Funciones Recursivas: ´ Escribe una funcion recursiva en Dart que calcule ´
 **  el factorial de un numero. Luego, escribe un programa principal que pida al usuario un n ´ umero y ´
 **  muestre su factorial.
 **/

 import 'dart:io';

int factorial(int n) {
 	if (n == 0) {
 		return 1;
 	} else {
 		return n * factorial(n - 1);
 	}
 }

 void main() {
 	int n;
	String? num;
 	print("Introduce un numero: ");
	num = stdin.readLineSync();
	if (num == null) {
		print("No se introdujo un numero");
		return;
	}

 	n = int.parse(num);
 	print("El factorial de $n es: ${factorial(n)}");
 }


