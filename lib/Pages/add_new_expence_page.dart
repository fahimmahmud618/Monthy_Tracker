import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/appbar.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

class AddNewExpensePage extends StatefulWidget {
  const AddNewExpensePage({super.key});

  @override
  State<AddNewExpensePage> createState() => _AddNewExpensePageState();
}

class _AddNewExpensePageState extends State<AddNewExpensePage> {
  TextEditingController addedFoodCost = new TextEditingController();
  TextEditingController addedFoodCostReason = new TextEditingController();
  TextEditingController addedOtherCost = new TextEditingController();
  TextEditingController addedOtherCostReason = new TextEditingController();
  TextEditingController removedFoodCost = new TextEditingController();
  TextEditingController removedOtherCost = new TextEditingController();

  bool isShowFoodReason=false;
  bool isShowOtherReason=false;

  void update_food_reason(String x){
    setState(() {
      isShowFoodReason=true;
    });
  }
  void update_other_reason(String x){
    setState(() {
      isShowOtherReason=true;
    });
  }

  void update_cost_in_db(){
    //TODO
    print("update cost in db trigged");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageTitleBar(context, color1, "Update Expense"),
              SizedBox(height: 30,),
              Text("Food", style: boldTextStyle(context, color1),),
              Row(
                children: [
                  Expanded(child: InputTextActionWidget(context, Colors.white, Colors.black, "Add", "Amount", addedFoodCost, false, update_food_reason)),
                  Expanded(child: InputTextWidget(context, Colors.white, Colors.black, "Remove", "Amount", removedFoodCost, false)),
                ],
              ),
              isShowFoodReason?
                InputTextWidget(context, Colors.white, Colors.black, "Added Amount Reason", "Reason", addedFoodCostReason, false):
                  Text(""),
              SizedBox(height: 20,),
              Text("Others", style: boldTextStyle(context, color1),),
              Row(
                children: [
                  Expanded(child: InputTextActionWidget(context, Colors.white, Colors.black, "Add", "Amount", addedOtherCost, false, update_other_reason)),
                  Expanded(child: InputTextWidget(context, Colors.white, Colors.black, "Remove", "Amount", removedOtherCost, false)),
                ],
              ),
              isShowOtherReason?
              InputTextWidget(context, Colors.white, Colors.black, "Added Amount Reason", "Reason", addedOtherCostReason, false):
              Text(""),
              SizedBox(height: 20,),
              ActionButton(context, color3, "Save Changes", update_cost_in_db),
            ],
          ),
        ),
      ),
    );
  }
}
