import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/dropdown.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

class RemoveTuitionPage extends StatefulWidget {
  const RemoveTuitionPage({super.key});

  @override
  State<RemoveTuitionPage> createState() => _RemoveTuitionPageState();
}

class _RemoveTuitionPageState extends State<RemoveTuitionPage> {

  String selectedOption="";
  void select_selected_option(String x){
    setState(() {
      selectedOption=x;
    });

  }
  List<String> stuNames = ["Select","Roufa","Boni amin","Shafa", "Athay","Jahin","Enam"];

  void remove_tuition(){
    print("Remove tuition triggered");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              PageTitleBar(context, color1, "Remove Tuition"),
              DropdownSelector(context, color4, Colors.black, stuNames, stuNames[0], select_selected_option),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    selectedOption!=""? Text("Are you really want to remove tuition named '$selectedOption'?")
                        :Text(""),
                    selectedOption!=""? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ActionButton(context, color3, "Yes", remove_tuition),
                        ActionButton(context, color3, "No", (){}),
                      ],
                    ):Text(""),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
