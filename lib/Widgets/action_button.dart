
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget ActionButton(BuildContext context,Color backgroudColor, String text, action){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: backgroudColor,
      borderRadius: BorderRadius.circular(8),
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