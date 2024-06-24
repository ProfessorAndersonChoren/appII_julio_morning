import 'package:flutter/material.dart';

class VacancyRow extends StatelessWidget {
  const VacancyRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/parking.png',
          width: 48,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('17'),
            Text('Vagas livres'),
          ],
        ),
        Image.asset(
          'assets/parking.png',
          width: 48,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('3'),
            Text('Vagas ocupadas'),
          ],
        ),
      ],
    );
  }
}
