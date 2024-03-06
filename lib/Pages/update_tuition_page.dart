import 'package:flutter/material.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/dropdown.dart';
import 'package:monthy_tracker/Widgets/heading_title_bar.dart';

import '../Styles.dart';

class UpdateTuitionPage extends StatefulWidget {
  const UpdateTuitionPage({super.key});

  @override
  State<UpdateTuitionPage> createState() => _UpdateTuitionPageState();
}

class _UpdateTuitionPageState extends State<UpdateTuitionPage> {

  List<String> tuitionList=["Boni amin", "Roufa", "shafa"];
  String selectedOption="Boni amin";
  void update_tuition(){
    print("tuition update triggered");
  }

  void update_selection(){
    print("tuition update triggered");
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
              // DropdownSelector(context, Colors.white, Colors.black, tuitionList, selectedOption,
              //       (String newValue) {
              //     // Update the selected option in the parent widget
              //     selectedOption = newValue;
              //     // You can also perform any other actions based on the selected option
              //     print("Selected option: $selectedOption");
              //   },
              // ),
              DropdownSelector(
                tuitionList: tuitionList,
                selectedOption: selectedOption,
                onChanged: (String newValue) {
                  selectedOption = newValue;
                  print("Selected option: $selectedOption");
                },
              ),
              ActionButton(context, color3, "Sign Up", update_tuition),
            ],
          ),
        ),
      ),
    );
  }
}
