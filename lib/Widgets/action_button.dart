
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget ActionButton(BuildContext context,Color backgroudColor, String text, action){
  return Container(
    constraints: BoxConstraints(
      minWidth: get_screenWidth(context)*0.3
    ),
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      color: backgroudColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.black.withOpacity(0.5))
    ),
    child: TextButton(
      onPressed: action,
      child: Text(
          text,
          style: TextStyle(color: colorWhite),
      ),
    ),
  );
}