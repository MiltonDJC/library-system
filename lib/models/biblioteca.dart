import 'package:library_system/models/item_biblioteca.dart';

class Biblioteca {
  List<ItemBiblioteca> productosBiblioteca = [];

  void agregarProducto(ItemBiblioteca producto) {
    if (isProductoInBiblioteca(producto)) {
      agregarProductoMessage(true, producto);
    } else {
      productosBiblioteca.add(producto);
      agregarProductoMessage(false, producto);
    }
  }

  void quitarProducto(ItemBiblioteca producto) {
    if (isProductoInBiblioteca(producto)) {
      productosBiblioteca.remove(producto);
      quitarProductoMessage(true, producto);
    } else {
      quitarProductoMessage(false, producto);
    }
  }

  void mostrarProductos() {
    if (productosBiblioteca.isEmpty) {
      print(showProductosListados(productosBiblioteca)[0]);
    } else {
      for (String producto in showProductosListados(productosBiblioteca)) {
        print(producto);
      }
    }
  }

  List<String> showProductosListados(List<ItemBiblioteca> productos) {
    if (productos.isEmpty) {
      return ['Todavía no hay productos agregados.'];
    } else {
      List<String> productosListados = [];
      for (ItemBiblioteca producto in productos) {
        productosListados.add(producto.mostrarInfo());
      }
      return productosListados;
    }
  }

  String quitarProductoMessage(
    bool isProductoInBiblioteca,
    ItemBiblioteca producto,
  ) {
    return isProductoInBiblioteca
        ? '${producto.runtimeType} quitado correctamente.'
        : 'El ${producto.runtimeType}: $producto, no se encuentra en la biblioteca.';
  }

  String agregarProductoMessage(
    bool isProductoInBiblioteca,
    ItemBiblioteca producto,
  ) {
    return isProductoInBiblioteca
        ? 'El ${producto.runtimeType}: $producto, ya se encuentra en la biblioteca.'
        : '${producto.runtimeType} añadido correctamente.';
  }

  bool isProductoInBiblioteca(ItemBiblioteca producto) {
    return productosBiblioteca.contains(producto);
  }
}
