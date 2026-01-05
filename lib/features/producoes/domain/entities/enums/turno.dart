enum Turno {
  turnoA(
      id: 1,
      label: 'Turno A',
    horarios: {'7h': '07:00', '8h': '08:00', '9h': '09:00', '10h': '10:00', '11h': '11:00', '12h': '12:00', '13h': '13:00', '14h': '14:00', '14e20h': '14:20'}
  ),
  turnoB(
      id: 2,
      label: 'Turno B',
    horarios: {'15h': '15:00', '16h': '16:00', '17h': '17:00', '18h': '18:00', '19h': '19:00', '20h': '20:00', '21h': '21:00', '22h': '22:00', '22d40': '22:40'}
  ),
  turnoC(
      id: 3,
      label: 'Turno C',
    horarios: {'23h': '23:00', '0h': '00:00', '1hh': '01:00', '2h': '02:00', '3h': '03:00', '4h': '04:00', '5h': '05:00', '6h': '06:00'}
  );

  const Turno({
    required this.id,
    required this.label,
    required this.horarios,
  });

  final int id;
  final String label;
  final Map<String, String> horarios;

  static Turno fronId(int id) {
    return Turno.values.firstWhere(
      (value) => value.id == id,
      orElse: () => throw Exception('Id de TipoBarril inválido: $id'),
    );
  }
}