import 'package:library_system/models/item_biblioteca.dart';

class Biblioteca {
  List<ItemBiblioteca> productosBiblioteca = [];

  void agregarProducto(ItemBiblioteca producto) {
    if (productosBiblioteca.contains(producto)) {
      print(
        'El ${producto.runtimeType}: $producto, ya se encuentra en la biblioteca.',
      );
    } else {
      productosBiblioteca.add(producto);
      print('${producto.runtimeType} añadido corectamente.');
    }
  }

  void quitarPorducto(ItemBiblioteca producto) {
    if (!productosBiblioteca.contains(producto)) {
      print(
        'El ${producto.runtimeType}: $producto, no se encuentra en la biblioteca.',
      );
    } else {
      productosBiblioteca.remove(producto);
    }
  }

  void mostrarProductos() {
    if (productosBiblioteca.isEmpty) {
      print('Todavía no hay productos agregados.');
    } else {
      for (ItemBiblioteca item in productosBiblioteca) {
        item.mostrarInfo();
        print('');
      }
    }
  }
}
