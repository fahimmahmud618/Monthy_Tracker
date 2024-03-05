import 'package:flutter/material.dart';
import 'package:monthy_tracker/Pages/home_page.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/heading_title_bar.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  void do_sign_up(){
    print("Sign up pressed");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
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
              PageTitleBar(context, color1, "Sign Up"),
              SizedBox(height: 30,),
              InputTextWidget(context, Colors.white, "Name", "Enter your name", name, false),
              InputTextWidget(context, Colors.white, "Email", "Enter your email (Email should be unique)", email, false),
              InputTextWidget(context, Colors.white, "Password", "Enter password", pass, true),
              ActionButton(context, "Sign Up", do_sign_up),
            ],
          ),
        ),
      ),
    );
  }
}
