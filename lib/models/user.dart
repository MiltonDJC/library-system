import 'package:library_system/models/book.dart';

class User {
  String userName;
  List<Book> lentBooks = [];
  User(this.userName);
}
