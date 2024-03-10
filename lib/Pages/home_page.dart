import 'package:flutter/material.dart';
import 'package:monthy_tracker/Pages/add_new_expence_page.dart';
import 'package:monthy_tracker/Pages/add_new_tuition.dart';
import 'package:monthy_tracker/Pages/remove_tuition_page.dart';
import 'package:monthy_tracker/Pages/show_cost_details_page.dart';
import 'package:monthy_tracker/Pages/show_tuition_details_page.dart';
import 'package:monthy_tracker/Pages/update_tuition_page.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/page_image.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';
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
  ];

  List<String> costData = [
    "Food: 1348", "Other: 1200",
    "Total: 2548",

  ];

  void go_to_tuition_page(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowTuitionDetailsPage()));
    print("show tuition page triggered");
  }

  void go_to_remove_tuition_page(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RemoveTuitionPage()));
    print("remove tuition page triggered");
  }

  void go_to_add_new_tuition_page(){
    print("add nuw tuition page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTuitionPage()));
  }

  void go_to_update_tuition_page(){
    print("update tuition page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateTuitionPage()));
  }

  void go_to_cost_page(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowCostDetailsPage()));
    print("cost page triggered");
  }
  void go_to_add_cost_page(){
    print("cost page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewExpensePage()));

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(height: 20,),
              // Image.asset('expensestat.png'),
              PageImageWithSeizedBox(context, 'expensestat.png', 20),
              PageTitleBar(context, color1, "Cost Stat"),
              for(String data in costData)
                StatInfoShowBar(context, data),
              Row(
                children: [
                  ActionButton(context, color3, "See Details", go_to_cost_page),
                  ActionButton(context, color3, "Update Cost", go_to_add_cost_page),
                ],
              ),
              PageImageWithSeizedBox(context, 'tuitionstat.png', 40),
              PageTitleBar(context, color1, "Tuition Stat"),
              for(String data in statData)
                StatInfoShowBar(context, data),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(context, color3,"See Details", go_to_tuition_page),
                  ActionButton(context, color3,"Add new Tuition", go_to_add_new_tuition_page),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(context, color3,"Update Tuition", go_to_update_tuition_page),
                  ActionButton(context, color3,"Remove Tuition", go_to_remove_tuition_page),
                ],
              ),



            ],
          )
        ),
      ),
    ));
  }
}
