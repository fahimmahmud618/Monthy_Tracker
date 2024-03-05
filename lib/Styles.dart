import 'dart:ui';
import 'package:flutter/material.dart';

double get_scale_factor(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth / 375.0;
}

Color color1 = Color(0xFF265073);
Color color2 = Color(0xFF59B4C3);
Color color3 = Color(0xFF74E291);
Color color4 = Color(0xFFEFF396);
Color colorWhite = Color(0xFFF1FADA);

TextStyle nameTitleStyle (BuildContext context) {
  return TextStyle(
    color: colorWhite,
    fontSize: 24*get_scale_factor(context),
    fontWeight: FontWeight.bold
  );
}