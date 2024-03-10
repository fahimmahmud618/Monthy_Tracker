import 'package:flutter/material.dart';
import 'package:monthy_tracker/Models/tuition.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/dropdown.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';
import 'package:monthy_tracker/Widgets/icon_with_action.dart';
import 'package:monthy_tracker/Widgets/update_tuition_widget.dart';

import '../Styles.dart';

class UpdateTuitionPage extends StatefulWidget {
  const UpdateTuitionPage({super.key});

  @override
  State<UpdateTuitionPage> createState() => _UpdateTuitionPageState();
}

class _UpdateTuitionPageState extends State<UpdateTuitionPage> {
  List<Tuition> tuitions = [
    new Tuition("Boni amin", 12, 5,true),
    new Tuition("Roufa", 12, 4,true),
    new Tuition("Shafa", 12, 6,true),
  ];
  List<String> tuitionList=[];

  String selectedOption="Select tuition";
  int count=9;

  // void create_tuition_dropdown_list(){
  //   for(Tuition t in tuitions){
  //     tuitionList.add(t.studentName);
  //   }
  // }
  void update_tuition_in_db(){
    print("tuition update db triggered");
  }

  void update_selection(String stuname, int cnt) {
    print("$stuname ,$cnt");
    for(Tuition t in tuitions){
      if(t.studentName==stuname) {
        t.countInThisMonth = cnt;
        print(t.studentName);
        print(t.countInThisMonth);
      }
    }
    // print("Selected option: $selectedOption, count: $count");
  }

  @override
  void initState() {
    // create_tuition_dropdown_list();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageIcon(context, Icons.update_rounded),
              PageTitleBar(context, color1, "Update Tuition"),
              SizedBox(height: 30,),
              // Column(
              //   children: [
              //     DropdownSelector(context, Colors.white, Colors.black, tuitions.map((tuition) => tuition.studentName).toList(), selectedOption,update_selection),
              //     SizedBox(height: 30,),
              //     selectedOption!="Select tuition"? Text("For: $selectedOption , Count: $count", style: boldTextStyle(context, Colors.black),): Text(""),
              //     selectedOption!="Select tuition"? SizedBox(height: 20,): Text(""),
              //     selectedOption!="Select tuition"? Row(
              //       children: [
              //         IconWithAction(Icons.plus_one, color3, '', ()=>count++),
              //         IconWithAction(Icons.exposure_minus_1, color3, '', ()=>count--),
              //       ],
              //     ): Text(""),
              //   ],
              // ),
              Column(
                children: [
                  for(Tuition t in tuitions)
                    UpdateTuitionCount(studentName: t.studentName, initialCount: t.countInThisMonth, onChanged: update_selection),
                ],
              ),
              SizedBox(height: 30,),
              ActionButton(context, color3, "Save Changes", update_tuition_in_db),
            ],
          ),
        ),
      ),
    );
  }
}
