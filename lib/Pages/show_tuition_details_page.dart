import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/my_row.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

class ShowTuitionDetailsPage extends StatefulWidget {
  const ShowTuitionDetailsPage({super.key});

  @override
  State<ShowTuitionDetailsPage> createState() => _ShowTuitionDetailsPageState();
}

class _ShowTuitionDetailsPageState extends State<ShowTuitionDetailsPage> {

  List<String> stuNames = ["Date", "weekday","Roufa","Boni amin","Shafa", "Athay","Jahin","Enam"];
  List<String> counts=["1","0","0","1","1","0"];
  List<List<String>> count = [["7 Mar","Sat","1","0","0","1","1","0"],["8 Mar","Sun","0","1","1","1","1","0"]];
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
            PageTitleBar(context, color1, "Tuition Details"),
            MyRowTuition(context, color4, Colors.black, stuNames),
            for(List<String> c in count)
              Container(
                child: isOddDate(c[0])? MyRowTuition(context, Colors.white, Colors.black, c):
                MyRowTuition(context, color4, Colors.black, c),
              ),
          ],
        ),
      ),
    ));
  }
}
