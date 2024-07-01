import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> list;
  CustomDropdownMenu({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      dropdownMenuEntries: list
          .map((item) => DropdownMenuEntry(value: item, label: item))
          .toList(),
    );
  }
}
