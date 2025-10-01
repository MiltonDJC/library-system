mixin Digitizable {
  String? digitalFormat;
  String showFormat() =>
      '${digitalFormat == null ? 'Book in: physical format' : 'Book in: $digitalFormat format'}.';
}
