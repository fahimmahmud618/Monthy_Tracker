import 'package:flutter/material.dart';

import '../Styles.dart';

Widget StatInfoShowBar(BuildContext context, String text){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    width: MediaQuery.of(context).size.width*0.7,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color3.withOpacity(0.5)
    ),
    alignment: AlignmentDirectional.center,
    child: Text(
      text,
      style: TextStyle(
          color:Colors.black,
          fontSize: 16*get_scale_factor(context),
          fontWeight: FontWeight.bold
      ),
    ),
  );
}