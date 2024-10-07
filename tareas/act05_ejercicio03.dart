import 'dart:io';

void main() {
  print('Introduce un número para calcular su factorial:');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print('El factorial no está definido para números negativos.');
    return;
  }

  BigInt factorial = BigInt.one; // Inicializar factorial a 1

  for (int i = 1; i <= numero; i++) {
    factorial *= BigInt.from(i); // Multiplicamos cada número hasta 'numero'
  }

  print('El factorial de $numero es: $factorial');
}
