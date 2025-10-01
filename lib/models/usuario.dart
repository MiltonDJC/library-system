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

  bool isLibroPrestable(Libro libro) => libro.disponible ? true : false;

  String isLibroPrestableMessage(bool disponible) => disponible
      ? 'Libro prestado al usuario: $nombre.'
      : 'El libro no puede ser prestado nuevamente.';
}
