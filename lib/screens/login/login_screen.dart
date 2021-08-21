import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simsim/app_main_reusable_widgets/signup_and_login_layout.dart';

import 'login_widget.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignupAndLoginLayout(widget: buildLoginLayout(context),),
      ),
    );
  }
}
