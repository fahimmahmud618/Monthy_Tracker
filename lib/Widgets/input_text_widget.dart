import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';

Widget InputTextWidget(BuildContext context,Color color, String title, String placeholder, TextEditingController textEditingController, bool ishide){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: boldTextStyle(context, Colors.black),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.black,
              width: 1,
            )
          ),
          child: TextField(
            obscureText: ishide,
            controller: textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
                hintText: placeholder,
              hintStyle: hintTextStyle(context, Colors.black)
            ),
          ),
        )
      ],
    ),
  );
}