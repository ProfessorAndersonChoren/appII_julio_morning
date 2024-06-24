import 'package:flutter/material.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/home/components/ticket.dart';
import 'package:parking/screens/home/components/vacancy_row.dart';
import 'package:parking/shared/custom_appbar.dart';

class HomeAndroid extends StatelessWidget {
  const HomeAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    var vehicle = Vehicle(
      licensePlate: 'IUK-4645',
      brand: 'Honda',
      model: 'YBR-125 Titan',
      vehicleType: VehicleType.motorcycle,
    );
    var vacancy = Vacancy(
      number: 1,
      description: 'Vaga 0001',
      vehicleType: VehicleType.motorcycle,
    );
    return Scaffold(
      appBar: customAppBar('Parking Control'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const VacancyRow(),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Ticket(
                  vehicle: vehicle,
                  vacancy: vacancy,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
