import 'package:flutter/material.dart';
import 'package:monthy_tracker/Pages/otp_verification_page.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController oldpass = new TextEditingController();

  void send_otp(){
    print("otp request send");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPVerificationPage()));
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
              PageTitleBar(context, color1, "Password Recovery"),
              SizedBox(height: 30,),
              InputTextWidget(context, Colors.white, Colors.black, "Email", "Enter your email", email, false),
              InputTextWidget(context, Colors.white, Colors.black, "Old Password", "Enter whatever you remember about your old password", oldpass, false),
              ActionButton(context, color3, "Request OTP", send_otp),
            ],
          ),
        ),
      ),
    );
  }
}
