import 'dart:io';

void main() {
  // Variables para almacenar la categoría del estudiante y el promedio ponderado
  String categoria;
  double promedio;
  
  // Pide la categoría del estudiante
  print("Ingrese la categoría del estudiante (A, B, C, D):");
  categoria = stdin.readLineSync()!.toUpperCase();
  
  // Pide el promedio ponderado del estudiante
  print("Ingrese el promedio ponderado del ciclo anterior (0 - 20):");
  promedio = double.parse(stdin.readLineSync()!);
  
  // Definir la pensión inicial según la categoría
  double pension;
  switch (categoria) {
    case 'A':
      pension = 550.0;
      break;
    case 'B':
      pension = 500.0;
      break;
    case 'C':
      pension = 460.0;
      break;
    case 'D':
      pension = 400.0;
      break;
    default:
      print("Categoría inválida.");
      return;
  }

  // Definir el porcentaje de descuento basado en el promedio ponderado
  double descuento = 0.0;

  if (promedio >= 18.0) {
    descuento = 15.0;
  } else if (promedio >= 16.0) {
    descuento = 12.0;
  } else if (promedio >= 14.0) {
    descuento = 10.0;
  } else if (promedio >= 0.0 && promedio < 14.0) {
    descuento = 0.0;
  } else {
    print("Promedio inválido.");
    return;
  }

  // Calcular la rebaja
  double rebaja = (descuento / 100) * pension;

  // Calcular la nueva pensión
  double nuevaPension = pension - rebaja;

  // Mostrar los resultados
  print("\nPensión original: S/. ${pension.toStringAsFixed(2)}");
  print("Descuento aplicado: ${descuento.toStringAsFixed(2)}%");
  print("Rebaja: S/. ${rebaja.toStringAsFixed(2)}");
  print("Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}");
}
