import 'dart:io';

void main() {
  // Variables para almacenar los datos del empleado
  int minutosTardanza;
  int observaciones;
  
  // Pide los minutos de tardanza
  print("Ingrese los minutos de tardanza del empleado (0 a n):");
  minutosTardanza = int.parse(stdin.readLineSync()!);
  
  // Pide la cantidad de observaciones
  print("Ingrese la cantidad de observaciones del empleado (0 a n):");
  observaciones = int.parse(stdin.readLineSync()!);

  // Calcular puntaje por puntualidad
  int puntajePuntualidad = calcularPuntajePuntualidad(minutosTardanza);

  // Calcular puntaje por rendimiento
  int puntajeRendimiento = calcularPuntajeRendimiento(observaciones);

  // Calcular puntaje total
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;

  // Calcular la bonificación
  double bonificacion = calcularBonificacion(puntajeTotal);

  // Mostrar los resultados
  print("\nPuntaje por puntualidad: $puntajePuntualidad");
  print("Puntaje por rendimiento: $puntajeRendimiento");
  print("Puntaje total: $puntajeTotal");
  print("Bonificación anual: S/. ${bonificacion.toStringAsFixed(2)}");
}

// Función para calcular el puntaje por puntualidad
int calcularPuntajePuntualidad(int minutosTardanza) {
  if (minutosTardanza == 0) {
    return 10;
  } else if (minutosTardanza >= 1 && minutosTardanza <= 2) {
    return 8;
  } else if (minutosTardanza >= 3 && minutosTardanza <= 5) {
    return 6;
  } else if (minutosTardanza >= 6 && minutosTardanza <= 9) {
    return 4;
  } else {
    return 0;
  }
}

// Función para calcular el puntaje por rendimiento
int calcularPuntajeRendimiento(int observaciones) {
  if (observaciones == 0) {
    return 10;
  } else if (observaciones == 1) {
    return 8;
  } else if (observaciones == 2) {
    return 5;
  } else if (observaciones == 3) {
    return 1;
  } else {
    return 0;
  }
}

// Función para calcular la bonificación anual
double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) {
    return puntajeTotal * 2.5;
  } else if (puntajeTotal >= 11 && puntajeTotal <= 13) {
    return puntajeTotal * 5.0;
  } else if (puntajeTotal >= 14 && puntajeTotal <= 16) {
    return puntajeTotal * 7.5;
  } else if (puntajeTotal >= 17 && puntajeTotal <= 19) {
    return puntajeTotal * 10.0;
  } else {
    return puntajeTotal * 12.5;
  }
}
