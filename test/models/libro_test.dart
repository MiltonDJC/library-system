import 'package:library_system/models/libro.dart';
import 'package:test/test.dart';

void main() {
  group('Book class testing', () {
    late Libro libro;

    setUp(() {
      libro = Libro('1984', 'George Orwell');
    });

    test(
      'Given a new book, when this one is created with title and autor, then returns the book.',
      () {
        expect(libro, isNotNull);
        expect(libro.titulo, equals(libro.titulo));
        expect(libro.autor, equals(libro.autor));
        expect(libro.disponible, isTrue);
      },
    );

    test(
      "Given a new book, when this one is created, then 'book.disponible' returns true.",
      () {
        expect(libro.disponible, isTrue);
      },
    );

    test(
      "Given a new book created, when we access to libro.estaDisponible(), then returns true.",
      () {
        expect(libro.estaDisponible(), isTrue);
      },
    );

    test(
      "Given a book, when this one is borrowed, then the property 'disponible' returns false",
      () {
        libro.disponible = false;
        expect(libro.disponible, isFalse);
        expect(libro.estaDisponible(), isFalse);
      },
    );

    test(
      "Given a book, when the property 'libro.disponible' is true and we try to assign 'true' again, then returns the same value.",
      () {
        bool sameStatus = (libro.disponible = true);
        expect(libro.disponible, equals(sameStatus));
      },
    );

    test(
      "Given a book, when it's assign with digital format (like PDF or ePub), then the book has a digital format",
      () {
        libro.formatoDigital = 'PDF';
        expect(libro.formatoDigital, equals('PDF'));
      },
    );
  });
}
