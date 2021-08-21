import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simsim/app_main_reusable_widgets/app_main_reusable_widgets.dart';
import 'package:simsim/screens/signup/signup_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignupAndLoginLayout(widget: buildSignupLayout(context),),
      ),
    );
  }
}
