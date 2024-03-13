import 'package:flutter/material.dart';
import 'package:monthy_tracker/Pages/forget_password_page.dart';
import 'package:monthy_tracker/Pages/home_page.dart';
import 'package:monthy_tracker/Pages/sign_up_page.dart';
import 'package:monthy_tracker/Widgets/action_button.dart';
import 'package:monthy_tracker/Widgets/ancor_text.dart';
import 'package:monthy_tracker/Widgets/page_icon.dart';
import 'package:monthy_tracker/Widgets/page_title_bar.dart';
import 'package:monthy_tracker/Widgets/input_text_widget.dart';

import '../Styles.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  void do_sign_in(){
    print("Sign in pressed");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  void go_to_signup_page(){
    print("Sign up page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));

  }

  void go_to_forget_pass_page(){
    print("Sign up page triggered");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordPage()));

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
              PageIcon(context, Icons.login),
              PageTitleBar(context, color1, "Sign In"),

              SizedBox(height: 30,),
              InputTextWidget(context, Colors.white, Colors.black, "Email", "Enter your registered email", email, false),
              InputTextWidget(context, Colors.white, Colors.black, "Password", "Enter password", pass, true),
              ActionButton(context, color3, "Sign In", do_sign_in),
              AncorText(context,Colors.transparent,color1,"Don't have an account? Sign up", go_to_signup_page),
              AncorText(context,Colors.transparent,color1,"Forget Password? Click to recovery", go_to_forget_pass_page),
            ],
          ),
        ),
      ),
    );
  }
}
