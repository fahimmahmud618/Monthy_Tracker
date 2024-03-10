import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget PageIcon(BuildContext context,icon){
  return Column(
    children: [
      SizedBox(height: 40,),
      Icon(icon, color: color1,),
    ],
  );
}