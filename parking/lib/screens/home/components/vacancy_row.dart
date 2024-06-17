import 'package:flutter/material.dart';

class VacancyRow extends StatelessWidget {
  const VacancyRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.local_parking),
        Column(
          children: [
            Text('17'),
            Text('Vagas livres'),
          ],
        ),
        Icon(Icons.local_parking),
        Column(
          children: [
            Text('3'),
            Text('Vagas ocupadas'),
          ],
        ),
      ],
    );
  }
}
