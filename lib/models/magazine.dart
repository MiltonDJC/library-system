import 'package:library_system/models/library_item.dart';

class Magazine implements LibraryItem {
  final String _title;
  final String _author;
  bool _available = true;

  Magazine(this._title, this._author);

  String get title => _title;
  String get author => _author;
  bool get available => _available;

  set available(bool availability) {
    _available = setAvailability(availability);
  }

  @override
  String showInfo() =>
      '''Title: $title.\nAuthor: $author.\nAvailability: ${isAvailable() ? "It's available" : "It's not available"}.
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
