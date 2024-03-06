import 'package:flutter/material.dart';

Widget DropdownSelector(BuildContext context, Color backgroundColor, Color textColor, List<String> itemList, String selectedOption, void Function(String) onChanged) {
  return Container(
    child: DropdownButton(
      value: itemList[0],
      icon: const Icon(Icons.keyboard_arrow_down),
      style: TextStyle(color: textColor),
      // Array list of items
      items: itemList.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item, style: TextStyle(color: textColor)),
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
