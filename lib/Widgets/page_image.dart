import 'package:flutter/material.dart';

Widget PageImage(BuildContext context, String ImagePath){
  return Column(
    children: [
      SizedBox(height: 40,),
      Image.asset(ImagePath),
    ],
  );
}

Widget PageImageWithSeizedBox(BuildContext context, String ImagePath, double size){
  return Container(
    alignment: AlignmentDirectional.center,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size,),
        Image.asset(ImagePath, width: 40, height: 40,),
      ],
    ),
  );
}