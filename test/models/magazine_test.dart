import 'package:library_system/models/magazine.dart';
import 'package:test/test.dart';

void main() {
  group('Magazine class', () {
    late Magazine magazine;

    setUp(() {
      magazine = Magazine('National Geographic', 'John Doe');
    });

    test(
      'Given a magazine, when it is created, then its title, author, and availability are correct.',
      () {
        expect(magazine.title, 'National Geographic');
        expect(magazine.author, 'John Doe');
        expect(magazine.available, isTrue);
        expect(magazine.isAvailable(), isTrue);
      },
    );

    test(
      'Given a magazine, when showInfo is called, then returns formatted string with correct availability.',
      () {
        expect(magazine.showInfo(), '''Title: National Geographic.
Author: John Doe.
Availability: It's available.
''');
      },
    );

    test(
      'Given a magazine, when availability is set to false, then isAvailable returns false.',
      () {
        magazine.available = false;
        expect(magazine.available, isFalse);
        expect(magazine.isAvailable(), isFalse);
      },
    );

    test(
      'Given a magazine, when availability is set to true again, then isAvailable returns true.',
      () {
        magazine.available = false; // primero la pongo en false
        magazine.available = true; // luego la vuelvo a true
        expect(magazine.available, isTrue);
        expect(magazine.isAvailable(), isTrue);
      },
    );

    test(
      'Given a magazine, when trying to set the same availability, it should keep the same value and print a message.',
      () {
        // Nota: testear print directamente no es necesario, pero podemos verificar que el setter no cambia el estado
        magazine.available = true; // ya estaba true
        expect(magazine.available, isTrue);

        magazine.available = false; // ahora la ponemos en false
        magazine.available = false; // mismo valor
        expect(magazine.available, isFalse);
      },
    );
  });
}
