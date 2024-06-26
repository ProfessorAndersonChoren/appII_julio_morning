import 'package:flutter/material.dart';
import 'package:parking/shared/custom_appbar.dart';

class NewTicket extends StatefulWidget {
  const NewTicket({super.key});

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Nova entrada'),
    );
  }
}
