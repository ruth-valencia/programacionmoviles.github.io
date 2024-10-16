class Chocolate {
  String tipo;
  double precioUnitario;

  Chocolate(this.tipo, this.precioUnitario);
}

class Compra {
  Chocolate chocolate;
  int cantidad;

  Compra(this.chocolate, this.cantidad);

  // Método para calcular el importe total antes del descuento
  double calcularImporteTotal() {
    return chocolate.precioUnitario * cantidad;
  }

  // Método para calcular el porcentaje de descuento
  double calcularDescuentoPorcentaje() {
    if (cantidad < 5) {
      return 0.04; // 4%
    } else if (cantidad >= 5 && cantidad < 10) {
      return 0.065; // 6.5%
    } else if (cantidad >= 10 && cantidad < 15) {
      return 0.09; // 9%
    } else {
      return 0.115; // 11.5%
    }
  }

  // Método para calcular el importe del descuento
  double calcularImporteDescuento() {
    return calcularImporteTotal() * calcularDescuentoPorcentaje();
  }

  // Método para calcular el importe a pagar después del descuento
  double calcularImporteAPagar() {
    return calcularImporteTotal() - calcularImporteDescuento();
  }

  // Método para calcular la cantidad de caramelos de obsequio
  int calcularCaramelos() {
    if (calcularImporteAPagar() >= 250) {
      return cantidad * 3; // 3 caramelos por chocolate
    } else {
      return cantidad * 2; // 2 caramelos por chocolate
    }
  }
}

void main() {
  // Lista de chocolates disponibles
  List<Chocolate> chocolates = [
    Chocolate('Primor', 8.5),
    Chocolate('Dulzura', 10.0),
    Chocolate('Tentación', 7.0),
    Chocolate('Explosión', 12.5),
  ];

  // Ejemplo de compras
  List<Compra> compras = [
    Compra(chocolates[0], 3), // 3 Primor
    Compra(chocolates[1], 7), // 7 Dulzura
    Compra(chocolates[2], 12), // 12 Tentación
    Compra(chocolates[3], 16), // 16 Explosión
  ];

  // Evaluar cada compra
  for (var compra in compras) {
    double importeTotal = compra.calcularImporteTotal();
    double importeDescuento = compra.calcularImporteDescuento();
    double importeAPagar = compra.calcularImporteAPagar();
    int caramelos = compra.calcularCaramelos();

    print('Tipo de chocolate: ${compra.chocolate.tipo}');
    print('Cantidad: ${compra.cantidad}');
    print('Importe total: S/. ${importeTotal.toStringAsFixed(2)}');
    print('Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
    print('Caramelos de obsequio: ${caramelos}');
    print('--------------------------');
  }
}
