import 'package:library_system/services/biblioteca.dart';
import 'package:library_system/models/libro.dart';
import 'package:library_system/models/usuario.dart';

void startLibrarySystem() {
  //Creación de libros:
  Libro libro1 = Libro('Cien años de soledad', 'Gabriel García');
  Libro libro2 = Libro('1984', 'George Orwell');
  Libro libro3 = Libro('El señor de los Anillos', 'J. R. R. Tolkien');
  //Establecer formato digital para el primer y último libro:
  libro1.formatoDigital = 'PDF';
  libro3.formatoDigital = 'ePub';

  Biblioteca biblioteca = Biblioteca();

  Usuario usuario1 = Usuario('Barbara');
  //Usuario presta un libro:
  usuario1.prestarLibro(libro1);
  //Manejo de error controlado:
  usuario1.prestarLibro(libro1);
  //Usuario devuelve un libro:
  usuario1.devolverLibro(libro1);
  //Manejo de error controlado:
  usuario1.devolverLibro(libro1);

  biblioteca.agregarProducto(libro1);
  biblioteca.agregarProducto(libro2);
  biblioteca.agregarProducto(libro3);

  print('');

  biblioteca.mostrarProductos();
}
