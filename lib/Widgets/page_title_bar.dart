
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget HeadingTitleBar(BuildContext context, String title){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: color2
    ),
    alignment: AlignmentDirectional.center,
    child: Text(
      title,
      style: TextStyle(
        color: colorWhite,
        fontSize: 20*get_scale_factor(context),
        fontWeight: FontWeight.bold
      ),
    ),
  );
}
Widget PageTitleBar(BuildContext context, Color color, String title){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
    ),
    alignment: AlignmentDirectional.center,
    child: Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 24*get_scale_factor(context),
        fontWeight: FontWeight.bold
      ),
    ),
  );
}