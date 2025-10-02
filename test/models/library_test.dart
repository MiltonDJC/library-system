import 'package:library_system/models/book.dart';
import 'package:library_system/models/library.dart';
import 'package:test/test.dart';

void main() {
  group('Library class', () {
    late Library library;

    setUp(() {
      library = Library();
    });
    test(
      'Given a product, when this one is added to the products list, then the product is returned.',
      () {
        final Book book1 = Book('1984', 'George Orwell');
        expect(library.addProduct(book1), 'Book successfully added.');
      },
    );
    test(
      'Given an empty list of products, when only one new product is added, the length of the list increases by one.',
      () {
        final Book book1 = Book('1984', 'George Orwell');
        final libraryProductsLength = library.libraryProducts.length;
        library.addProduct(book1);
        expect(library.libraryProducts.length, libraryProductsLength + 1);
        expect(library.libraryProducts.isEmpty, isFalse);
      },
    );
    test(
      'Given an empty list of products, when multiple new products are added, the length of the list increases.',
      () {
        final Book book1 = Book('1984', 'George Orwell');
        final Book book2 = Book('Cien años de soledad', 'Gabriel García');
        final Book book3 = Book('El señor de los Anillos', 'J. R. R. Tolkien');
        final libraryProductsLength = library.libraryProducts.length;
        library.addProduct(book1);
        library.addProduct(book2);
        library.addProduct(book3);
        expect(
          library.libraryProducts.length,
          greaterThan(libraryProductsLength),
        );
        expect(library.libraryProducts.isEmpty, isFalse);
      },
    );
    test(
      'Given a product not in the library, when an attempt is made to delete it, then a not found message is returned.',
      () {
        final Book book1 = Book('1984', 'George Orwell');
        final message = library.deleteProduct(book1);

        expect(library.isProductInLibrary(book1), isFalse);
        expect(message, "The ${book1.runtimeType}: $book1, couldn't be found.");
      },
    );

    test(
      'Given a product, when it is deleted from the products list, then it should not be found anymore and a success message is returned.',
      () {
        final Book book1 = Book('1984', 'George Orwell');
        library.addProduct(book1);
        final message = library.deleteProduct(book1);

        expect(library.isProductInLibrary(book1), isFalse);
        expect(message, "${book1.runtimeType} succesfully deleted.");
      },
    );

    test(
      "Given a product that is already in the library, when an attempt is made to add it again, then the system should return a duplicate message.",
      () {
        final Book book1 = Book('1984', 'George Orwell');
        library.addProduct(book1);
        final message = library.addProduct(book1);
        expect(library.isProductInLibrary(book1), isTrue);
        expect(
          message,
          equals(
            'The ${book1.runtimeType}: $book1, is already in the library.',
          ),
        );
      },
    );
  });
}
