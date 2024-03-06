import 'package:flutter/material.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/dropdown.dart';
import 'package:monthy_tracker/Widgets/heading_title_bar.dart';
import 'package:monthy_tracker/Widgets/icon_with_action.dart';

import '../Styles.dart';

class UpdateTuitionPage extends StatefulWidget {
  const UpdateTuitionPage({super.key});

  @override
  State<UpdateTuitionPage> createState() => _UpdateTuitionPageState();
}

class _UpdateTuitionPageState extends State<UpdateTuitionPage> {

  List<String> tuitionList=["Select tuition","Boni amin", "Roufa", "shafa"];
  String selectedOption="Select";
  int count=9;
  void update_tuition(){
    print("tuition update triggered");
    print("Selected option: $selectedOption, count: $count");
  }

  void update_selection(String newValue) {
    setState(() {
      selectedOption = newValue;
    });
    print("Selected option: $selectedOption, count: $count");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageTitleBar(context, color1, "Update Tuition"),
              SizedBox(height: 30,),
              Column(
                children: [
                  DropdownSelector(context, Colors.white, Colors.black, tuitionList, selectedOption,update_selection),
                  SizedBox(height: 30,),
                  Text("For: $selectedOption", style: boldTextStyle(context, Colors.black),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconWithAction(Icons.plus_one, color3, '', ()=>count++),
                      IconWithAction(Icons.exposure_minus_1, color3, '', ()=>count--),
                    ],
                  ),
                ],
              ),
              ActionButton(context, color3, "Save Changes", update_tuition),
            ],
          ),
        ),
      ),
    );
  }
}
