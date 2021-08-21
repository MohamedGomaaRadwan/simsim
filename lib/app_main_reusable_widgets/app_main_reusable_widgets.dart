import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/resources/text_styles.dart';
import 'package:simsim/utils/constants.dart';

class AppMainButton extends StatelessWidget {
  late String buttonLabel;
  VoidCallback onPress;
  AppMainButton({Key? key, required this.buttonLabel, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(45),
      width: ScreenUtil().setWidth(235),
      decoration: BoxDecoration(
        color: AppColors.Blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        child: Center(
          child: Text(
            buttonLabel,
            style: AppTextStyles.whiteButtonsTextStyles,
          ),
        ),
        onTap: onPress,
      ),
    );
  }
}

class BuildDot extends StatelessWidget {
  final Color color;
  const BuildDot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: ScreenUtil().setHeight(9),
      width: ScreenUtil().setHeight(9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)), color: color),
    );
  }
}

class AppInputTextField extends StatelessWidget {
  late String label;
  AppInputTextField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(50),
      child: TextField(
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintText: label,
            hintStyle: new TextStyle(color: AppColors.KTextColor),
            helperStyle: TextStyle(fontSize: 16),
            fillColor: AppColors.KInputTextFieldColor),
      ),
    );
  }
}

class SignupAndLoginLayout extends StatelessWidget {
  late Widget widget;
  SignupAndLoginLayout({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.Blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(12)),
                    child: Image(
                      image: AssetImage(AppImages.ITEMS),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    child: Container(
                      height: 180,
                      child: SvgPicture.asset(AppImages.APP_NAME),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 150,
                child: widget,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SignUpAndLoginButtonWithLogo extends StatelessWidget {
  late VoidCallback onPress;
  late String image;
  late String label;
  late TextStyle style;
  late Color buttonColor;
  late bool logoIsWhite;
  SignUpAndLoginButtonWithLogo(
      {Key? key,
      required this.label,
      required this.image,
      required this.onPress,
      required this.buttonColor,
      required this.style,
      required this.logoIsWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(50),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.KTextColor),
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                color: logoIsWhite == true ? AppColors.White : null,
              ),
              width12,
              Text(
                label,
                style: style,
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}

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
