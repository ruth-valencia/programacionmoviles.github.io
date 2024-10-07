import 'dart:io';

void main() {
  print('Introduce un número entero:');
  String? input = stdin.readLineSync();

  if (input == null || !RegExp(r'^[+-]?\d+$').hasMatch(input)) {
    print('Por favor, introduce un número entero válido.');
    return;
  }

  // Eliminar el signo negativo si existe
  bool esNegativo = input.startsWith('-');
  if (esNegativo) {
    input = input.substring(1);
  }

  String resultadoInvertido = '';
  int i = input.length - 1;

  // Usar un bucle while para invertir los dígitos
  while (i >= 0) {
    resultadoInvertido += input[i];
    i--;
  }

  // Agregar el signo negativo si el número original era negativo
  if (esNegativo) {
    resultadoInvertido = '-' + resultadoInvertido;
  }

  print('El número invertido es: $resultadoInvertido');
}
