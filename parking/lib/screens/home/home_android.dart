import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/home/components/card_ticket.dart';
import 'package:parking/screens/home/components/vacancy_row.dart';
import 'package:parking/shared/custom_appbar.dart';

class HomeAndroid extends StatelessWidget {
  const HomeAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    var vehicle = Vehicle(
      licensePlate: 'IUK-4645',
      brand: 'Yamaha',
      model: 'YBR-125',
      vehicleType: VehicleType.motorcycle,
    );
    var vacancy = Vacancy(
      number: 1,
      description: 'Vaga 0001',
      vehicleType: VehicleType.motorcycle,
    );
    var ticket = Ticket(
      number: 124,
      vacancy: vacancy,
      vehicle: vehicle,
      entryTime: TimeOfDay.now(),
    );
    return Scaffold(
      appBar: customAppBar('Parking Control'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'new_ticket');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const VacancyRow(),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => CardTicket(
                  ticket: ticket,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
