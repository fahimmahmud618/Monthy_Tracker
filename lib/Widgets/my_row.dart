import 'package:flutter/material.dart';
import 'package:monthy_tracker/Models/tuition.dart';

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


Widget MyRowTuition(BuildContext context, Color bgColor, Color color, List<String> tuitions){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 2),
    margin: EdgeInsets.symmetric(horizontal: 20),
    color: bgColor,
    height: 50, // Specify the height here
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        for (String t in tuitions)
          Container(
            width: 60,
            alignment: Alignment.center, // Add this line to center the text vertically
            child: Text(t),
          ),
      ],
    ),
  );
}
