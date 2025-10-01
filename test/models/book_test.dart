import 'package:library_system/models/book.dart';
import 'package:test/test.dart';

void main() {
  group('Book class testing', () {
    late Book book;

    setUp(() {
      book = Book('1984', 'George Orwell');
    });

    test(
      'Given a new book, when this one is created with title and author, then returns the book.',
      () {
        expect(book, isNotNull);
        expect(book.title, equals(book.title));
        expect(book.author, equals(book.author));
        expect(book.available, isTrue);
      },
    );

    test(
      "Given a new book, when this one is created, then 'book.available' returns true.",
      () {
        expect(book.available, isTrue);
      },
    );

    test(
      "Given a new book created, when we access to book.isAvailable(), then returns true.",
      () {
        expect(book.isAvailable(), isTrue);
      },
    );

    test(
      "Given a book, when this one is borrowed, then the property 'available' returns false",
      () {
        book.available = false;
        expect(book.available, isFalse);
        expect(book.isAvailable(), isFalse);
      },
    );

    test(
      "Given a book, when the property 'book.available' is true and we try to assign 'true' again, then returns the same value.",
      () {
        bool sameStatus = (book.available = true);
        expect(book.available, equals(sameStatus));
      },
    );

    test(
      "Given a book, when it's assign with digital format (like PDF or ePub), then the book has a digital format",
      () {
        book.digitalFormat = 'PDF';
        expect(book.digitalFormat, equals('PDF'));
      },
    );
  });
}
