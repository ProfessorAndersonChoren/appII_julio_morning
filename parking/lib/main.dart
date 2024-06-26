import 'package:flutter/material.dart';
import 'package:parking/screens/home/home_android.dart';
import 'package:parking/screens/new_ticket/new_ticket.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeAndroid(),
        'new_ticket': (context) => const NewTicket(),
      },
    ),
  );
}
