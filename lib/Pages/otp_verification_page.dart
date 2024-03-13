import 'package:flutter/material.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({super.key});

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  TextEditingController otp = new TextEditingController();
  void verify_otp(){
    print("otp send for verification");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageIcon(context, Icons.app_registration),
              PageTitleBar(context, color1, "OTP Verification"),
              SizedBox(height: 30,),
              Text("Check your email. An OTP is sent by email. Provide the OTP for Password Recovery"),
              InputTextWidget(context, Colors.white, Colors.black, "Email", "Enter your email", otp, false),
              ActionButton(context, color3, "Request OTP", verify_otp),
            ],
          ),
        ),
      ),
    );
  }
}
