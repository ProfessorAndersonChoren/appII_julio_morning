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
            tooltip: 'Vagas',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_money),
            tooltip: 'Faturamento',
          ),
          PopupMenuButton(
            tooltip: 'Menu do App',
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Meu perfil'),
              ),
              const PopupMenuItem(
                child: Text('Configurações'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            VacancyRow(),
          ],
        ),
      ),
    );
  }
}
