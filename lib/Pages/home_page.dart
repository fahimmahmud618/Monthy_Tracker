import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/heading_title_bar.dart';
import 'package:monthy_tracker/Widgets/stat_info_showbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> statData = [
    "Boni Amin: 18", "Athay 12",
    "Boni Amin: 18", "Athay 12",
    "Boni Amin: 18", "Athay 12",
    "Boni Amin: 18", "Athay 12",
  ];

  void go_to_tuition_page(){
    // TODO
    print("tuition page triggered");
  }

  void go_to_cost_page(){
    // TODO
    print("cost page triggered");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Container(
          color: colorWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingTitleBar(context, "Tuition Stat"),
              for(String data in statData)
                StatInfoShowBar(context, data),
              ActionButton(context, "See Details", go_to_tuition_page),
              SizedBox(height: 20,),
              HeadingTitleBar(context, "Cost Stat"),
              for(String data in statData)
                StatInfoShowBar(context, data),
              ActionButton(context, "See Details", go_to_cost_page),
            ],
          )
        ),
      ),
    ));
  }
}
