import 'dart:io';

void main() {
  print('Introduce el tamaño de la matriz (N):');
  int n = int.parse(stdin.readLineSync()!);

  // Inicializar las matrices
  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  // Leer la primera matriz
  print('Introduce los elementos de la matriz A:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento A[$i][$j]:');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Leer la segunda matriz
  print('Introduce los elementos de la matriz B:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento B[$i][$j]:');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Sumar las dos matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Mostrar la matriz suma
  print('La matriz resultante de la suma es:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${suma[i][j]} ');
    }
    print('');
  }
}
