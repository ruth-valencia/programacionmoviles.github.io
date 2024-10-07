import 'dart:io';

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  print('Introduce el primer número:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Introduce el segundo número:');
  int num2 = int.parse(stdin.readLineSync()!);

  // Aseguramos que num1 sea menor que num2
  if (num1 > num2) {
    int temp = num1;
    num1 = num2;
    num2 = temp;
  }

  int sumaPrimos = 0;

  for (int i = num1; i <= num2; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }

  print('La sumatoria de los números primos entre $num1 y $num2 es: $sumaPrimos');
}
