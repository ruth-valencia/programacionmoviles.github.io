class Empleado {
  String nombre;
  int minutosTardanza;
  int observaciones;

  Empleado(this.nombre, this.minutosTardanza, this.observaciones);

  // Método para calcular el puntaje por puntualidad
  int puntajePuntualidad() {
    if (minutosTardanza == 0) {
      return 10;
    } else if (minutosTardanza <= 2) {
      return 8;
    } else if (minutosTardanza <= 5) {
      return 6;
    } else if (minutosTardanza <= 9) {
      return 4;
    } else {
      return 0;
    }
  }

  // Método para calcular el puntaje por rendimiento
  int puntajeRendimiento() {
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

  // Método para calcular el puntaje total
  int puntajeTotal() {
    return puntajePuntualidad() + puntajeRendimiento();
  }

  // Método para calcular la bonificación
  double bonificacion() {
    int total = puntajeTotal();
    if (total < 11) {
      return total * 2.5;
    } else if (total <= 13) {
      return total * 5.0;
    } else if (total <= 16) {
      return total * 7.5;
    } else if (total <= 19) {
      return total * 10.0;
    } else {
      return 12.5;
    }
  }
}

void main() {
  // Lista para almacenar empleados
  List<Empleado> empleados = [];

  // Ejemplo de creación de empleados
  empleados.add(Empleado('Juan Pérez', 3, 1));
  empleados.add(Empleado('María López', 0, 0));
  empleados.add(Empleado('Pedro Ruiz', 10, 2));

  // Evaluar a cada empleado
  for (var empleado in empleados) {
    print('Empleado: ${empleado.nombre}');
    print('Puntaje por puntualidad: ${empleado.puntajePuntualidad()}');
    print('Puntaje por rendimiento: ${empleado.puntajeRendimiento()}');
    print('Puntaje total: ${empleado.puntajeTotal()}');
    print('Bonificación: S/. ${empleado.bonificacion().toStringAsFixed(2)}');
    print('--------------------------');
  }
}
