mixin Digitalizable {
  String? formatoDigital;
  String mostrarFormato() =>
      '${formatoDigital == null ? 'Libro en formato: físico' : 'Libro en formato: $formatoDigital'}.';
}
