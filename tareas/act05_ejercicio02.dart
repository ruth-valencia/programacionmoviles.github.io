import 'dart:io';

void main() {
  print('Introduce el número de términos de la secuencia de Fibonacci:');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Por favor, introduce un número positivo.');
    return;
  }

  List<int> fibonacci = [];
  
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      fibonacci.add(0); // Primer término
    } else if (i == 1) {
      fibonacci.add(1); // Segundo término
    } else {
      // Sumar los dos últimos términos para obtener el siguiente
      int nextTerm = fibonacci[i - 1] + fibonacci[i - 2];
      fibonacci.add(nextTerm);
    }
  }

  print('La secuencia de Fibonacci hasta $n términos es:');
  print(fibonacci);
}
