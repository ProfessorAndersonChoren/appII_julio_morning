enum VehicleType {
  car(label: 'Carro'),
  motorcycle(label: 'Moto');

  const VehicleType({
    required this.label,
  });

  final String label;
}
