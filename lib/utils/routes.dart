import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simsim/screens/home_screen.dart';
import 'package:simsim/screens/login/login_screen.dart';
import 'package:simsim/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:simsim/screens/reset_password_screen.dart';
import 'package:simsim/screens/signup/signup_screen.dart';
import 'package:simsim/screens/splash_screen.dart';

class AppRoute {
  static const String Home = "/home";
  static const String Splash = "/";
  static const String OnBoarding = "/on_boarding";
  static const String Login = "/login";
  static const String SignUp = "/sign_up";
  static const String Reset_Password = "/reset_password";
}

class MRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.Home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoute.Splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoute.OnBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case AppRoute.Login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoute.SignUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case AppRoute.Reset_Password:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("no screens for that root"),
            ),
          );
        });
    }
  }
}
