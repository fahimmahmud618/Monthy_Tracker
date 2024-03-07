import 'package:flutter/material.dart';

Widget MyRowCost(BuildContext context, Color bgColor, Color color, String date, String weekday, String food, String other, String total){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 2),
    margin: EdgeInsets.symmetric(horizontal: 20),
    color: bgColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(date),
        Text(weekday),
        Text(food),
        Text(other),
        Text(total),
      ],
    ),
  );
}