import 'package:library_system/models/libro.dart';

class Usuario {
  String nombre;
  List<Libro> librosPrestados = [];
  Usuario(this.nombre);
}
