import 'package:flutter/material.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';

class Ticket extends StatelessWidget {
  final Vacancy vacancy;
  final Vehicle vehicle;
  const Ticket({
    super.key,
    required this.vacancy,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Badge(
            label: Text(vacancy.number.toString()),
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/motorcycle.png',
              width: 64,
            ),
          ),
          Image.asset(
            'assets/parking.png',
            width: 48,
          ),
          Text(vacancy.toString())
        ],
      ),
    );
  }
}
