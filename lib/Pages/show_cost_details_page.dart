import 'package:flutter/material.dart';
import 'package:monthy_tracker/Widgets/my_row.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

import '../Styles.dart';
class CostTable{
  String date; String weekday; String food; String other; String total;

  CostTable(this.date, this.weekday, this.food, this.other, this.total);
}
class ShowCostDetailsPage extends StatefulWidget {
  const ShowCostDetailsPage({super.key});

  @override
  State<ShowCostDetailsPage> createState() => _ShowCostDetailsPageState();
}

class _ShowCostDetailsPageState extends State<ShowCostDetailsPage> {

  List<CostTable> ct = [
    new CostTable("7 Mar", "Fri", "210", "60", "1220"),
    new CostTable("8 Mar", "Sat", "20", "67", "1520"),
    new CostTable("9 Mar", "Sun", "410", "30", "1260"),
    new CostTable("10 Mar", "Mon", "200", "70", "120"),
  ];

  bool isOddDate(String x){
    List<String> parts = x.split(" ");

    // Extract the numeric part (assuming it's the first part)
    String numericPart = parts[0];

    // Parse the numeric part into an integer
    int number = int.tryParse(numericPart) ?? 0;

    if(number%2==0) return false;
    else return true;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: Column(
          children: [
            PageTitleBar(context, color1, "Cost Details"),
            MyRowCost(context, color4, Colors.black, "Date", "weekday", "food", "other", "total"),
            for(CostTable c in ct)
              Container(
                  child: isOddDate(c.date)? MyRowCost(context, Colors.white, Colors.black, c.date, c.weekday, c.food, c.other, c.total):
                  MyRowCost(context, color4, Colors.black, c.date, c.weekday, c.food, c.other, c.total),
              ),
          ],
        ),
      ),
    ));
  }
}