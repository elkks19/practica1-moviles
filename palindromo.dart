/**
 **  21. Verificacion de un Palíndromo (Funciones y Bucles): Crea una funcion que verifique si una
 **  cadena de texto es un palíndromo (se lee igual hacia adelante y hacia atras).
 **/

import 'dart:io';

bool isPalindrome(String text) {
  int i = 0;
  int j = text.length - 1;
  
  while (i < j) {
	if (text[i] != text[j]) {
	  return false;
	}
	i++;
	j--;
  }
  
  return true;
}

void main() {
  String text;
  print("Introduce una cadena de texto: ");
  text = stdin.readLineSync()!;
  
  if (isPalindrome(text)) {
	print("La cadena de texto es un palíndromo");
  } else {
	print("La cadena de texto no es un palíndromo");
  }
}
