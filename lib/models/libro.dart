import 'package:library_system/mixins/digitalizable.dart';
import 'package:library_system/models/item_biblioteca.dart';

class Libro with Digitalizable implements ItemBiblioteca {
  final String _titulo;
  final String _autor;
  bool _disponible = true;
  Libro(this._titulo, this._autor);
  String get titulo => _titulo;
  String get autor => _autor;
  bool get disponible => _disponible;
  set disponible(bool disponibilidad) {
    if (_disponible == disponibilidad) {
      print(
        'El libro sigue estando ${estaDisponible() ? 'Disponible' : 'No Disponible'}.',
      );
    } else {
      _disponible = disponibilidad;
    }
  }

  @override
  String mostrarInfo() =>
      '''Título: $titulo.\nAutor: $autor.\nDisponiblilidad: ${estaDisponible() ? 'Está disponible' : 'No está disponible'}.
${mostrarFormato()}
''';

  @override
  bool estaDisponible() => disponible ? true : false;
}
