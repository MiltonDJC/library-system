import 'package:library_system/models/library.dart';
import 'package:library_system/models/libro.dart';
import 'package:library_system/models/usuario.dart';
import 'package:library_system/services/prestamo_service.dart';

void startLibrarySystem() {
  //Creación de libros:
  Libro libro1 = Libro('Cien años de soledad', 'Gabriel García');
  Libro libro2 = Libro('1984', 'George Orwell');
  Libro libro3 = Libro('El señor de los Anillos', 'J. R. R. Tolkien');

  //Creación de Usuarios:
  Usuario usuario1 = Usuario('Barbara');

  //Creación de Biblioteca:
  Biblioteca biblioteca = Biblioteca();

  //Establecer formato digital para el primer y último libro:
  libro1.formatoDigital = 'PDF';
  libro3.formatoDigital = 'ePub';

  //Usuario presta un libro:
  PrestamoService.prestamoService.prestarLibro(usuario1, libro1);
  //Manejo de error controlado:
  PrestamoService.prestamoService.prestarLibro(usuario1, libro2);
  //Usuario devuelve un libro:
  PrestamoService.prestamoService.devolverLibro(usuario1, libro1);
  //Manejo de error controlado:
  PrestamoService.prestamoService.devolverLibro(usuario1, libro2);

  biblioteca.agregarProducto(libro1);
  biblioteca.agregarProducto(libro2);
  biblioteca.agregarProducto(libro3);

  biblioteca.mostrarProductos();
}
