import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarInformacion() {
    print('\n--- Información del Estudiante ---');
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  void ingresarDatos() {
    print('Ingrese el código del estudiante:');
    codigo = stdin.readLineSync()!;
    
    print('Ingrese los nombres del estudiante:');
    nombres = stdin.readLineSync()!;
    
    print('Ingrese la primera nota:');
    nota1 = double.parse(stdin.readLineSync()!);
    
    print('Ingrese la segunda nota:');
    nota2 = double.parse(stdin.readLineSync()!);
  }
}

void main() {
  Estudiante estudiante = Estudiante('', '', 0.0, 0.0);
  estudiante.ingresarDatos();
  estudiante.mostrarInformacion();
}
