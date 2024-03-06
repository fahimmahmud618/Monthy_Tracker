import 'package:flutter/material.dart';

Widget AncorText(BuildContext context, Color backgroundColor, Color textColor, String text, action){
  return InkWell(
    onTap: action,
    child: Container(
      color: backgroundColor,
      child: Text(
        text, style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold
      ),
      )
    ),
  );
}