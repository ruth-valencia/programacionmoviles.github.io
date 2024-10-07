import 'dart:io';
import 'dart:math';

void main() {
  print('Introduce un número entero:');
  String? input = stdin.readLineSync();

  if (input == null || !RegExp(r'^\d+$').hasMatch(input)) {
    print('Por favor, introduce un número entero válido.');
    return;
  }

  int numero = int.parse(input);
  int n = input.length; // Número de dígitos
  int suma = 0;

  // Bucle for para separar y elevar cada dígito
  for (int i = 0; i < n; i++) {
    int digito = int.parse(input[i]);
    suma += pow(digito, n).toInt(); // Elevar el dígito a la n-ésima potencia y sumar
  }

  // Verificar si el número es un número de Armstrong
  if (suma == numero) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}
