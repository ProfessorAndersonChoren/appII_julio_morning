import 'package:flutter/material.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';

class Ticket {
  int number;
  Vacancy vacancy;
  Vehicle vehicle;
  TimeOfDay entryTime;
  TimeOfDay? departureTime;
  double? amount;

  Ticket({
    required this.number,
    required this.vacancy,
    required this.vehicle,
    required this.entryTime,
    this.departureTime,
    this.amount,
  }) {
    if (vacancy.vehicleType != vehicle.vehicleType) {
      throw ArgumentError('Tipo de vaga incompatível com o veículo');
    }
  }
}
