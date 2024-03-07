import 'package:flutter/material.dart';

Widget IconWithAction(IconData icon, Color color, String text, VoidCallback action) {
  return Container(
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      // border: Border.all(
      //   color: Colors.black
      // ),
      color: color,
    ),
    child: TextButton.icon(
      onPressed: action,
      icon: Icon(icon, color: Colors.white,),
      label: Text(
        text,
        style: TextStyle(color: color),
      ),
    ),
  );
}
