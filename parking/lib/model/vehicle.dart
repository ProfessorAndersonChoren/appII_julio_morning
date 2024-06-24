import 'package:parking/model/vehicle_type.dart';

class Vehicle {
  String licensePlate;
  String brand;
  String model;
  VehicleType vehicleType;
  String? yearModel;
  String? yearOfManufactory;
  String? color;

  Vehicle({
    required this.licensePlate,
    required this.brand,
    required this.model,
    required this.vehicleType,
    this.yearModel,
    this.yearOfManufactory,
    this.color,
  });
}
