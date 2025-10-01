import 'package:library_system/models/libro.dart';

class Usuario {
  String nombre;
  List<Libro> librosPrestados = [];
  Usuario(this.nombre);
  void prestarLibro(Libro libro) {
    if (isLibroPrestable(libro)) {
      librosPrestados.add(libro);
      libro.disponible = false;
      print(libroPrestadoMessage(libro.disponible));
    }
  }

  void devolverLibro(Libro libro) {
    if (librosPrestados.contains(libro)) {
      librosPrestados.remove(libro);
      libro.disponible = true;
      print(libroDevueltoMessage(libro.disponible));
    } else {
      print(libroDevueltoMessage(libro.disponible));
    }
  }

  bool isLibroPrestable(Libro libro) => libro.disponible ? true : false;

  String libroPrestadoMessage(bool disponible) => disponible
      ? 'Libro prestado al usuario: $nombre.'
      : 'El libro no puede ser prestado nuevamente.';

  String libroDevueltoMessage(bool disponible) => disponible
      ? 'Libro devuelto exitosamente.'
      : 'Libro no adquirido previamente.';
}
