import 'package:flutter/material.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/new_ticket/components/custom_dropdown_menu.dart';
import 'package:parking/shared/custom_appbar.dart';

class NewTicket extends StatefulWidget {
  const NewTicket({super.key});

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  // Controllers
  final _formKey = GlobalKey<FormState>();
  final _plateController = TextEditingController();

  final _vehicleList = VehicleType.values.map((value) => value.label).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Nova entrada'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _plateController,
                decoration: InputDecoration(
                  labelText: 'Placa do veículo',
                  border: const OutlineInputBorder(),
                ),
                textCapitalization: TextCapitalization.characters,
                validator: (value) =>
                    value!.length != 8 ? 'Placa inválida!!!' : null,
              ),
              CustomDropdownMenu(
                list: _vehicleList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
