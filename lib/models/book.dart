import 'package:library_system/mixins/digitizable.dart';
import 'package:library_system/models/library_item.dart';

class Book with Digitizable implements LibraryItem {
  final String _title;
  final String _author;
  bool _available = true;
  Book(this._title, this._author);

  String get title => _title;
  String get author => _author;
  bool get available => _available;

  set available(bool availability) {
    _available = setAvailability(availability);
  }

  @override
  String showInfo() =>
      '''Title: $title.\nAuthor: $author.\nAvailability: ${isAvailable() ? "It's available" : "It's not available"}.
${showFormat()}
''';

  @override
  bool isAvailable() => available ? true : false;

  bool setAvailability(bool availability) {
    if (_available == availability) {
      print(
        'The $runtimeType is still ${available ? 'Available' : 'No Available'}.',
      );
      return _available;
    } else {
      return availability;
    }
  }
}
