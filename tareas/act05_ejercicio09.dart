import 'dart:io';

void main() {
  print('Introduce la base:');
  double base = double.parse(stdin.readLineSync()!);

  print('Introduce el exponente (número entero no negativo):');
  int exponente = int.parse(stdin.readLineSync()!);

  if (exponente < 0) {
    print('Por favor, introduce un exponente no negativo.');
    return;
  }

  double resultado = 1.0;

  // Calcular la potencia usando multiplicación repetida
  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }

  print('El resultado de $base elevado a la $exponente es: $resultado');
}
