
import 'package:flutter/cupertino.dart';
import 'package:monthy_tracker/Styles.dart';

Widget HeadingTitleBar(BuildContext context, String title){
  return Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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