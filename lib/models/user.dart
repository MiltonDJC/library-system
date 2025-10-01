import 'package:library_system/models/book.dart';

class Usuario {
  String userName;
  List<Book> borrowedBooks = [];
  Usuario(this.userName);
}
