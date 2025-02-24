/**
 **  14. Ordenamiento de un Arreglo (Algoritmos y Bucles): Escribe un programa que reciba un arreglo
 **  de numeros enteros y los ordene en orden ascendente utilizando el algoritmo de burbuja (Bubble ´
 **  Sort).
 **/

import 'dart:io';

void order(List<int> arr) {
  int temp;
  for (int i = 0; i < arr.length; i++) {
	for (int j = 0; j < arr.length - 1; j++) {
	  if (arr[j] > arr[j + 1]) {
		temp = arr[j];
		arr[j] = arr[j + 1];
		arr[j + 1] = temp;
	  }
	}
  }
}

void main() {
  List<int> arr = [];
  String? num;
  int n;
  
  print("Introduce el tamaño del arreglo: ");
  num = stdin.readLineSync();
  if (num == null) {
	print("No se introdujo un numero");
	return;
  }
  n = int.parse(num);
  
  for (int i = 0; i < n; i++) {
	print("Introduce el numero ${i + 1}: ");
	num = stdin.readLineSync();
	if (num == null) {
	  print("No se introdujo un numero");
	  return;
	}
	arr.add(int.parse(num));
  }
  
  order(arr);
  
  print("Arreglo ordenado:");
  for (int i = 0; i < arr.length; i++) {
	print(arr[i]);
  }
}
