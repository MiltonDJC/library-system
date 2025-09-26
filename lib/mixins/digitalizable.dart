mixin Digitalizable {
  String? formatoDigital;
  void mostrarFormato() => print(
    '${formatoDigital == null ? 'Libro en formato: físico' : 'Libro en formato: $formatoDigital'}.',
  );
}
