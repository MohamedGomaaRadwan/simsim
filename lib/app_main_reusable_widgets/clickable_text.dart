import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class ClickableText extends StatelessWidget {
  final String text;
  final String clickableText;
  final VoidCallback onPress;
  final TextStyle textStyle;
  final TextStyle clickableTextStyle;

  ClickableText(
      {required this.text,
      required this.clickableText,
      required this.onPress,
      required this.textStyle,
      required this.clickableTextStyle});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: text, style: textStyle),
          TextSpan(
              text: clickableText,
              style: clickableTextStyle,
              recognizer: TapGestureRecognizer()..onTap = onPress),
        ],
      ),
    );
  }
}
