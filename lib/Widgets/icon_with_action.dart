import 'package:flutter/material.dart';

Widget IconWithAction(IconData icon, Color color, String text, VoidCallback action) {
  return TextButton.icon(
    onPressed: action,
    icon: Icon(icon, color: color),
    label: Text(
      text,
      style: TextStyle(color: color),
    ),
  );
}
