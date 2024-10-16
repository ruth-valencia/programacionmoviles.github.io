class Producto {
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);
}

class Compra {
  Producto producto;
  int cantidad;

  Compra(this.producto, this.cantidad);

  // Método para calcular el importe total
  double calcularImporteTotal() {
    return producto.precio * cantidad;
  }

  // Método para determinar el regalo según la cantidad adquirida
  String determinarRegalo() {
    if (cantidad < 26) {
      return 'Un lapicero';
    } else if (cantidad <= 50) {
      return 'Un cuaderno';
    } else {
      return 'Una agenda';
    }
  }
}

void main() {
  // Lista de productos disponibles
  List<Producto> productos = [
    Producto('P1', 15.0),
    Producto('P2', 17.5),
    Producto('P3', 20.0),
  ];

  // Ejemplo de compras
  List<Compra> compras = [
    Compra(productos[0], 15), // 15 unidades de P1
    Compra(productos[1], 30), // 30 unidades de P2
    Compra(productos[2], 55), // 55 unidades de P3
  ];

  // Evaluar cada compra
  for (var compra in compras) {
    double importeTotal = compra.calcularImporteTotal();
    String regalo = compra.determinarRegalo();

    print('Producto: ${compra.producto.nombre}');
    print('Cantidad: ${compra.cantidad}');
    print('Importe a pagar: S/. ${importeTotal.toStringAsFixed(2)}');
    print('Regalo: $regalo');
    print('--------------------------');
  }
}
