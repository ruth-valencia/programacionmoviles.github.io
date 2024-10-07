import 'dart:io';

void main() {
  print('Introduce el tamaño de la matriz (n):');
  int n = int.parse(stdin.readLineSync()!);

  // Crear una matriz n x n
  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  int valor = 1;
  int filaInicio = 0;
  int filaFin = n - 1;
  int colInicio = 0;
  int colFin = n - 1;

  while (filaInicio <= filaFin && colInicio <= colFin) {
    // Rellenar la fila superior
    for (int j = colInicio; j <= colFin; j++) {
      matriz[filaInicio][j] = valor++;
    }
    filaInicio++;

    // Rellenar la columna derecha
    for (int i = filaInicio; i <= filaFin; i++) {
      matriz[i][colFin] = valor++;
    }
    colFin--;

    // Rellenar la fila inferior si aún hay filas
    if (filaInicio <= filaFin) {
      for (int j = colFin; j >= colInicio; j--) {
        matriz[filaFin][j] = valor++;
      }
      filaFin--;
    }

    // Rellenar la columna izquierda si aún hay columnas
    if (colInicio <= colFin) {
      for (int i = filaFin; i >= filaInicio; i--) {
        matriz[i][colInicio] = valor++;
      }
      colInicio++;
    }
  }

  // Imprimir la matriz en espiral
  print('Matriz en forma de espiral:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${matriz[i][j]} ');
    }
    print('');
  }
}
