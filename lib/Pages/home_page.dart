import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/heading_title_bar.dart';
import 'package:monthy_tracker/Widgets/stat_info_showbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(context),
      body: Container(
        color: colorWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingTitleBar(context, "Tuition Stat"),
            StatInfoShowBar(context, "Boni Amin : 14")
          ],
        )
      ),
    ));
  }
}
