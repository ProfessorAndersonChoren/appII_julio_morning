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
            Text('16'),
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
            Text('4'),
            Text('Vagas ocupadas'),
          ],
        ),
      ],
    );
  }
}
