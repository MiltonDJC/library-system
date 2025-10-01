import 'package:library_system/models/libro.dart';
import 'package:library_system/models/usuario.dart';

class PrestamoService {
  static void prestarLibro(Usuario usuario, Libro libro) {
    if (isLibroPrestable(libro)) {
      usuario.librosPrestados.add(libro);
      libro.disponible = false;
      print(libroPrestadoMessage(usuario, libro.disponible));
    }
  }

  static void devolverLibro(Usuario usuario, Libro libro) {
    if (usuario.librosPrestados.contains(libro)) {
      usuario.librosPrestados.remove(libro);
      libro.disponible = true;
      print(libroDevueltoMessage(libro.disponible));
    } else {
      print(libroDevueltoMessage(libro.disponible));
    }
  }

  static bool isLibroPrestable(Libro libro) => libro.disponible ? true : false;

  static String libroPrestadoMessage(Usuario usuario, bool disponible) =>
      disponible
      ? 'Libro prestado al usuario: ${usuario.nombre}.'
      : 'El libro no puede ser prestado nuevamente.';

  static String libroDevueltoMessage(bool disponible) => disponible
      ? 'Libro devuelto exitosamente.'
      : 'Libro no adquirido previamente.';
}
