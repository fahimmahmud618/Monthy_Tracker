import 'package:flutter/material.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/ancor_text.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_image.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';

import '../Styles.dart';

class AddNewTuitionPage extends StatefulWidget {
  const AddNewTuitionPage({super.key});

  @override
  State<AddNewTuitionPage> createState() => _AddNewTuitionPageState();
}

class _AddNewTuitionPageState extends State<AddNewTuitionPage> {
  TextEditingController student_name = new TextEditingController();
  TextEditingController day_in_a_month = new TextEditingController();

  void add_tuition(){
    print("New tuition add triggered");
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
              // Image.asset('tuition.png'),
              PageImage(context, 'tuition.png'),
              PageTitleBar(context, color1, "Add New Tuition"),
              SizedBox(height: 30,),
              InputTextWidget(context, Colors.white, Colors.black, "Student Name", "Enter Student name", student_name, false),
              InputTextWidget(context, Colors.white, Colors.black, "Day in a Month", "How many days you have to teach in a month", day_in_a_month, false),
              ActionButton(context, color3, "Add", add_tuition),
            ],
          ),
        ),
      ),
    );  }
}
