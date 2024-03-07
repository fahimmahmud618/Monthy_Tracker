import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/icon_with_action.dart';

// Assuming IconWithAction is defined elsewhere and correctly uses the passed action.
class UpdateTuitionCount extends StatefulWidget {
  final String studentName;
  final int initialCount;
  final void Function(String, int) onChanged;

  UpdateTuitionCount({
    Key? key,
    required this.studentName,
    required this.initialCount,
    required this.onChanged,
  }) : super(key: key);

  @override
  _UpdateTuitionCountState createState() => _UpdateTuitionCountState();
}

class _UpdateTuitionCountState extends State<UpdateTuitionCount> {
  late int nowCount;

  @override
  void initState() {

    super.initState();
    nowCount = widget.initialCount; // Initialize nowCount with the initial value

  }

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${widget.studentName}  [$nowCount days]"),
          Row(
            children: [
              IconWithAction(Icons.plus_one, color3, "", () {
                setState(() {
                nowCount++;
              });
              widget.onChanged(widget.studentName, nowCount); }),
              IconWithAction(Icons.exposure_minus_1, color3, "", () {
                setState(() {
                  nowCount--;
                });
                widget.onChanged(widget.studentName, nowCount); }),

            ],
          ),


          // IconButton(
          //   icon: Icon(Icons.plus_one),
          //   color: Colors.green, // Assuming color3 is defined elsewhere
          //   onPressed: () {
          //     setState(() {
          //       nowCount++;
          //     });
          //     widget.onChanged(widget.studentName, nowCount);
          //   },
          // ),
          // IconButton(
          //   icon: Icon(Icons.exposure_minus_1),
          //   color: Colors.red, // Assuming color3 is defined elsewhere
          //   onPressed: () {
          //     setState(() {
          //       nowCount--;
          //     });
          //     widget.onChanged(widget.studentName, nowCount);
          //   },
          // ),
        ],
      ),
    );
  }
}
