
import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/name_title_page.dart';

AppBar appBar(BuildContext context){
  return AppBar(
    title: NameTitle(context),
    backgroundColor: color1,
  );
}

