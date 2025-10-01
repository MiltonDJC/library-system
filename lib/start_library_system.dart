import 'package:library_system/models/library.dart';
import 'package:library_system/models/book.dart';
import 'package:library_system/models/user.dart';
import 'package:library_system/services/circulation_service.dart';

void startLibrarySystem() {
  //Books created:
  Book book1 = Book('Cien años de soledad', 'Gabriel García');
  Book book2 = Book('1984', 'George Orwell');
  Book book3 = Book('El señor de los Anillos', 'J. R. R. Tolkien');

  //Users created:
  User user1 = User('Barbara');

  //Library created:
  Library library = Library();

  //Set digital format for the first and last book:
  book1.digitalFormat = 'PDF';
  book3.digitalFormat = 'ePub';

  //User borrow a book:
  CirculationService.circulationService.lendBook(user1, book1);
  //Controlled error handling:
  CirculationService.circulationService.lendBook(user1, book2);
  //User return a book:
  CirculationService.circulationService.returnBook(user1, book1);
  //Controlled error handling:
  CirculationService.circulationService.returnBook(user1, book2);

  library.addProduct(book1);
  library.addProduct(book2);
  library.addProduct(book3);

  library.showProducts();
}
