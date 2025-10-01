import 'package:library_system/models/book.dart';
import 'package:library_system/models/user.dart';

class CirculationService {
  static final CirculationService _circulationService =
      CirculationService._internal();

  CirculationService._internal();

  static CirculationService get circulationService => _circulationService;

  void lendBook(User user, Book book) {
    if (isALendable(book)) {
      user.lentBooks.add(book);
      book.available = false;
      print(isALendableBookMessage(user, book.available));
    }
  }

  void returnBook(User user, Book book) {
    if (user.lentBooks.contains(book)) {
      user.lentBooks.remove(book);
      book.available = true;
      print(returnedBookMessage(book.available));
    } else {
      print(returnedBookMessage(book.available));
    }
  }

  bool isALendable(Book book) => book.available ? true : false;

  String isALendableBookMessage(User user, bool available) => available
      ? 'Book lent to user: ${user.userName}.'
      : "The book cannot be lent out again.";

  String returnedBookMessage(bool disponible) =>
      disponible ? 'Book returned successfully.' : 'Book not previously owned.';
}
