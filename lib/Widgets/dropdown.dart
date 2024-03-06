import 'package:flutter/material.dart';

class DropdownSelector extends StatelessWidget {
  final List<String> tuitionList;
  final String selectedOption;
  final void Function(String) onChanged;

  DropdownSelector({
    required this.tuitionList,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: selectedOption,
        icon: const Icon(Icons.keyboard_arrow_down),
        // Array list of items
        items: tuitionList.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        // After selecting the desired option, it will
        // change button value to the selected value
        onChanged: (String? newValue) {
          if (newValue != null) {
            onChanged(newValue);
          }
        },
      ),
    );
  }
}