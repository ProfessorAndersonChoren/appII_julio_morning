import 'package:flutter/material.dart';
import 'package:parking/screens/home/components/vacancy_row.dart';

class HomeAndroid extends StatelessWidget {
  const HomeAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parking Control'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_parking),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_money),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [
          VacancyRow(),
        ],
      ),
    );
  }
}
