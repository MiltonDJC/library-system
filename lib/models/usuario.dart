import 'package:library_system/models/libro.dart';

class Usuario {
  String nombre;
  List<Libro> librosPrestados = [];
  Usuario(this.nombre);
  void prestarLibro(Libro libro) {
    if (isLibroPrestable(libro)) {
      librosPrestados.add(libro);
      libro.disponible = false;
      print(isLibroPrestableMessage(libro.disponible));
    }
    print('');
  }

  void devolverLibro(Libro libro) {
    if (librosPrestados.contains(libro)) {
      librosPrestados.removeWhere((libroPrestado) => libroPrestado == libro);
      libro.disponible = true;
      print('Libro devuelvo exitosamente.');
    } else {
      print('Libro no adquirido.');
    }
    print('');
  }

  bool isLibroPrestable(Libro libro) {
    if (libro.disponible) {
      return true;
    } else {
      return false;
    }
  }

  String isLibroPrestableMessage(bool disponible) {
    if (disponible) {
      return 'Libro prestado al usuario: $nombre.';
    } else {
      return 'El libro no puede ser prestado nuevamente.';
    }
  }
}
