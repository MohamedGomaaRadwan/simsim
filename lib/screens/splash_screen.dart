import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/utils/routes.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MRouter.generateRoute(RouteSettings(name: AppRoute.OnBoarding))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.Blue,
          child: Center(child: SvgPicture.asset(AppImages.LOGO))),
        ),
    );
  }

}