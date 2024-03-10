import 'package:flutter/material.dart';
import 'package:monthy_tracker/Pages/home_page.dart';
import 'package:monthy_tracker/Pages/sign_in_page.dart';
import 'package:monthy_tracker/Styles.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/ancor_text.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';
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

  void go_to_signin_page(){
    print("Sign in page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

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
              PageTitleBar(context, color1, "Sign Up"),
              SizedBox(height: 30,),
              InputTextWidget(context, Colors.white, Colors.black, "Name", "Enter your name", name, false),
              InputTextWidget(context, Colors.white, Colors.black, "Email", "Enter your email (Email should be unique)", email, false),
              InputTextWidget(context, Colors.white, Colors.black, "Password", "Enter password", pass, true),
              ActionButton(context, color3, "Sign Up", do_sign_up),
              AncorText(context,Colors.transparent,color1,"Already have an account? Sign in", go_to_signin_page),
            ],
          ),
        ),
      ),
    );
  }
}
