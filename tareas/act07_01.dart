class Estudiante {
  String nombre;
  String categoria;
  double promedioPonderado;

  Estudiante(this.nombre, this.categoria, this.promedioPonderado);

  // Método para obtener la pensión según la categoría
  double obtenerPension() {
    switch (categoria) {
      case 'A':
        return 550.0;
      case 'B':
        return 500.0;
      case 'C':
        return 460.0;
      case 'D':
        return 400.0;
      default:
        throw Exception('Categoría no válida');
    }
  }

  // Método para calcular el descuento según el promedio
  double calcularDescuento(double pension) {
    if (promedioPonderado < 14.0) {
      return 0.0; // No hay descuento
    } else if (promedioPonderado < 16.0) {
      return pension * 0.10; // 10%
    } else if (promedioPonderado < 18.0) {
      return pension * 0.12; // 12%
    } else {
      return pension * 0.15; // 15%
    }
  }

  // Método para obtener la nueva pensión después del descuento
  double obtenerNuevaPension() {
    double pensionActual = obtenerPension();
    double descuento = calcularDescuento(pensionActual);
    return pensionActual - descuento;
  }
}

void main() {
  // Lista de estudiantes
  List<Estudiante> estudiantes = [];

  // Ejemplo de creación de estudiantes
  estudiantes.add(Estudiante('Juan Pérez', 'A', 16.5));
  estudiantes.add(Estudiante('María López', 'B', 14.5));
  estudiantes.add(Estudiante('Pedro Ruiz', 'C', 18.0));
  estudiantes.add(Estudiante('Ana Torres', 'D', 12.0));

  // Evaluar a cada estudiante
  for (var estudiante in estudiantes) {
    double pensionActual = estudiante.obtenerPension();
    double nuevaPension = estudiante.obtenerNuevaPension();
    double descuento = pensionActual - nuevaPension;

    print('Estudiante: ${estudiante.nombre}');
    print('Categoría: ${estudiante.categoria}');
    print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
    print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
    print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
    print('--------------------------');
  }
}
