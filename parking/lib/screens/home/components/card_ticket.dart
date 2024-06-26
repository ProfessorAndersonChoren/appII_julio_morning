import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';

class CardTicket extends StatelessWidget {
  final Ticket ticket;
  const CardTicket({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              label: Text(ticket.vacancy.number.toString()),
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/${ticket.vacancy.vehicleType.name}.png',
                width: 64,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/parking.png',
                  width: 48,
                ),
                Text(
                  ticket.vacancy.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/plate.png',
                  width: 48,
                ),
                const SizedBox(width: 8),
                Text(
                  ticket.vehicle.licensePlate,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
