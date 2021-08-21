import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/text_styles.dart';

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
