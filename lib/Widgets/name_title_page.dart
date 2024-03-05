import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget NameTitle(BuildContext context){
  return Container(
    child: Row(
      children: [
        Icon(Icons.bar_chart, color: colorWhite,),
        SizedBox(width: 10,),
        Text("Monthy", style: nameTitleStyle(context),)
      ],
    )
  );
}