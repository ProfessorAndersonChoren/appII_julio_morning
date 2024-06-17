import 'vehicle.dart';

void main() {
  Vehicle vehicle = Vehicle(
    brand:'Ferrari',
    model:'California F1 V8 460cv',
    licensePlate:'IOU-9019');
  vehicle.yearOfManufacture = 2010;
  vehicle.yearModel = 2010;
  vehicle.color = 'Laranja';

  print('Marca: ${vehicle.brand}');
}
